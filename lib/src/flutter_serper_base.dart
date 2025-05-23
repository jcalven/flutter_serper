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
/// All methods use the Dio HTTP client and return strongly-typed response objects.
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
    return SearchResponse.fromJson(response);
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
    return ImagesResponse.fromJson(response);
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
    return VideosResponse.fromJson(response);
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
    return PlacesResponse.fromJson(response);
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
    return MapsResponse.fromJson(response);
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
    return ReviewsResponse.fromJson(response);
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
    return NewsResponse.fromJson(response);
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
    return ShoppingResponse.fromJson(response);
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
    return LensResponse.fromJson(response);
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
    return ScholarResponse.fromJson(response);
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
    return PatentsResponse.fromJson(response);
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
    return AutocompleteResponse.fromJson(response);
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
    final response = await _post('/', data, isScrape: true);
    return WebpageResponse.fromJson(response);
  }
}
