library;

/// {@template flutter_serper.receiveTimeout}
/// - [receiveTimeout] - Optional timeout for receiving the response from the API. If not specified, the default receive timeout is used.
/// {@endtemplate}
///
/// {@template flutter_serper.sendTimeout}
/// - [sendTimeout] - Optional timeout for sending the request to the API. If not specified, the default send timeout is used.
/// {@endtemplate}
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_serper/src/models/queries/queries.dart';
import 'package:flutter_serper/src/models/responses/responses.dart';
import 'package:meta/meta.dart';

/// Exception thrown when there is an error with the Serper API.
class SerperApiException implements Exception {
  /// The error message.
  final String message;

  /// The HTTP status code, if available.
  final int? statusCode;

  /// The API endpoint that was called.
  final String? endpoint;

  /// The response data, if available.
  final Map<String, dynamic>? responseData;

  /// Creates a new [SerperApiException].
  SerperApiException({
    required this.message,
    this.statusCode,
    this.endpoint,
    this.responseData,
  });

  @override
  String toString() {
    String result = message;
    if (statusCode != null) {
      result += ' (Status Code: $statusCode)';
    }
    return result;
  }
}

/// A wrapper for the Serper API.
///
/// Provides methods for all supported Serper API endpoints, including search, images, videos, places, maps, reviews,
/// news, shopping, lens, scholar, patents, autocomplete, and webpage scraping.
///
/// All methods use the Dio HTTP client and return strongly-typed response objects that extend [SerperResponse],
/// allowing for polymorphic handling of responses.
///
/// Example usage:
/// ```dart
/// final serper = Serper(apiKey: 'your-api-key');
/// final searchResults = await serper.search([SearchQuery(q: 'coffee shop')]);
/// print(searchResults.organic.length);
/// ```
class Serper {
  /// The base URL for Google endpoints.
  static const String googleBaseUrl = 'https://google.serper.dev';

  /// The base URL for scraping endpoints.
  static const String scrapeBaseUrl =
      'https://scrape.serper.dev'; // Made public for consistency and potential test use

  /// Default connect timeout duration.
  static const Duration defaultConnectTimeout = Duration(milliseconds: 10000);

  /// Default receive timeout duration.
  static const Duration defaultReceiveTimeout = Duration(milliseconds: 10000);

  /// Default send timeout duration.
  static const Duration defaultSendTimeout = Duration(milliseconds: 10000);

  /// The API key for authenticating requests.
  final String apiKey;

  /// The Dio HTTP client instance.
  final Dio _dio;

  /// Creates a new [Serper] instance.
  ///
  /// The [apiKey] parameter is required.
  /// If a [dio] instance is provided, it will be used. Otherwise, a new Dio instance
  /// will be created with default timeout settings.
  Serper({required this.apiKey, Dio? dio})
    : _dio =
          dio ??
          Dio(
            BaseOptions(
              connectTimeout: defaultConnectTimeout,
              receiveTimeout: defaultReceiveTimeout,
              sendTimeout: defaultSendTimeout,
              // baseUrl is set in the _post method to support different base URLs for scrape/google
            ),
          );

  /// Provides access to the underlying Dio instance's options, primarily for testing.
  @visibleForTesting
  BaseOptions get dioOptions => _dio.options;

  /// Returns the default headers for all requests.
  Map<String, String> get _headers => {
    'X-API-KEY': apiKey,
    'Content-Type': 'application/json',
  };

