import 'package:flutter_serper/flutter_serper.dart';
import 'package:test/test.dart';

void main() {
  group('Serper Query Classes', () {
    test('SearchQuery serializes to JSON correctly', () {
      // Arrange
      final searchQuery = SearchQuery(
        q: 'test query',
        location: 'New York',
        gl: 'us',
        hl: 'en',
        num: 10,
        autocorrect: true,
        tbs: 'qdr:d',
        page: 1,
      );

      // Act
      final json = searchQuery.toJson();

      // Assert
      expect(json, isA<Map<String, dynamic>>());
      expect(json['q'], equals('test query'));
      expect(json['location'], equals('New York'));
      expect(json['gl'], equals('us'));
      expect(json['hl'], equals('en'));
      expect(json['num'], equals(10));
      expect(json['autocorrect'], isTrue);
      expect(json['tbs'], equals('qdr:d'));
      expect(json['page'], equals(1));
    });

    test('ImagesQuery serializes to JSON correctly', () {
      // Arrange
      final query = ImagesQuery(
        q: 'test image',
        location: 'San Francisco',
        num: 5,
      );

      // Act
      final json = query.toJson();

      // Assert
      expect(json, isA<Map<String, dynamic>>());
      expect(json['q'], equals('test image'));
      expect(json['location'], equals('San Francisco'));
      expect(json['num'], equals(5));
    });

    test('WebpageQuery serializes to JSON correctly', () {
      // Arrange
      final query = WebpageQuery(
        url: 'https://example.com',
        includeMarkdown: true,
        q: 'test query',
      );

      // Act
      final json = query.toJson();

      // Assert
      expect(json, isA<Map<String, dynamic>>());
      expect(json['url'], equals('https://example.com'));
      expect(json['includeMarkdown'], isTrue);
      expect(json['q'], equals('test query'));
    });
  });

  group('Serper Response Classes', () {
    test('SearchResponse deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'searchParameters': {'q': 'test', 'gl': 'us'},
        'organic': [
          {
            'title': 'Test Result',
            'link': 'https://example.com',
            'snippet': 'This is a test result',
            'position': 1,
          },
        ],
        'relatedSearches': [
          {'query': 'related test'},
        ],
        'credits': 1,
      };

      // Act
      final response = SearchResponse.fromJson(json);

      // Assert
      expect(response, isA<SearchResponse>());
      expect(response.searchParameters, isA<Map<String, dynamic>>());
      expect(response.organic, hasLength(1));
      expect(response.organic.first.title, equals('Test Result'));
      expect(response.organic.first.link, equals('https://example.com'));
      expect(response.organic.first.snippet, equals('This is a test result'));
      expect(response.organic.first.position, equals(1));
      expect(response.relatedSearches, hasLength(1));
      expect(response.relatedSearches![0].query, equals('related test'));
      expect(response.credits, equals(1));
    });

    test('ImagesResponse deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'searchParameters': {'q': 'test image', 'gl': 'us'},
        'images': [
          {
            'title': 'Test Image',
            'imageUrl': 'https://example.com/image.jpg',
            'thumbnailUrl': 'https://example.com/thumbnail.jpg',
            'source': 'Example Source',
            'sourceUrl': 'https://example.com',
            'position': 1,
          },
        ],
        'credits': 1,
      };

      // Act
      final response = ImagesResponse.fromJson(json);

      // Assert
      expect(response, isA<ImagesResponse>());
      expect(response.searchParameters, isA<Map<String, dynamic>>());
      expect(response.images, hasLength(1));
      expect(response.images.first.title, equals('Test Image'));
      expect(
        response.images.first.imageUrl,
        equals('https://example.com/image.jpg'),
      );
      expect(
        response.images.first.thumbnailUrl,
        equals('https://example.com/thumbnail.jpg'),
      );
      expect(response.images.first.source, equals('Example Source'));
      expect(response.images.first.sourceUrl, equals('https://example.com'));
      expect(response.images.first.position, equals(1));
      expect(response.credits, equals(1));
    });

    test('WebpageResponse deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'results': [
          {
            'text': 'This is the webpage content',
            'markdown': '# Webpage Content\n\nThis is the webpage content',
            'credits': 5,
          },
        ],
      };

      // Act
      final response = WebpageResponse.fromJson(json);

      // Assert
      expect(response, isA<WebpageResponse>());
      expect(response.results, hasLength(1));
      expect(
        response.results.first.text,
        equals('This is the webpage content'),
      );
      expect(
        response.results.first.markdown,
        equals('# Webpage Content\n\nThis is the webpage content'),
      );
      expect(response.results.first.credits, equals(5));
    });
  });
}
