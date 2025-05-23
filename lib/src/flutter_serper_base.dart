import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_serper/src/queries.dart';

/// A wrapper for the Serper API.
///
/// Provides methods for all supported Serper API endpoints, including search, images, videos, places, maps, reviews,
/// news, shopping, lens, scholar, patents, autocomplete, and webpage scraping.
///
/// All methods use the Dio HTTP client and return the decoded response data.
///
/// Example usage:
/// ```dart
/// final serper = Serper(apiKey: 'your-api-key');
/// final searchResults = await serper.search([{'q': 'coffee shop'}]);
/// ```

// Query classes are now in queries.dart

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
    final response = await _dio.request(
      url,
      options: Options(method: 'POST', headers: _headers),
      data: json.encode(data),
    );
    return response.data;
  }

  /// Calls the Serper Search API.
  ///
  /// Accepts a list of [SearchQuery] objects (up to 100).
  Future<dynamic> search(List<SearchQuery> queries) async {
    assert(
      queries.isNotEmpty && queries.length <= 100,
      'You must provide 1-100 queries.',
    );
    final data = queries.map((q) => q.toJson()).toList();
    return _post('/search', data);
  }

  /// Calls the Serper Images API.
  ///
  /// Accepts a list of [ImagesQuery] objects (up to 100).
  Future<dynamic> images(List<ImagesQuery> queries) async {
    assert(
      queries.isNotEmpty && queries.length <= 100,
      'You must provide 1-100 queries.',
    );
    final data = queries.map((q) => q.toJson()).toList();
    return _post('/images', data);
  }

  /// Calls the Serper Videos API.
  ///
  /// Accepts a list of [VideosQuery] objects (up to 100).
  Future<dynamic> videos(List<VideosQuery> queries) async {
    assert(
      queries.isNotEmpty && queries.length <= 100,
      'You must provide 1-100 queries.',
    );
    final data = queries.map((q) => q.toJson()).toList();
    return _post('/videos', data);
  }

  /// Calls the Serper Places API.
  ///
  /// Accepts a list of [PlacesQuery] objects (up to 100).
  Future<dynamic> places(List<PlacesQuery> queries) async {
    assert(
      queries.isNotEmpty && queries.length <= 100,
      'You must provide 1-100 queries.',
    );
    final data = queries.map((q) => q.toJson()).toList();
    return _post('/places', data);
  }

  /// Calls the Serper Maps API.
  ///
  /// Accepts a list of [MapsQuery] objects (up to 100).
  Future<dynamic> maps(List<MapsQuery> queries) async {
    assert(
      queries.isNotEmpty && queries.length <= 100,
      'You must provide 1-100 queries.',
    );
    final data = queries.map((q) => q.toJson()).toList();
    return _post('/maps', data);
  }

  /// Calls the Serper Reviews API.
  ///
  /// Accepts a list of [ReviewsQuery] objects (up to 100).
  Future<dynamic> reviews(List<ReviewsQuery> queries) async {
    assert(
      queries.isNotEmpty && queries.length <= 100,
      'You must provide 1-100 queries.',
    );
    final data = queries.map((q) => q.toJson()).toList();
    return _post('/reviews', data);
  }

  /// Calls the Serper News API.
  ///
  /// Accepts a list of [NewsQuery] objects (up to 100).
  Future<dynamic> news(List<NewsQuery> queries) async {
    assert(
      queries.isNotEmpty && queries.length <= 100,
      'You must provide 1-100 queries.',
    );
    final data = queries.map((q) => q.toJson()).toList();
    return _post('/news', data);
  }

  /// Calls the Serper Shopping API.
  ///
  /// Accepts a list of [ShoppingQuery] objects (up to 100).
  Future<dynamic> shopping(List<ShoppingQuery> queries) async {
    assert(
      queries.isNotEmpty && queries.length <= 100,
      'You must provide 1-100 queries.',
    );
    final data = queries.map((q) => q.toJson()).toList();
    return _post('/shopping', data);
  }

  /// Calls the Serper Lens (Image Search) API.
  ///
  /// Accepts a list of [LensQuery] objects (up to 100).
  Future<dynamic> lens(List<LensQuery> queries) async {
    assert(
      queries.isNotEmpty && queries.length <= 100,
      'You must provide 1-100 queries.',
    );
    final data = queries.map((q) => q.toJson()).toList();
    return _post('/lens', data);
  }

  /// Calls the Serper Scholar API.
  ///
  /// Accepts a list of [ScholarQuery] objects (up to 100).
  Future<dynamic> scholar(List<ScholarQuery> queries) async {
    assert(
      queries.isNotEmpty && queries.length <= 100,
      'You must provide 1-100 queries.',
    );
    final data = queries.map((q) => q.toJson()).toList();
    return _post('/scholar', data);
  }

  /// Calls the Serper Patents API.
  ///
  /// Accepts a list of [PatentsQuery] objects (up to 100).
  Future<dynamic> patents(List<PatentsQuery> queries) async {
    assert(
      queries.isNotEmpty && queries.length <= 100,
      'You must provide 1-100 queries.',
    );
    final data = queries.map((q) => q.toJson()).toList();
    return _post('/patents', data);
  }

  /// Calls the Serper Autocomplete API.
  ///
  /// Accepts a list of [AutocompleteQuery] objects (up to 100).
  Future<dynamic> autocomplete(List<AutocompleteQuery> queries) async {
    assert(
      queries.isNotEmpty && queries.length <= 100,
      'You must provide 1-100 queries.',
    );
    final data = queries.map((q) => q.toJson()).toList();
    return _post('/autocomplete', data);
  }

  /// Calls the Serper Webpage API (scraping).
  ///
  /// Accepts a list of [WebpageQuery] objects (up to 100).
  Future<dynamic> webpage(List<WebpageQuery> queries) async {
    assert(
      queries.isNotEmpty && queries.length <= 100,
      'You must provide 1-100 queries.',
    );
    final data = queries.map((q) => q.toJson()).toList();
    return _post('/', data, isScrape: true);
  }
}
