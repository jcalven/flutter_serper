import 'package:flutter_serper/flutter_serper.dart';
import 'package:flutter_serper/src/models/results/results.dart';
import 'package:test/test.dart';

void main() {
  group('Model Validation Tests', () {
    group('Query Models', () {
      test('Query models should accept required parameters', () {
        // Test that query models accept empty strings (no built-in validation)
        expect(SearchQuery(q: ''), isA<SearchQuery>());
        expect(ImagesQuery(q: ''), isA<ImagesQuery>());
        expect(VideosQuery(q: ''), isA<VideosQuery>());
        expect(NewsQuery(q: ''), isA<NewsQuery>());
        expect(WebpageQuery(url: ''), isA<WebpageQuery>());

        // Test valid query objects with content
        expect(SearchQuery(q: 'test'), isA<SearchQuery>());
        expect(ImagesQuery(q: 'test'), isA<ImagesQuery>());
        expect(VideosQuery(q: 'test'), isA<VideosQuery>());
        expect(NewsQuery(q: 'test'), isA<NewsQuery>());
        expect(WebpageQuery(url: 'https://example.com'), isA<WebpageQuery>());
      });

      test('Query models should serialize and deserialize correctly', () {
        final searchQuery = SearchQuery(q: 'test query', location: 'US');
        final json = searchQuery.toJson();
        final recreated = SearchQuery.fromJson(json);

        expect(recreated.q, equals('test query'));
        expect(recreated.location, equals('US'));

        final imagesQuery = ImagesQuery(q: 'image search', num: 10);
        final imageJson = imagesQuery.toJson();
        final recreatedImage = ImagesQuery.fromJson(imageJson);

        expect(recreatedImage.q, equals('image search'));
        expect(recreatedImage.num, equals(10));
      });
    });

    group('Response Models', () {
      test('Response models should handle minimal JSON data', () {
        // Minimal JSON for SearchResponse
        final minimalJson = {
          'searchParameters': {'q': 'test'},
          'organic': [],
          'credits': 1,
        };

        // Should not throw exceptions
        final response = SearchResponse.fromJson(minimalJson);
        expect(response, isA<SearchResponse>());
        expect(response.organic, isEmpty);
        expect(response.credits, equals(1));
      });
    });

    group('Result Models', () {
      test('Result models should handle minimal JSON data', () {
        // Minimal JSON for Organic Result
        final minimalJson = {
          'title': 'Test Result',
          'link': 'https://example.com',
          'snippet': 'Test snippet',
          'position': 1,
        };

        // Should not throw exceptions
        final result = OrganicResult.fromJson(minimalJson);
        expect(result, isA<OrganicResult>());
        expect(result.title, equals('Test Result'));
        expect(result.link, equals('https://example.com'));
        expect(result.snippet, equals('Test snippet'));
        expect(result.position, equals(1));
        expect(result.date, isNull);
        expect(result.sitelinks, isNull);
      });

      test('ImageResult handles minimal JSON data', () {
        final minimalJson = {'position': 1};

        final result = ImageResult.fromJson(minimalJson);
        expect(result, isA<ImageResult>());
        expect(result.position, equals(1));
        expect(result.title, isNull);
        expect(result.imageUrl, isNull);
        expect(result.source, isNull);
      });

      test('VideoResult handles minimal JSON data', () {
        final minimalJson = {
          'title': 'Test Video',
          'link': 'https://example.com/video',
          'thumbnailUrl': 'https://example.com/thumbnail.jpg',
          'position': 1,
        };

        final result = VideoResult.fromJson(minimalJson);
        expect(result, isA<VideoResult>());
        expect(result.title, equals('Test Video'));
        expect(result.link, equals('https://example.com/video'));
        expect(
          result.thumbnailUrl,
          equals('https://example.com/thumbnail.jpg'),
        );
        expect(result.position, equals(1));
        expect(result.duration, isNull);
        expect(result.viewCount, isNull);
      });

      test('NewsResult handles minimal JSON data', () {
        final minimalJson = {
          'title': 'Test News',
          'link': 'https://example.com/news',
          'snippet': 'Test snippet',
          'date': '2024-01-01',
          'source': 'News Source',
          'position': 1,
        };

        final result = NewsResult.fromJson(minimalJson);
        expect(result, isA<NewsResult>());
        expect(result.title, equals('Test News'));
        expect(result.link, equals('https://example.com/news'));
        expect(result.snippet, equals('Test snippet'));
        expect(result.date, equals('2024-01-01'));
        expect(result.source, equals('News Source'));
        expect(result.position, equals(1));
      });

      test('ShoppingResult handles minimal JSON data', () {
        final minimalJson = {
          'title': 'Test Product',
          'link': 'https://example.com/product',
          'position': 1,
        };

        final result = ShoppingResult.fromJson(minimalJson);
        expect(result, isA<ShoppingResult>());
        expect(result.title, equals('Test Product'));
        expect(result.link, equals('https://example.com/product'));
        expect(result.position, equals(1));
        expect(result.price, isNull);
        expect(result.source, isNull);
      });
    });

    group('Exception Handling', () {
      test('SerperApiException provides meaningful error messages', () {
        final exception = SerperApiException(
          message: 'API rate limit exceeded',
          statusCode: 429,
          responseData: {
            'error': 'Too many requests',
            'message': 'Rate limit exceeded',
          },
        );

        expect(exception.message, equals('API rate limit exceeded'));
        expect(exception.statusCode, equals(429));
        expect(exception.responseData!['error'], equals('Too many requests'));
        expect(exception.toString(), contains('API rate limit exceeded'));
      });
    });
  });
}