  Future<dynamic> _postInternal(
    String endpoint,
    List<Map<String, dynamic>> data, {
    bool isScrape = false,
    Duration? receiveTimeout,
    Duration? sendTimeout,
  }) async {
    final url =
        isScrape ? '$scrapeBaseUrl$endpoint' : '$googleBaseUrl$endpoint';
    try {
      final response = await _dio.request(
        url,
        options: Options(
          method: 'POST',
          headers: _headers,
          receiveTimeout: receiveTimeout,
          sendTimeout: sendTimeout,
        ),
        data: json.encode(data),
      );
      return response.data;
    } on DioException catch (e) {
      if (e.response != null) {
        final statusCode = e.response!.statusCode;
        final Map<String, dynamic>? errorData =
            e.response!.data is Map
                ? e.response!.data as Map<String, dynamic>
                : null;
        final errorMessage =
            errorData?['message'] ?? e.message ?? 'Unknown Dio error';
        throw SerperApiException(
          message: 'Serper API error: $errorMessage',
          statusCode: statusCode,
          endpoint: endpoint,
          responseData: errorData,
        );
      } else {
        throw SerperApiException(
          message: 'Network error: ${e.message ?? 'Connection failed'}',
          endpoint: endpoint,
        );
      }
    } catch (e) {
      throw SerperApiException(
        message: 'Error making API request: $e',
        endpoint: endpoint,
      );
    }
  }

  Future<Map<String, dynamic>> _postSingle(
    String endpoint,
    Map<String, dynamic> data, {
    bool isScrape = false,
    Duration? receiveTimeout,
    Duration? sendTimeout,
  }) async {
    final raw = await _postInternal(
      endpoint,
      [data],
      isScrape: isScrape,
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
    );
    if (raw is Map<String, dynamic>) {
      return raw;
    } else if (raw is List &&
        raw.isNotEmpty &&
        raw.first is Map<String, dynamic>) {
      return raw.first as Map<String, dynamic>;
    }
    throw SerperApiException(
      message: 'API did not return a valid object for single query',
      endpoint: endpoint,
      responseData: {'rawResponse': raw},
    );
  }

  Future<List<Map<String, dynamic>>> _postBatch(
    String endpoint,
    List<Map<String, dynamic>> data, {
    bool isScrape = false,
    Duration? receiveTimeout,
    Duration? sendTimeout,
  }) async {
    final raw = await _postInternal(
      endpoint,
      data,
      isScrape: isScrape,
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
    );
    if (raw is List) {
      return raw.whereType<Map<String, dynamic>>().toList();
    } else if (raw is Map<String, dynamic> && data.length == 1) {
      return [raw];
    }
    throw SerperApiException(
      message: 'API did not return a valid list for batch query',
      endpoint: endpoint,
      responseData: {'rawResponse': raw},
    );
  }

  /// Deserializes a single API response object into a specific type that extends [SerperResponse].
  T _deserializeSingleItemResponse<T extends SerperResponse<dynamic>>(
    Map<String, dynamic> responseObject,
    T Function(Map<String, dynamic>) fromJson,
    String endpoint,
  ) {
    return fromJson(responseObject);
  }

  /// Deserializes an API response (potentially a list) into a list of specific types that extend [SerperResponse].
  List<T> _deserializeListResponse<T extends SerperResponse<dynamic>>(
    List<Map<String, dynamic>> rawResponse,
    T Function(Map<String, dynamic>) fromJson,
    String endpoint,
    int numQueriesSent,
  ) {
    final List<T> results = [];
    if (rawResponse.isEmpty && numQueriesSent > 0) {
      // This could be valid if the API returns an empty list for a batch query that yields no results.
      // However, if it's consistently an issue, it might indicate an error.
      // For now, we'll allow empty lists.
    }
    for (final item in rawResponse) {
      results.add(fromJson(item));
    }
    return results;
  }

