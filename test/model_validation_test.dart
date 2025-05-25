import 'package:flutter_serper/flutter_serper.dart';
import 'package:flutter_serper/src/models/results/results.dart';
import 'package:test/test.dart';

void main() {
  group('Model Validation Tests', () {
    group('Query Models', () {
      test(
        'Query models should accept required parameters including empty strings',
        () {
          // Test that query models accept empty strings for required fields
          expect(SearchQuery(q: ''), isA<SearchQuery>());
          expect(ImagesQuery(q: ''), isA<ImagesQuery>());
          expect(VideosQuery(q: ''), isA<VideosQuery>());
          expect(NewsQuery(q: ''), isA<NewsQuery>());
          expect(WebpageQuery(url: ''), isA<WebpageQuery>());

          // Test valid query objects with non-empty content
          expect(SearchQuery(q: 'test'), isA<SearchQuery>());
          expect(ImagesQuery(q: 'test'), isA<ImagesQuery>());
          expect(VideosQuery(q: 'test'), isA<VideosQuery>());
          expect(NewsQuery(q: 'test'), isA<NewsQuery>());
          expect(WebpageQuery(url: 'https://example.com'), isA<WebpageQuery>());
        },
      );
    });

    group('Response Models', () {
      test('SearchResponse handles missing optional fields', () {
        // Minimal valid SearchResponse JSON with only required fields
        final minimalJson = {
          'organic': [
            {
              'title': 'Test Result',
              'link': 'https://example.com',
              'snippet': 'This is a test result',
              'position': 1,
            },
          ],
          'searchParameters': {'q': 'test'},
          'credits': 10,
        };

        // Should not throw
        final response = SearchResponse.fromJson(minimalJson);

        // Verify required fields
        expect(response.organic.length, equals(1));
        expect(response.organic.first.title, equals('Test Result'));

        // Optional fields should be null
        expect(response.peopleAlsoAsk, isNull);
        expect(response.relatedSearches, isNull);
        expect(response.knowledgeGraph, isNull);
      });

      test('ImagesResponse handles empty images array', () {
        // ImagesResponse with empty images array
        final emptyImagesJson = {
          'images': [],
          'searchParameters': {'q': 'test'},
          'credits': 5,
        };

        // Should not throw
        final response = ImagesResponse.fromJson(emptyImagesJson);

        // Verify
        expect(response.images, isEmpty);
      });
    });

    group('Result Models', () {
      test('OrganicResult handles missing optional fields', () {
        // Minimal valid OrganicResult JSON
        final minimalJson = {
          'title': 'Test Result',
          'link': 'https://example.com',
          'snippet': 'This is a test result',
          'position': 1,
        };

        // Create from JSON
        final result = OrganicResult.fromJson(minimalJson);

        // Verify required fields
        expect(result.title, equals('Test Result'));
        expect(result.link, equals('https://example.com'));
        expect(result.snippet, equals('This is a test result'));
        expect(result.position, equals(1));

        // Optional fields should be null
        expect(result.date, isNull);
        expect(result.sitelinks, isNull);
        expect(result.imageUrl, isNull);
      });

      test('ImageResult handles missing optional fields', () {
        // Minimal valid ImageResult JSON
        final minimalJson = {
          'title': 'Test Image',
          'imageUrl': 'https://example.com/image.jpg',
          'thumbnailUrl': 'https://example.com/thumbnail.jpg',
          'source': 'Example Source',
          'sourceUrl': 'https://example.com',
          'position': 1,
        };

        // Create from JSON
        final result = ImageResult.fromJson(minimalJson);

        // Verify required fields
        expect(result.title, equals('Test Image'));
        expect(result.imageUrl, equals('https://example.com/image.jpg'));
        expect(
          result.thumbnailUrl,
          equals('https://example.com/thumbnail.jpg'),
        );
        expect(result.source, equals('Example Source'));
        expect(result.sourceUrl, equals('https://example.com'));
        expect(result.position, equals(1));
      });
    });
  });
}
