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
          'rating': 4.5,
          'reviewCount': 100,
          'phone': '(123) 456-7890',
          'website': 'https://example.com',
          'position': 1,
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
            'imageWidth': 800,
            'imageHeight': 600,
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
      expect(response.images.first.imageWidth, equals(800));
      expect(response.images.first.imageHeight, equals(600));
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
        'searchParameters': {'image': 'https://example.com/image.jpg'},
        'organic': [
          {
            'title': 'Lens Result',
            'link': 'https://example.com/result',
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
            'authors': ['Author 1', 'Author 2'],
            'journal': 'Example Journal',
            'citations': 100,
            'year': 2023,
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
      expect(response.organic.first.title, equals('Research Paper'));
      expect(response.organic.first.link, equals('https://example.com/paper'));
      expect(
        response.organic.first.snippet,
        equals('Abstract: This paper explores...'),
      );
      expect(response.organic.first.authors, equals(['Author 1', 'Author 2']));
      expect(response.organic.first.journal, equals('Example Journal'));
      expect(response.organic.first.citations, equals(100));
      expect(response.organic.first.year, equals(2023));
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
            'patentNumber': 'US12345678',
            'assignee': 'Example Company',
            'inventors': ['Inventor 1', 'Inventor 2'],
            'filingDate': '2022-01-01',
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
      expect(response.organic.first.title, equals('Solar Energy Patent'));
      expect(response.organic.first.link, equals('https://example.com/patent'));
      expect(
        response.organic.first.snippet,
        equals('A method for converting solar energy...'),
      );
      expect(response.organic.first.patentNumber, equals('US12345678'));
      expect(response.organic.first.assignee, equals('Example Company'));
      expect(
        response.organic.first.inventors,
        equals(['Inventor 1', 'Inventor 2']),
      );
      expect(response.organic.first.filingDate, equals('2022-01-01'));
      expect(response.credits, equals(5));
    });

    test('ReviewsResponse deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'searchParameters': {'q': 'hotel reviews', 'cid': '12345'},
        'reviews': [
          {
            'reviewTitle': 'Hotel Review',
            'reviewLink': 'https://example.com/review',
            'reviewSnippet': 'This is a hotel review',
            'starRating': 4.5,
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
      expect(response.reviews.first.reviewTitle, equals('Hotel Review'));
      expect(
        response.reviews.first.reviewLink,
        equals('https://example.com/review'),
      );
      expect(
        response.reviews.first.reviewSnippet,
        equals('This is a hotel review'),
      );
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
            'title': 'Example Website',
            'link': 'https://example.com',
            'snippet': 'This is an example website...',
            'position': 1,
          },
        ],
        'credits': 10,
      };

      // Act
      final response = WebpageResponse.fromJson(json);

      // Assert
      expect(response, isA<WebpageResponse>());
      expect(response.results.length, equals(1));
      expect(response.results.first.title, equals('Example Website'));
      expect(response.results.first.link, equals('https://example.com'));
      expect(
        response.results.first.snippet,
        equals('This is an example website...'),
      );
      expect(response.credits, equals(10));
    });
  });
}