  /// Generic method to call any Serper API for batch or single queries.
  ///
  /// Sends the provided [queryData] (a list of serialized queries)
  /// to the specified [endpoint]. Returns a list of deserialized response objects.
  ///
  /// Use this method for advanced scenarios or when dealing with new/experimental
  /// API endpoints not yet covered by specific methods. For batch operations
  /// or single queries, use this method to get all results as a list.
  ///
  /// Example:
  /// ```dart
  /// final responses = await serper.callApi<SearchResponse>(
  ///   '/search',
  ///   [SearchQuery(query: 'coffee').toJson()],
  ///   SearchResponse.fromJson,
  /// );
  /// // responses is a List<SearchResponse>
  /// ```
  Future<List<T>> callApi<T extends SerperResponse<dynamic>>(
    String endpoint,
    List<Map<String, dynamic>> queryData,
    T Function(Map<String, dynamic>) fromJson, {
    bool isScrape = false,
    Duration? receiveTimeout,
    Duration? sendTimeout,
  }) async {
    assert(
      queryData.isNotEmpty && queryData.length <= 100,
      'You must provide 1-100 queries for callApi.',
    );
    final raw = await _postBatch(
      endpoint,
      queryData,
      isScrape: isScrape,
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
    );
    return _deserializeListResponse(raw, fromJson, endpoint, queryData.length);
  }

  /// Calls the Serper Search API for a single query.
  ///
  /// Accepts a single [SearchQuery] object.
  ///
  /// {@macro flutter_serper.receiveTimeout}
  /// {@macro flutter_serper.sendTimeout}
  Future<SearchResponse> search(
    SearchQuery query, {
    Duration? receiveTimeout,
    Duration? sendTimeout,
  }) async {
    final endpoint = '/search';
    final raw = await _postSingle(
      endpoint,
      query.toJson(),
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
    );
    return _deserializeSingleItemResponse(
      raw,
      SearchResponse.fromJson,
      endpoint,
    );
  }

  /// Calls the Serper Search API for a batch of queries.
  ///
  /// Accepts a list of [SearchQuery] objects (up to 100).
  ///
  /// {@macro flutter_serper.receiveTimeout}
  /// {@macro flutter_serper.sendTimeout}
  Future<List<SearchResponse>> searchBatch(
    List<SearchQuery> queries, {
    Duration? receiveTimeout,
    Duration? sendTimeout,
  }) async {
    assert(
      queries.isNotEmpty && queries.length <= 100,
      'You must provide 1-100 queries for searchBatch.',
    );
    final endpoint = '/search';
    final data = queries.map((q) => q.toJson()).toList();
    final raw = await _postBatch(
      endpoint,
      data,
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
    );
    return _deserializeListResponse(
      raw,
      SearchResponse.fromJson,
      endpoint,
      queries.length,
    );
  }

  /// Calls the Serper Images API for a single query.
  ///
  /// Accepts a single [ImagesQuery] object.
  ///
  /// {@macro flutter_serper.receiveTimeout}
  /// {@macro flutter_serper.sendTimeout}
  Future<ImagesResponse> images(
    ImagesQuery query, {
    Duration? receiveTimeout,
    Duration? sendTimeout,
  }) async {
    final endpoint = '/images';
    final raw = await _postSingle(
      endpoint,
      query.toJson(),
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
    );
    return _deserializeSingleItemResponse(
      raw,
      ImagesResponse.fromJson,
      endpoint,
    );
  }

  /// Calls the Serper Images API for a batch of queries.
  ///
  /// Accepts a list of [ImagesQuery] objects (up to 100).
  ///
  /// {@macro flutter_serper.receiveTimeout}
  /// {@macro flutter_serper.sendTimeout}
  Future<List<ImagesResponse>> imagesBatch(
    List<ImagesQuery> queries, {
    Duration? receiveTimeout,
    Duration? sendTimeout,
  }) async {
    assert(
      queries.isNotEmpty && queries.length <= 100,
      'You must provide 1-100 queries for imagesBatch.',
    );
    final endpoint = '/images';
    final data = queries.map((q) => q.toJson()).toList();
    final raw = await _postBatch(
      endpoint,
      data,
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
    );
    return _deserializeListResponse(
      raw,
      ImagesResponse.fromJson,
      endpoint,
      queries.length,
    );
  }

