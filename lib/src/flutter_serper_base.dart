import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_serper/src/queries.dart';
import 'package:flutter_serper/src/responses.dart';

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
  String toString() => message;
}

/// A wrapper for the Serper API.
///
/// Provides methods for all supported Serper API endpoints, including search, images, videos, places, maps, reviews,
/// news, shopping, lens, scholar, patents, autocomplete, and webpage scraping.
///
/// All methods use the Dio HTTP client and return strongly-typed response objects that implement [SerperResponseMixin],
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
  static const String _googleBaseUrl = 'https://google.serper.dev';

  /// The base URL for scraping endpoints.
  static const String _scrapeBaseUrl = 'https://scrape.serper.dev';

  /// The API key for authenticating requests.
  final String apiKey;

  /// The Dio HTTP client instance.
  final Dio _dio;

  /// Creates a new [Serper] instance.
  ///
  /// The [apiKey] parameter is required.
  Serper({required this.apiKey, Dio? dio}) : _dio = dio ?? Dio();

  /// Returns the default headers for all requests.
  Map<String, String> get _headers => {
    'X-API-KEY': apiKey,
    'Content-Type': 'application/json',
  };

  /// Makes a POST request to the given [endpoint] with the provided [data].
  Future<dynamic> _post(
    String endpoint,
    List<Map<String, dynamic>> data, {
    bool isScrape = false,
  }) async {
    final url =
        isScrape ? '$_scrapeBaseUrl$endpoint' : '$_googleBaseUrl$endpoint';
    try {
      final response = await _dio.request(
        url,
        options: Options(method: 'POST', headers: _headers),
        data: json.encode(data),
      );
      return response.data;
    } on DioException catch (e) {
      if (e.response != null) {
        // If we have a response body, try to extract error details
        final statusCode = e.response!.statusCode;
        final Map<String, dynamic>? errorData =
            e.response!.data is Map
                ? e.response!.data as Map<String, dynamic>
                : null;

        final errorMessage = errorData?['message'] ?? e.message;
        throw SerperApiException(
          message: 'Serper API error: $errorMessage',
          statusCode: statusCode,
          endpoint: endpoint,
          responseData: errorData,
        );
      } else {
        // Network error or no response
        throw SerperApiException(
          message: 'Network error: ${e.message}',
          endpoint: endpoint,
        );
      }
    } catch (e) {
      // Any other error
      throw SerperApiException(
        message: 'Error making API request: $e',
        endpoint: endpoint,
      );
    }
  }

  /// Get a value that implements [SerperResponseMixin] from the response.
  ///
  /// This method can be used to get any response type that implements [SerperResponseMixin],
  /// allowing for polymorphic handling of responses.
  T getResponseWithMixin<T extends SerperResponseMixin>(
    dynamic response,
    T Function(Map<String, dynamic>) fromJson,
  ) {
    if (response is! Map<String, dynamic>) {
      throw SerperApiException(
        message: 'Invalid API response format: expected a JSON object',
      );
    }
    return fromJson(response);
  }

  /// Generic method to call any Serper API and return a response that implements [SerperResponseMixin].
  ///
  /// This method can be used when you want to handle responses in a polymorphic way.
  ///
  /// Example:
  /// ```dart
  /// final response = await serper.callApiWithMixin<SearchResponse>(
  ///   '/search',
  ///   [SearchQuery(q: 'coffee').toJson()],
  ///   SearchResponse.fromJson,
  /// );
  /// // Can use response as SerperResponseMixin
  /// print(response.credits);
  /// ```
  Future<T> callApiWithMixin<T extends SerperResponseMixin>(
    String endpoint,
    List<Map<String, dynamic>> queryData,
    T Function(Map<String, dynamic>) fromJson, {
    bool isScrape = false,
  }) async {
    assert(
      queryData.isNotEmpty && queryData.length <= 100,
      'You must provide 1-100 queries.',
    );
    final response = await _post(endpoint, queryData, isScrape: isScrape);
    return getResponseWithMixin(response, fromJson);
  }

  /// Calls the Serper Search API.
  ///
  /// Accepts a list of [SearchQuery] objects (up to 100).
  Future<SearchResponse> search(List<SearchQuery> queries) async {
    assert(
      queries.isNotEmpty && queries.length <= 100,
      'You must provide 1-100 queries.',
    );
    final data = queries.map((q) => q.toJson()).toList();
    final response = await _post('/search', data);
    return getResponseWithMixin(response, SearchResponse.fromJson);
  }

  /// Calls the Serper Images API.
  ///
  /// Accepts a list of [ImagesQuery] objects (up to 100).
  Future<ImagesResponse> images(List<ImagesQuery> queries) async {
    assert(
      queries.isNotEmpty && queries.length <= 100,
      'You must provide 1-100 queries.',
    );
    final data = queries.map((q) => q.toJson()).toList();
    final response = await _post('/images', data);
    return getResponseWithMixin(response, ImagesResponse.fromJson);
  }

  /// Calls the Serper Videos API.
  ///
  /// Accepts a list of [VideosQuery] objects (up to 100).
  Future<VideosResponse> videos(List<VideosQuery> queries) async {
    assert(
      queries.isNotEmpty && queries.length <= 100,
      'You must provide 1-100 queries.',
    );
    final data = queries.map((q) => q.toJson()).toList();
    final response = await _post('/videos', data);
    return getResponseWithMixin(response, VideosResponse.fromJson);
  }

  /// Calls the Serper Places API.
  ///
  /// Accepts a list of [PlacesQuery] objects (up to 100).
  Future<PlacesResponse> places(List<PlacesQuery> queries) async {
    assert(
      queries.isNotEmpty && queries.length <= 100,
      'You must provide 1-100 queries.',
    );
    final data = queries.map((q) => q.toJson()).toList();
    final response = await _post('/places', data);
    return getResponseWithMixin(response, PlacesResponse.fromJson);
  }

  /// Calls the Serper Maps API.
  ///
  /// Accepts a list of [MapsQuery] objects (up to 100).
  Future<MapsResponse> maps(List<MapsQuery> queries) async {
    assert(
      queries.isNotEmpty && queries.length <= 100,
      'You must provide 1-100 queries.',
    );
    final data = queries.map((q) => q.toJson()).toList();
    final response = await _post('/maps', data);
    return getResponseWithMixin(response, MapsResponse.fromJson);
  }

  /// Calls the Serper Reviews API.
  ///
  /// Accepts a list of [ReviewsQuery] objects (up to 100).
  Future<ReviewsResponse> reviews(List<ReviewsQuery> queries) async {
    assert(
      queries.isNotEmpty && queries.length <= 100,
      'You must provide 1-100 queries.',
    );
    final data = queries.map((q) => q.toJson()).toList();
    final response = await _post('/reviews', data);
    return getResponseWithMixin(response, ReviewsResponse.fromJson);
  }

  /// Calls the Serper News API.
  ///
  /// Accepts a list of [NewsQuery] objects (up to 100).
  Future<NewsResponse> news(List<NewsQuery> queries) async {
    assert(
      queries.isNotEmpty && queries.length <= 100,
      'You must provide 1-100 queries.',
    );
    final data = queries.map((q) => q.toJson()).toList();
    final response = await _post('/news', data);
    return getResponseWithMixin(response, NewsResponse.fromJson);
  }

  /// Calls the Serper Shopping API.
  ///
  /// Accepts a list of [ShoppingQuery] objects (up to 100).
  Future<ShoppingResponse> shopping(List<ShoppingQuery> queries) async {
    assert(
      queries.isNotEmpty && queries.length <= 100,
      'You must provide 1-100 queries.',
    );
    final data = queries.map((q) => q.toJson()).toList();
    final response = await _post('/shopping', data);
    return getResponseWithMixin(response, ShoppingResponse.fromJson);
  }

  /// Calls the Serper Lens (Image Search) API.
  ///
  /// Accepts a list of [LensQuery] objects (up to 100).
  Future<LensResponse> lens(List<LensQuery> queries) async {
    assert(
      queries.isNotEmpty && queries.length <= 100,
      'You must provide 1-100 queries.',
    );
    final data = queries.map((q) => q.toJson()).toList();
    final response = await _post('/lens', data);
    return getResponseWithMixin(response, LensResponse.fromJson);
  }

  /// Calls the Serper Scholar API.
  ///
  /// Accepts a list of [ScholarQuery] objects (up to 100).
  Future<ScholarResponse> scholar(List<ScholarQuery> queries) async {
    assert(
      queries.isNotEmpty && queries.length <= 100,
      'You must provide 1-100 queries.',
    );
    final data = queries.map((q) => q.toJson()).toList();
    final response = await _post('/scholar', data);
    return getResponseWithMixin(response, ScholarResponse.fromJson);
  }

  /// Calls the Serper Patents API.
  ///
  /// Accepts a list of [PatentsQuery] objects (up to 100).
  Future<PatentsResponse> patents(List<PatentsQuery> queries) async {
    assert(
      queries.isNotEmpty && queries.length <= 100,
      'You must provide 1-100 queries.',
    );
    final data = queries.map((q) => q.toJson()).toList();
    final response = await _post('/patents', data);
    return getResponseWithMixin(response, PatentsResponse.fromJson);
  }

  /// Calls the Serper Autocomplete API.
  ///
  /// Accepts a list of [AutocompleteQuery] objects (up to 100).
  Future<AutocompleteResponse> autocomplete(
    List<AutocompleteQuery> queries,
  ) async {
    assert(
      queries.isNotEmpty && queries.length <= 100,
      'You must provide 1-100 queries.',
    );
    final data = queries.map((q) => q.toJson()).toList();
    final response = await _post('/autocomplete', data);
    return getResponseWithMixin(response, AutocompleteResponse.fromJson);
  }

  /// Calls the Serper Webpage API (scraping).
  ///
  /// Accepts a list of [WebpageQuery] objects (up to 100).
  Future<WebpageResponse> webpage(List<WebpageQuery> queries) async {
    assert(
      queries.isNotEmpty && queries.length <= 100,
      'You must provide 1-100 queries.',
    );
    final data = queries.map((q) => q.toJson()).toList();
    final response = await _post('/webpage', data, isScrape: true);
    return WebpageResponse.fromJson(response);
  }
}
