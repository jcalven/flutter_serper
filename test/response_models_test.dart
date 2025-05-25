import 'package:flutter_serper/flutter_serper.dart';
import 'package:test/test.dart';

void main() {
  group('Response Models - Additional Tests', () {
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
        'searchParameters': {'q': 'restaurants', 'location': 'Chicago'},
        'places': [
          {
            'title': 'Restaurant',
            'address': '123 Main St, Chicago, IL',
            'rating': 4.2,
            'reviewCount': 80,
            'position': 1,
          },
        ],
        'credits': 5,
      };

      // Act
      final response = PlacesResponse.fromJson(json);

      // Assert
      expect(response, isA<PlacesResponse>());
      expect(response.places!.length, equals(1));
      expect(response.places!.first.title, equals('Restaurant'));
      expect(
        response.places!.first.address,
        equals('123 Main St, Chicago, IL'),
      );
      expect(response.places!.first.rating, equals(4.2));
      expect(response.places!.first.reviewCount, equals(80));
      expect(response.credits, equals(5));
    });

    test('NewsResponse deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'searchParameters': {'q': 'world news', 'location': 'London'},
        'news': [
          {
            'title': 'News Article',
            'link': 'https://example.com/news',
            'snippet': 'This is a news article',
            'source': 'Example News',
            'date': '2 hours ago',
            'position': 1,
          },
        ],
        'credits': 5,
      };

      // Act
      final response = NewsResponse.fromJson(json);

      // Assert
      expect(response, isA<NewsResponse>());
      expect(response.news!.length, equals(1));
      expect(response.news!.first.title, equals('News Article'));
      expect(response.news!.first.link, equals('https://example.com/news'));
      expect(response.news!.first.snippet, equals('This is a news article'));
      expect(response.news!.first.source, equals('Example News'));
      expect(response.news!.first.date, equals('2 hours ago'));
      expect(response.credits, equals(5));
    });

    test('ShoppingResponse deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'searchParameters': {'q': 'smartphones', 'location': 'Boston'},
        'shopping': [
          {
            'title': 'Smartphone',
            'link': 'https://example.com/product',
            'price': '\$999',
            'source': 'Example Store',
            'position': 1,
          },
        ],
        'credits': 5,
      };

      // Act
      final response = ShoppingResponse.fromJson(json);

      // Assert
      expect(response, isA<ShoppingResponse>());
      expect(response.shopping!.length, equals(1));
      expect(response.shopping!.first.title, equals('Smartphone'));
      expect(
        response.shopping!.first.link,
        equals('https://example.com/product'),
      );
      expect(response.shopping!.first.price, equals('\$999'));
      expect(response.shopping!.first.source, equals('Example Store'));
      expect(response.credits, equals(5));
    });

    test('VideosResponse deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'searchParameters': {'q': 'cooking videos', 'location': 'New York'},
        'videos': [
          {
            'title': 'Cooking Video',
            'link': 'https://example.com/video',
            'source': 'Example Channel',
            'thumbnail': 'https://example.com/thumbnail.jpg',
            'position': 1,
          },
        ],
        'credits': 5,
      };

      // Act
      final response = VideosResponse.fromJson(json);

      // Assert
      expect(response, isA<VideosResponse>());
      expect(response.videos!.length, equals(1));
      expect(response.videos!.first.title, equals('Cooking Video'));
      expect(response.videos!.first.link, equals('https://example.com/video'));
      expect(response.videos!.first.source, equals('Example Channel'));
      expect(
        response.videos!.first.thumbnail,
        equals('https://example.com/thumbnail.jpg'),
      );
      expect(response.credits, equals(5));
    });

    test('LensResponse deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'searchParameters': {'imageUrl': 'https://example.com/image.jpg'},
        'lens': [
          {
            'title': 'Lens Result',
            'link': 'https://example.com/result',
            'thumbnail': 'https://example.com/thumbnail.jpg',
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
      expect(response.lens!.length, equals(1));
      expect(response.lens!.first.title, equals('Lens Result'));
      expect(response.lens!.first.link, equals('https://example.com/result'));
      expect(
        response.lens!.first.thumbnail,
        equals('https://example.com/thumbnail.jpg'),
      );
      expect(response.lens!.first.source, equals('Example Source'));
      expect(response.credits, equals(5));
    });

    test('ScholarResponse deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'searchParameters': {'q': 'machine learning'},
        'scholar': [
          {
            'title': 'Research Paper',
            'link': 'https://example.com/paper',
            'snippet': 'This is a research paper',
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
      expect(response.scholar!.length, equals(1));
      expect(response.scholar!.first.title, equals('Research Paper'));
      expect(response.scholar!.first.link, equals('https://example.com/paper'));
      expect(
        response.scholar!.first.snippet,
        equals('This is a research paper'),
      );
      expect(response.scholar!.first.authors, equals(['Author 1', 'Author 2']));
      expect(response.scholar!.first.journal, equals('Example Journal'));
      expect(response.scholar!.first.citations, equals(100));
      expect(response.scholar!.first.year, equals(2023));
      expect(response.credits, equals(5));
    });

    test('PatentsResponse deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'searchParameters': {'q': 'solar energy'},
        'patents': [
          {
            'title': 'Solar Energy Patent',
            'link': 'https://example.com/patent',
            'snippet': 'This is a patent description',
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
      expect(response.patents!.length, equals(1));
      expect(response.patents!.first.title, equals('Solar Energy Patent'));
      expect(
        response.patents!.first.link,
        equals('https://example.com/patent'),
      );
      expect(
        response.patents!.first.snippet,
        equals('This is a patent description'),
      );
      expect(response.patents!.first.patentNumber, equals('US12345678'));
      expect(response.patents!.first.assignee, equals('Example Company'));
      expect(
        response.patents!.first.inventors,
        equals(['Inventor 1', 'Inventor 2']),
      );
      expect(response.patents!.first.filingDate, equals('2022-01-01'));
      expect(response.credits, equals(5));
    });

    test('ReviewsResponse deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'searchParameters': {'q': 'hotel reviews'},
        'reviews': [
          {
            'title': 'Hotel Review',
            'link': 'https://example.com/review',
            'snippet': 'This is a hotel review',
            'rating': 4.5,
            'position': 1,
          },
        ],
        'credits': 5,
      };

      // Act
      final response = ReviewsResponse.fromJson(json);

      // Assert
      expect(response, isA<ReviewsResponse>());
      expect(response.reviews!.length, equals(1));
      expect(response.reviews!.first.title, equals('Hotel Review'));
      expect(
        response.reviews!.first.link,
        equals('https://example.com/review'),
      );
      expect(response.reviews!.first.snippet, equals('This is a hotel review'));
      expect(response.reviews!.first.rating, equals(4.5));
      expect(response.credits, equals(5));
    });

    test('AutocompleteResponse deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'searchParameters': {'q': 'how to'},
        'suggestions': [
          {'suggestion': 'how to cook pasta'},
          {'suggestion': 'how to learn programming'},
        ],
        'credits': 1,
      };

      // Act
      final response = AutocompleteResponse.fromJson(json);

      // Assert
      expect(response, isA<AutocompleteResponse>());
      expect(response.suggestions.length, equals(2));
      expect(
        response.suggestions.first.suggestion,
        equals('how to cook pasta'),
      );
      expect(
        response.suggestions.last.suggestion,
        equals('how to learn programming'),
      );
      expect(response.credits, equals(1));
    });
  });
}