  /// Calls the Serper Videos API for a single query.
  ///
  /// Accepts a single [VideosQuery] object.
  ///
  /// {@macro flutter_serper.receiveTimeout}
  /// {@macro flutter_serper.sendTimeout}
  Future<VideosResponse> videos(
    VideosQuery query, {
    Duration? receiveTimeout,
    Duration? sendTimeout,
  }) async {
    final endpoint = '/videos';
    final raw = await _postSingle(
      endpoint,
      query.toJson(),
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
    );
    return _deserializeSingleItemResponse(
      raw,
      VideosResponse.fromJson,
      endpoint,
    );
  }

  /// Calls the Serper Videos API for a batch of queries.
  ///
  /// Accepts a list of [VideosQuery] objects (up to 100).
  ///
  /// {@macro flutter_serper.receiveTimeout}
  /// {@macro flutter_serper.sendTimeout}
  Future<List<VideosResponse>> videosBatch(
    List<VideosQuery> queries, {
    Duration? receiveTimeout,
    Duration? sendTimeout,
  }) async {
    assert(
      queries.isNotEmpty && queries.length <= 100,
      'You must provide 1-100 queries for videosBatch.',
    );
    final endpoint = '/videos';
    final data = queries.map((q) => q.toJson()).toList();
    final raw = await _postBatch(
      endpoint,
      data,
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
    );
    return _deserializeListResponse(
      raw,
      VideosResponse.fromJson,
      endpoint,
      queries.length,
    );
  }

  /// Calls the Serper Places API for a single query.
  ///
  /// Accepts a single [PlacesQuery] object.
  ///
  /// {@macro flutter_serper.receiveTimeout}
  /// {@macro flutter_serper.sendTimeout}
  Future<PlacesResponse> places(
    PlacesQuery query, {
    Duration? receiveTimeout,
    Duration? sendTimeout,
  }) async {
    final endpoint = '/places';
    final raw = await _postSingle(
      endpoint,
      query.toJson(),
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
    );
    return _deserializeSingleItemResponse(
      raw,
      PlacesResponse.fromJson,
      endpoint,
    );
  }

  /// Calls the Serper Places API for a batch of queries.
  ///
  /// Accepts a list of [PlacesQuery] objects (up to 100).
  ///
  /// {@macro flutter_serper.receiveTimeout}
  /// {@macro flutter_serper.sendTimeout}
  Future<List<PlacesResponse>> placesBatch(
    List<PlacesQuery> queries, {
    Duration? receiveTimeout,
    Duration? sendTimeout,
  }) async {
    assert(
      queries.isNotEmpty && queries.length <= 100,
      'You must provide 1-100 queries for placesBatch.',
    );
    final endpoint = '/places';
    final data = queries.map((q) => q.toJson()).toList();
    final raw = await _postBatch(
      endpoint,
      data,
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
    );
    return _deserializeListResponse(
      raw,
      PlacesResponse.fromJson,
      endpoint,
      queries.length,
    );
  }

  /// Calls the Serper Maps API for a single query.
  ///
  /// Accepts a single [MapsQuery] object.
  ///
  /// {@macro flutter_serper.receiveTimeout}
  /// {@macro flutter_serper.sendTimeout}
  Future<MapsResponse> maps(
    MapsQuery query, {
    Duration? receiveTimeout,
    Duration? sendTimeout,
  }) async {
    final endpoint = '/maps';
    final raw = await _postSingle(
      endpoint,
      query.toJson(),
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
    );
    return _deserializeSingleItemResponse(raw, MapsResponse.fromJson, endpoint);
  }

  /// Calls the Serper Maps API for a batch of queries.
  ///
  /// Accepts a list of [MapsQuery] objects (up to 100).
  ///
  /// {@macro flutter_serper.receiveTimeout}
  /// {@macro flutter_serper.sendTimeout}
  Future<List<MapsResponse>> mapsBatch(
    List<MapsQuery> queries, {
    Duration? receiveTimeout,
    Duration? sendTimeout,
  }) async {
    assert(
      queries.isNotEmpty && queries.length <= 100,
      'You must provide 1-100 queries for mapsBatch.',
    );
    final endpoint = '/maps';
    final data = queries.map((q) => q.toJson()).toList();
    final raw = await _postBatch(
      endpoint,
      data,
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
    );
    return _deserializeListResponse(
      raw,
      MapsResponse.fromJson,
      endpoint,
      queries.length,
    );
  }

