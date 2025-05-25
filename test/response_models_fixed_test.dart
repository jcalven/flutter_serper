import 'package:flutter_serper/flutter_serper.dart';
import 'package:test/test.dart';

void main() {
  group('Response Models - Tests', () {
    test('MapsResponse deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'searchParameters': {'q': 'coffee shops', 'location': 'San Francisco'},
        'place': {
          'title': 'Coffee Shop',
          'address': '123 Main St, San Francisco, CA',
          'cid': 'test_cid', // Added
          'priceLevel': '\$\$', // Added
          'type': 'Cafe', // Added
          'rating': 4.5,
          'reviewCount': 100,
          'phone': '(123) 456-7890',
          'website': 'https://example.com',
          // 'position': 1, // position is not a direct field of MapResult
        },
        'credits': 5,
      };

      // Act
      final response = MapsResponse.fromJson(json);

      // Assert
      expect(response, isA<MapsResponse>());
      expect(response.place.title, equals('Coffee Shop'));
      expect(response.place.address, equals('123 Main St, San Francisco, CA'));
      expect(response.place.rating, equals(4.5));
      expect(response.place.reviewCount, equals(100));
      expect(response.credits, equals(5));
    });

    test('PlacesResponse deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'searchParameters': {'q': 'hotels', 'location': 'New York'},
        'places': [
          {
            'title': 'Luxury Hotel',
            'address': '456 Park Ave, New York, NY',
            'rating': 4.8,
            'reviewCount': 500,
            'position': 1,
          },
        ],
        'credits': 5,
      };

      // Act
      final response = PlacesResponse.fromJson(json);

      // Assert
      expect(response, isA<PlacesResponse>());
      expect(response.places.length, equals(1));
      expect(response.places.first.title, equals('Luxury Hotel'));
      expect(
        response.places.first.address,
        equals('456 Park Ave, New York, NY'),
      );
      expect(response.places.first.rating, equals(4.8));
      expect(response.places.first.reviewCount, equals(500));
      expect(response.credits, equals(5));
    });

    test('SearchResponse deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'searchParameters': {'q': 'flutter', 'gl': 'us'},
        'organic': [
          {
            'title': 'Flutter - Build apps for any screen',
            'link': 'https://flutter.dev',
            'snippet':
                'Flutter is Google\'s UI toolkit for crafting beautiful...',
            'position': 1,
          },
        ],
        'credits': 5,
      };

      // Act
      final response = SearchResponse.fromJson(json);

      // Assert
      expect(response, isA<SearchResponse>());
      expect(response.organic.length, equals(1));
      expect(
        response.organic.first.title,
        equals('Flutter - Build apps for any screen'),
      );
      expect(response.organic.first.link, equals('https://flutter.dev'));
      expect(
        response.organic.first.snippet,
        equals('Flutter is Google\'s UI toolkit for crafting beautiful...'),
      );
      expect(response.credits, equals(5));
    });

    test('ImagesResponse deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'searchParameters': {'q': 'mountains', 'gl': 'us'},
        'images': [
          {
            'title': 'Mountain View',
            'imageUrl': 'https://example.com/mountain.jpg',
            'source': 'Example.com',
            'position': 1,
          },
        ],
        'credits': 5,
      };

      // Act
      final response = ImagesResponse.fromJson(json);

      // Assert
      expect(response, isA<ImagesResponse>());
      expect(response.images.length, equals(1));
      expect(response.images.first.title, equals('Mountain View'));
      expect(
        response.images.first.imageUrl,
        equals('https://example.com/mountain.jpg'),
      );
      expect(response.images.first.source, equals('Example.com'));
      expect(response.credits, equals(5));
    });

    test('NewsResponse deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'searchParameters': {'q': 'technology news', 'gl': 'us'},
        'news': [
          {
            'title': 'Latest Tech News',
            'link': 'https://example.com/news',
            'snippet': 'The latest in technology...',
            'date': '2023-01-01',
            'source': 'Tech News',
            'position': 1,
          },
        ],
        'credits': 5,
      };

      // Act
      final response = NewsResponse.fromJson(json);

      // Assert
      expect(response, isA<NewsResponse>());
      expect(response.news.length, equals(1));
      expect(response.news.first.title, equals('Latest Tech News'));
      expect(response.news.first.link, equals('https://example.com/news'));
      expect(
        response.news.first.snippet,
        equals('The latest in technology...'),
      );
      expect(response.news.first.date, equals('2023-01-01'));
      expect(response.credits, equals(5));
    });

    test('VideosResponse deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'searchParameters': {'q': 'flutter tutorials', 'gl': 'us'},
        'videos': [
          {
            'title': 'Flutter Tutorial',
            'link': 'https://example.com/video',
            'thumbnailUrl': 'https://example.com/thumbnail.jpg',
            'duration': '10:30',
            'source': 'YouTube',
            'position': 1,
          },
        ],
        'credits': 5,
      };

      // Act
      final response = VideosResponse.fromJson(json);

      // Assert
      expect(response, isA<VideosResponse>());
      expect(response.videos.length, equals(1));
      expect(response.videos.first.title, equals('Flutter Tutorial'));
      expect(response.videos.first.link, equals('https://example.com/video'));
      expect(
        response.videos.first.thumbnailUrl,
        equals('https://example.com/thumbnail.jpg'),
      );
      expect(response.videos.first.duration, equals('10:30'));
      expect(response.credits, equals(5));
    });

    test('LensResponse deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'searchParameters': {
          'url': 'https://example.com/image.jpg',
        }, // Changed 'image' to 'url'
        'organic': [
          {
            'title': 'Lens Result',
            'link': 'https://example.com/result',
            'imageUrl': 'https://example.com/image.jpg', // Added imageUrl
            'thumbnailUrl': 'https://example.com/thumbnail.jpg',
            'source': 'Example Source',
            'position': 1,
          },
        ],
        'credits': 5,
      };

      // Act
      final response = LensResponse.fromJson(json);

      // Assert
      expect(response, isA<LensResponse>());
      expect(response.organic.length, equals(1));
      expect(response.organic.first.title, equals('Lens Result'));
      expect(response.organic.first.link, equals('https://example.com/result'));
      expect(
        response.organic.first.thumbnailUrl,
        equals('https://example.com/thumbnail.jpg'),
      );
      expect(response.organic.first.source, equals('Example Source'));
      expect(response.credits, equals(5));
    });

    test('ScholarResponse deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'searchParameters': {'q': 'machine learning'},
        'organic': [
          {
            'title': 'Research Paper',
            'link': 'https://example.com/paper',
            'snippet': 'Abstract: This paper explores...',
            'publicationInfo': 'Example Journal, 2023',
            'year': 2023,
            'citedBy': 100,
            'pdfUrl': 'https://example.com/paper.pdf',
            'id': 'paper123',
            'position': 1,
          },
        ],
        'credits': 5,
      };

      // Act
      final response = ScholarResponse.fromJson(json);

      // Assert
      expect(response, isA<ScholarResponse>());
      expect(response.organic.length, equals(1));
      final scholarResult = response.organic.first;
      expect(scholarResult.title, equals('Research Paper'));
      expect(scholarResult.link, equals('https://example.com/paper'));
      expect(scholarResult.snippet, equals('Abstract: This paper explores...'));
      expect(scholarResult.publicationInfo, equals('Example Journal, 2023'));
      expect(scholarResult.year, equals(2023));
      expect(scholarResult.citedBy, equals(100));
      expect(scholarResult.pdfUrl, equals('https://example.com/paper.pdf'));
      expect(scholarResult.id, equals('paper123'));
      expect(response.credits, equals(5));
    });

    test('PatentsResponse deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'searchParameters': {'q': 'solar energy patents'},
        'organic': [
          {
            'title': 'Solar Energy Patent',
            'link': 'https://example.com/patent',
            'snippet': 'A method for converting solar energy...',
            'publicationNumber': 'US12345678',
            'assignee': 'Example Company',
            'inventor': 'Inventor 1',
            'filingDate': '2022-01-01',
            'priorityDate': '2021-01-01',
            'grantDate': '2023-01-01',
            'publicationDate': '2022-06-01',
            'language': 'en',
            'thumbnailUrl': 'https://example.com/patent_thumb.jpg',
            'pdfUrl': 'https://example.com/patent.pdf',
            'figures': [
              {
                'imageUrl': 'https://example.com/figure1.jpg',
                'thumbnailUrl': 'https://example.com/figure1_thumb.jpg',
              },
              {
                'imageUrl': 'https://example.com/figure2.jpg',
                'thumbnailUrl': 'https://example.com/figure2_thumb.jpg',
              },
            ],
            'position': 1,
          },
        ],
        'credits': 5,
      };

      // Act
      final response = PatentsResponse.fromJson(json);

      // Assert
      expect(response, isA<PatentsResponse>());
      expect(response.organic.length, equals(1));
      final patent = response.organic.first;
      expect(patent.title, equals('Solar Energy Patent'));
      expect(patent.link, equals('https://example.com/patent'));
      expect(patent.snippet, equals('A method for converting solar energy...'));
      expect(patent.publicationNumber, equals('US12345678'));
      expect(patent.assignee, equals('Example Company'));
      expect(patent.inventor, equals('Inventor 1'));
      expect(patent.filingDate, equals('2022-01-01'));
      expect(patent.priorityDate, equals('2021-01-01'));
      expect(patent.grantDate, equals('2023-01-01'));
      expect(patent.publicationDate, equals('2022-06-01'));
      expect(patent.language, equals('en'));
      expect(
        patent.thumbnailUrl,
        equals('https://example.com/patent_thumb.jpg'),
      );
      expect(patent.pdfUrl, equals('https://example.com/patent.pdf'));
      expect(patent.figures?.length, equals(2));
      expect(
        patent.figures?.first.imageUrl,
        equals('https://example.com/figure1.jpg'),
      );
      expect(
        patent.figures?.first.thumbnailUrl,
        equals('https://example.com/figure1_thumb.jpg'),
      );
      expect(patent.position, equals(1));
      expect(response.credits, equals(5));
    });

    test('ReviewsResponse deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'searchParameters': {
          'q': 'hotel reviews',
          'cid': '12345',
          'runtimeType': 'withCid', // Added runtimeType
        },
        'reviews': [
          {
            'author': 'Jane Doe',
            'authorUrl': 'https://example.com/user/janedoe',
            'text': 'This is a hotel review',
            'rating': 4.5,
            'date': '2023-01-01',
            'id': 'r1',
            'isLocalGuide': true,
            'position': 1,
          },
        ],
        'credits': 5,
      };

      // Act
      final response = ReviewsResponse.fromJson(json);

      // Assert
      expect(response, isA<ReviewsResponse>());
      expect(response.reviews.length, equals(1));
      expect(response.reviews.first.author, equals('Jane Doe'));
      expect(
        response.reviews.first.authorUrl,
        equals('https://example.com/user/janedoe'),
      );
      expect(response.reviews.first.text, equals('This is a hotel review'));
      expect(response.reviews.first.rating, equals(4.5));
      expect(response.reviews.first.date, equals('2023-01-01'));
      expect(response.reviews.first.id, equals('r1'));
      expect(response.reviews.first.isLocalGuide, isTrue);
      expect(response.reviews.first.position, equals(1));
      expect(response.credits, equals(5));
    });

    test('AutocompleteResponse deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'searchParameters': {'q': 'flo'},
        'suggestions': [
          {'value': 'flutter'},
          {'value': 'flowers'},
        ],
        'credits': 5,
      };

      // Act
      final response = AutocompleteResponse.fromJson(json);

      // Assert
      expect(response, isA<AutocompleteResponse>());
      expect(response.suggestions.length, equals(2));
      expect(response.suggestions.first.value, equals('flutter'));
      expect(response.suggestions.last.value, equals('flowers'));
      expect(response.credits, equals(5));
    });

    test('WebpageResponse deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'searchParameters': {'url': 'https://example.com'},
        'results': [
          {
            'text': 'This is the webpage content',
            'markdown': '# Webpage Content\n\nThis is the webpage content',
            'metadata': {'title': 'Example Website'},
            'credits': 5,
          },
        ],
      };

      // Act
      final response = WebpageResponse.fromJson(json);

      // Assert
      expect(response, isA<WebpageResponse>());
      expect(response.results.length, equals(1));
      expect(
        response.results.first.text,
        equals('This is the webpage content'),
      );
      expect(
        response.results.first.markdown,
        equals('# Webpage Content\n\nThis is the webpage content'),
      );
      expect(
        response.results.first.metadata,
        containsPair('title', 'Example Website'),
      );
      expect(response.results.first.credits, equals(5));
    });
  });
}
