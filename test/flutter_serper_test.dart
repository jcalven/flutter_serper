import 'package:flutter_serper/flutter_serper.dart';
import 'package:flutter_serper/src/models/shared_types.dart';
import 'package:test/test.dart';

void main() {
  group('Serper Query Classes', () {
    test('SearchQuery serializes to JSON correctly', () {
      // Arrange
      final searchQuery = SearchQuery(
        query: 'test query',
        location: 'New York',
        countryCode: CountryCode.unitedStates,
        languageCode: LanguageCode.english,
        num: 10,
        autocorrect: true,
        tbs: TbsValue.pastDay,
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
        query: 'test image',
        location: 'San Francisco',
        countryCode: CountryCode.unitedStates,
        languageCode: LanguageCode.english,
        num: 5,
      );

      // Act
      final json = query.toJson();

      // Assert
      expect(json, isA<Map<String, dynamic>>());
      expect(json['q'], equals('test image'));
      expect(json['location'], equals('San Francisco'));
      expect(json['gl'], equals('us'));
      expect(json['hl'], equals('en'));
      expect(json['num'], equals(5));
    });

    test('WebpageQuery serializes to JSON correctly', () {
      // Arrange
      final query = WebpageQuery(
        url: 'https://example.com',
        includeMarkdown: true,
      );

      // Act
      final json = query.toJson();

      // Assert
      expect(json, isA<Map<String, dynamic>>());
      expect(json['url'], equals('https://example.com'));
      expect(json['includeMarkdown'], isTrue);
    });
  });

  group('Serper Response Classes', () {
    test('SearchResponse deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'searchParameters': {
          'q': 'test',
          'gl': 'us',
          'hl': 'en', // Added for completeness based on model
          'tbs': 'qdr:d', // Added for completeness
        },
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
      expect(response.searchParameters, isA<SearchQuery>());
      expect(response.searchParameters.query, equals('test'));
      expect(
        response.searchParameters.countryCode,
        equals(CountryCode.unitedStates),
      );
      expect(
        response.searchParameters.languageCode,
        equals(LanguageCode.english),
      );
      expect(response.searchParameters.tbs, equals(TbsValue.pastDay));
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
        'searchParameters': {'q': 'test image', 'gl': 'us', 'hl': 'en'},
        'images': [
          {
            'title': 'Test Image',
            'imageUrl': 'https://example.com/image.jpg',
            'imageWidth': 800,
            'imageHeight': 600,
            'thumbnailUrl': 'https://example.com/thumbnail.jpg',
            'thumbnailWidth': 200,
            'thumbnailHeight': 150,
            'source': 'Example Source',
            'link': 'https://example.com/image',
            'googleUrl':
                'https://google.com/imgres?imgurl=https://example.com/image.jpg',
            'price': '\$10',
            'domain': 'example.com',
            'position': 1,
          },
        ],
        'credits': 1,
      };

      // Act
      final response = ImagesResponse.fromJson(json);

      // Assert
      expect(response, isA<ImagesResponse>());
      expect(response.searchParameters, isA<ImagesQuery>());
      expect(response.searchParameters.query, equals('test image'));
      expect(
        response.searchParameters.countryCode,
        equals(CountryCode.unitedStates),
      );
      expect(
        response.searchParameters.languageCode,
        equals(LanguageCode.english),
      );
      expect(response.images, hasLength(1));
      final img = response.images.first;
      expect(img.title, equals('Test Image'));
      expect(img.imageUrl, equals('https://example.com/image.jpg'));
      expect(img.imageWidth, equals(800));
      expect(img.imageHeight, equals(600));
      expect(img.thumbnailUrl, equals('https://example.com/thumbnail.jpg'));
      expect(img.thumbnailWidth, equals(200));
      expect(img.thumbnailHeight, equals(150));
      expect(img.source, equals('Example Source'));
      expect(img.link, equals('https://example.com/image'));
      expect(
        img.googleUrl,
        equals(
          'https://google.com/imgres?imgurl=https://example.com/image.jpg',
        ),
      );
      expect(img.price, equals('\$10'));
      expect(img.domain, equals('example.com'));
      expect(img.position, equals(1));
      expect(response.credits, equals(1));
    });

    test('WebpageResponse deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'text': 'This is the webpage content',
        'markdown': '# Webpage Content\n\nThis is the webpage content',
        'credits': 5,
      };

      // Act
      final response = WebpageResponse.fromJson(json);

      // Assert
      expect(response, isA<WebpageResponse>());
      expect(response.results.text, equals('This is the webpage content'));
      expect(
        response.results.markdown,
        equals('# Webpage Content\n\nThis is the webpage content'),
      );
      expect(response.results.credits, equals(5));
    });
  });

  group('SerperResponseMixin', () {
    test('Can handle responses polymorphically', () {
      // Arrange
      final searchJson = {
        'searchParameters': {'q': 'test', 'gl': 'us', 'hl': 'en'},
        'organic': [
          {
            'title': 'Test Result',
            'link': 'https://example.com',
            'snippet': 'This is a test result',
            'position': 1,
          },
        ],
        'credits': 10,
      };

      final imagesJson = {
        'searchParameters': {'q': 'test image', 'gl': 'us', 'hl': 'en'},
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
        'credits': 5,
      };

      // Act
      final searchResponse = SearchResponse.fromJson(searchJson);
      final imagesResponse = ImagesResponse.fromJson(imagesJson);

      // Function that works with any ResponseUtilityMixin
      int getCreditsUsed(ResponseUtilityMixin response) {
        return response.credits;
      }

      // Assert
      expect(getCreditsUsed(searchResponse), equals(10));
      expect(getCreditsUsed(imagesResponse), equals(5));

      // Verify both types implement the mixin correctly
      expect(searchResponse.searchParameters.query, equals('test'));
      expect(
        searchResponse.searchParameters.countryCode,
        CountryCode.unitedStates,
      );
      expect(
        searchResponse.searchParameters.languageCode,
        LanguageCode.english,
      );
      expect(imagesResponse.searchParameters.query, equals('test image'));
      expect(
        imagesResponse.searchParameters.countryCode,
        CountryCode.unitedStates,
      );
      expect(
        imagesResponse.searchParameters.languageCode,
        LanguageCode.english,
      );
    });
  });
}