  /// Calls the Serper Reviews API for a single query.
  ///
  /// Accepts a single [ReviewsQuery] object.
  ///
  /// {@macro flutter_serper.receiveTimeout}
  /// {@macro flutter_serper.sendTimeout}
  Future<ReviewsResponse> reviews(
    ReviewsQuery query, {
    Duration? receiveTimeout,
    Duration? sendTimeout,
  }) async {
    final endpoint = '/reviews';
    final raw = await _postSingle(
      endpoint,
      query.toJson(),
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
    );
    return _deserializeSingleItemResponse(
      raw,
      ReviewsResponse.fromJson,
      endpoint,
    );
  }

  /// Calls the Serper Reviews API for a batch of queries.
  ///
  /// Accepts a list of [ReviewsQuery] objects (up to 100).
  ///
  /// {@macro flutter_serper.receiveTimeout}
  /// {@macro flutter_serper.sendTimeout}
  Future<List<ReviewsResponse>> reviewsBatch(
    List<ReviewsQuery> queries, {
    Duration? receiveTimeout,
    Duration? sendTimeout,
  }) async {
    assert(
      queries.isNotEmpty && queries.length <= 100,
      'You must provide 1-100 queries for reviewsBatch.',
    );
    final endpoint = '/reviews';
    final data = queries.map((q) => q.toJson()).toList();
    final raw = await _postBatch(
      endpoint,
      data,
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
    );
    return _deserializeListResponse(
      raw,
      ReviewsResponse.fromJson,
      endpoint,
      queries.length,
    );
  }

  /// Calls the Serper News API for a single query.
  ///
  /// Accepts a single [NewsQuery] object.
  ///
  /// {@macro flutter_serper.receiveTimeout}
  /// {@macro flutter_serper.sendTimeout}
  Future<NewsResponse> news(
    NewsQuery query, {
    Duration? receiveTimeout,
    Duration? sendTimeout,
  }) async {
    final endpoint = '/news';
    final raw = await _postSingle(
      endpoint,
      query.toJson(),
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
    );
    return _deserializeSingleItemResponse(raw, NewsResponse.fromJson, endpoint);
  }

  /// Calls the Serper News API for a batch of queries.
  ///
  /// Accepts a list of [NewsQuery] objects (up to 100).
  ///
  /// {@macro flutter_serper.receiveTimeout}
  /// {@macro flutter_serper.sendTimeout}
  Future<List<NewsResponse>> newsBatch(
    List<NewsQuery> queries, {
    Duration? receiveTimeout,
    Duration? sendTimeout,
  }) async {
    assert(
      queries.isNotEmpty && queries.length <= 100,
      'You must provide 1-100 queries for newsBatch.',
    );
    final endpoint = '/news';
    final data = queries.map((q) => q.toJson()).toList();
    final raw = await _postBatch(
      endpoint,
      data,
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
    );
    return _deserializeListResponse(
      raw,
      NewsResponse.fromJson,
      endpoint,
      queries.length,
    );
  }

  /// Calls the Serper Shopping API for a single query.
  ///
  /// Accepts a single [ShoppingQuery] object.
  ///
  /// {@macro flutter_serper.receiveTimeout}
  /// {@macro flutter_serper.sendTimeout}
  Future<ShoppingResponse> shopping(
    ShoppingQuery query, {
    Duration? receiveTimeout,
    Duration? sendTimeout,
  }) async {
    final endpoint = '/shopping';
    final raw = await _postSingle(
      endpoint,
      query.toJson(),
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
    );
    return _deserializeSingleItemResponse(
      raw,
      ShoppingResponse.fromJson,
      endpoint,
    );
  }

  /// Calls the Serper Shopping API for a batch of queries.
  ///
  /// Accepts a list of [ShoppingQuery] objects (up to 100).
  ///
  /// {@macro flutter_serper.receiveTimeout}
  /// {@macro flutter_serper.sendTimeout}
  Future<List<ShoppingResponse>> shoppingBatch(
    List<ShoppingQuery> queries, {
    Duration? receiveTimeout,
    Duration? sendTimeout,
  }) async {
    assert(
      queries.isNotEmpty && queries.length <= 100,
      'You must provide 1-100 queries for shoppingBatch.',
    );
    final endpoint = '/shopping';
    final data = queries.map((q) => q.toJson()).toList();
    final raw = await _postBatch(
      endpoint,
      data,
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
    );
    return _deserializeListResponse(
      raw,
      ShoppingResponse.fromJson,
      endpoint,
      queries.length,
    );
  }

  /// Calls the Serper Lens (Image Search) API for a single query.
  ///
  /// Accepts a single [LensQuery] object.
  ///
  /// {@macro flutter_serper.receiveTimeout}
  /// {@macro flutter_serper.sendTimeout}
  Future<LensResponse> lens(
    LensQuery query, {
    Duration? receiveTimeout,
    Duration? sendTimeout,
  }) async {
    final endpoint = '/lens';
    final raw = await _postSingle(
      endpoint,
      query.toJson(),
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
    );
    return _deserializeSingleItemResponse(raw, LensResponse.fromJson, endpoint);
  }

  /// Calls the Serper Lens (Image Search) API for a batch of queries.
  ///
  /// Accepts a list of [LensQuery] objects (up to 100).
  ///
  /// {@macro flutter_serper.receiveTimeout}
  /// {@macro flutter_serper.sendTimeout}
  Future<List<LensResponse>> lensBatch(
    List<LensQuery> queries, {
    Duration? receiveTimeout,
    Duration? sendTimeout,
  }) async {
    assert(
      queries.isNotEmpty && queries.length <= 100,
      'You must provide 1-100 queries for lensBatch.',
    );
    final endpoint = '/lens';
    final data = queries.map((q) => q.toJson()).toList();
    final raw = await _postBatch(
      endpoint,
      data,
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
    );
    return _deserializeListResponse(
      raw,
      LensResponse.fromJson,
      endpoint,
      queries.length,
    );
  }

  /// Calls the Serper Scholar API for a single query.
  ///
  /// Accepts a single [ScholarQuery] object.
  ///
  /// {@macro flutter_serper.receiveTimeout}
  /// {@macro flutter_serper.sendTimeout}
  Future<ScholarResponse> scholar(
    ScholarQuery query, {
    Duration? receiveTimeout,
    Duration? sendTimeout,
  }) async {
    final endpoint = '/scholar';
    final raw = await _postSingle(
      endpoint,
      query.toJson(),
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
    );
    return _deserializeSingleItemResponse(
      raw,
      ScholarResponse.fromJson,
      endpoint,
    );
  }

  /// Calls the Serper Scholar API for a batch of queries.
  ///
  /// Accepts a list of [ScholarQuery] objects (up to 100).
  ///
  /// {@macro flutter_serper.receiveTimeout}
  /// {@macro flutter_serper.sendTimeout}
  Future<List<ScholarResponse>> scholarBatch(
    List<ScholarQuery> queries, {
    Duration? receiveTimeout,
    Duration? sendTimeout,
  }) async {
    assert(
      queries.isNotEmpty && queries.length <= 100,
      'You must provide 1-100 queries for scholarBatch.',
    );
    final endpoint = '/scholar';
    final data = queries.map((q) => q.toJson()).toList();
    final raw = await _postBatch(
      endpoint,
      data,
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
    );
    return _deserializeListResponse(
      raw,
      ScholarResponse.fromJson,
      endpoint,
      queries.length,
    );
  }

  /// Calls the Serper Patents API for a single query.
  ///
  /// Accepts a single [PatentsQuery] object.
  ///
  /// {@macro flutter_serper.receiveTimeout}
  /// {@macro flutter_serper.sendTimeout}
  Future<PatentsResponse> patents(
    PatentsQuery query, {
    Duration? receiveTimeout,
    Duration? sendTimeout,
  }) async {
    final endpoint = '/patents';
    final raw = await _postSingle(
      endpoint,
      query.toJson(),
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
    );
    return _deserializeSingleItemResponse(
      raw,
      PatentsResponse.fromJson,
      endpoint,
    );
  }

  /// Calls the Serper Patents API for a batch of queries.
  ///
  /// Accepts a list of [PatentsQuery] objects (up to 100).
  ///
  /// {@macro flutter_serper.receiveTimeout}
  /// {@macro flutter_serper.sendTimeout}
  Future<List<PatentsResponse>> patentsBatch(
    List<PatentsQuery> queries, {
    Duration? receiveTimeout,
    Duration? sendTimeout,
  }) async {
    assert(
      queries.isNotEmpty && queries.length <= 100,
      'You must provide 1-100 queries for patentsBatch.',
    );
    final endpoint = '/patents';
    final data = queries.map((q) => q.toJson()).toList();
    final raw = await _postBatch(
      endpoint,
      data,
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
    );
    return _deserializeListResponse(
      raw,
      PatentsResponse.fromJson,
      endpoint,
      queries.length,
    );
  }

  /// Calls the Serper Autocomplete API for a single query.
  ///
  /// Accepts a single [AutocompleteQuery] object.
  ///
  /// {@macro flutter_serper.receiveTimeout}
  /// {@macro flutter_serper.sendTimeout}
  Future<AutocompleteResponse> autocomplete(
    AutocompleteQuery query, {
    Duration? receiveTimeout,
    Duration? sendTimeout,
  }) async {
    final endpoint = '/autocomplete';
    final raw = await _postSingle(
      endpoint,
      query.toJson(),
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
    );
    return _deserializeSingleItemResponse(
      raw,
      AutocompleteResponse.fromJson,
      endpoint,
    );
  }

  /// Calls the Serper Autocomplete API for a batch of queries.
  ///
  /// Accepts a list of [AutocompleteQuery] objects (up to 100).
  ///
  /// {@macro flutter_serper.receiveTimeout}
  /// {@macro flutter_serper.sendTimeout}
  Future<List<AutocompleteResponse>> autocompleteBatch(
    List<AutocompleteQuery> queries, {
    Duration? receiveTimeout,
    Duration? sendTimeout,
  }) async {
    assert(
      queries.isNotEmpty && queries.length <= 100,
      'You must provide 1-100 queries for autocompleteBatch.',
    );
    final endpoint = '/autocomplete';
    final data = queries.map((q) => q.toJson()).toList();
    final raw = await _postBatch(
      endpoint,
      data,
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
    );
    return _deserializeListResponse(
      raw,
      AutocompleteResponse.fromJson,
      endpoint,
      queries.length,
    );
  }

  /// Calls the Serper Webpage API (scraping) for a single query.
  ///
  /// Accepts a single [WebpageQuery] object.
  /// Note: The Webpage API is a scraping endpoint and has a different base URL.
  ///
  /// {@macro flutter_serper.receiveTimeout}
  /// {@macro flutter_serper.sendTimeout}
  Future<WebpageResponse> webpage(
    WebpageQuery query, {
    Duration? receiveTimeout,
    Duration? sendTimeout,
  }) async {
    final endpoint = '/webpage';
    final raw = await _postSingle(
      endpoint,
      query.toJson(),
      isScrape: true,
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
    );
    return _deserializeSingleItemResponse(
      raw,
      WebpageResponse.fromJson,
      endpoint,
    );
  }

  /// Calls the Serper Webpage API (scraping) for a batch of queries.
  ///
  /// Accepts a list of [WebpageQuery] objects (up to 100).
  Future<List<WebpageResponse>> webpageBatch(List<WebpageQuery> queries) {
    throw UnimplementedError(
      'The Serper Webpage API does not support batch queries. Use webpage for single queries.',
    );
  }
}
