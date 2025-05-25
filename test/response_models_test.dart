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
          'cid': '12345', // Added missing field
          'priceLevel': '\$\$', // Added missing field
          'type': 'Coffee Shop', // Added missing field
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
          // Changed 'organic' back to 'places'
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
      expect(
        response.places.length,
        equals(1),
      ); // Changed 'organic' to 'places'
      expect(
        response.places.first.title,
        equals('Restaurant'),
      ); // Changed 'organic' to 'places'
      expect(
        response.places.first.address, // Changed 'organic' to 'places'
        equals('123 Main St, Chicago, IL'),
      );
      expect(
        response.places.first.rating,
        equals(4.2),
      ); // Changed 'organic' to 'places'
      expect(
        response.places.first.reviewCount,
        equals(80),
      ); // Changed 'organic' to 'places'
      expect(response.credits, equals(5));
    });

    test('NewsResponse deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'searchParameters': {'q': 'world news', 'location': 'London'},
        'news': [
          // Changed 'organic' back to 'news'
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
      expect(response.news.length, equals(1)); // Changed 'organic' to 'news'
      expect(
        response.news.first.title,
        equals('News Article'),
      ); // Changed 'organic' to 'news'
      expect(
        response.news.first.link,
        equals('https://example.com/news'),
      ); // Changed 'organic' to 'news'
      expect(
        response.news.first.snippet,
        equals('This is a news article'),
      ); // Changed 'organic' to 'news'
      expect(
        response.news.first.source,
        equals('Example News'),
      ); // Changed 'organic' to 'news'
      expect(
        response.news.first.date,
        equals('2 hours ago'),
      ); // Changed 'organic' to 'news'
      expect(response.credits, equals(5));
    });

    test('ShoppingResponse deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'searchParameters': {'q': 'smartphones', 'location': 'Boston'},
        'shopping': [
          // Changed 'organic' back to 'shopping'
          {
            'title': 'Smartphone',
            'link': 'https://example.com/product',
            'price': '\$999', // Corrected price string
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
      expect(
        response.shopping.length,
        equals(1),
      ); // Changed 'organic' to 'shopping'
      expect(
        response.shopping.first.title,
        equals('Smartphone'),
      ); // Changed 'organic' to 'shopping'
      expect(
        response.shopping.first.link, // Changed 'organic' to 'shopping'
        equals('https://example.com/product'),
      );
      expect(
        response.shopping.first.price,
        equals('\$999'),
      ); // Changed 'organic' to 'shopping' and corrected expected price
      expect(
        response.shopping.first.source,
        equals('Example Store'),
      ); // Changed 'organic' to 'shopping'
      expect(response.credits, equals(5));
    });

    test('VideosResponse deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'searchParameters': {'q': 'cooking videos', 'location': 'New York'},
        'videos': [
          // Changed 'organic' back to 'videos'
          {
            'title': 'Cooking Video',
            'link': 'https://example.com/video',
            'source': 'Example Channel',
            'thumbnailUrl':
                'https://example.com/thumbnail.jpg', // Field name is correct
            'position': 1,
          },
        ],
        'credits': 5,
      };

      // Act
      final response = VideosResponse.fromJson(json);

      // Assert
      expect(response, isA<VideosResponse>());
      expect(
        response.videos.length,
        equals(1),
      ); // Changed 'organic' to 'videos'
      expect(
        response.videos.first.title,
        equals('Cooking Video'),
      ); // Changed 'organic' to 'videos'
      expect(
        response.videos.first.link,
        equals('https://example.com/video'),
      ); // Changed 'organic' to 'videos'
      expect(
        response.videos.first.source,
        equals('Example Channel'),
      ); // Changed 'organic' to 'videos'
      expect(
        response.videos.first.thumbnailUrl, // Changed 'organic' to 'videos'
        equals('https://example.com/thumbnail.jpg'),
      );
      expect(response.credits, equals(5));
    });

    test('LensResponse deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'searchParameters': {'url': 'https://example.com/image.jpg'},
        'organic': [
          {
            'title': 'Lens Result',
            'link': 'https://example.com/result',
            'thumbnailUrl': 'https://example.com/thumbnail.jpg',
            'imageUrl': 'https://example.com/image.jpg',
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
      expect(
        response.organic.first.imageUrl,
        equals('https://example.com/image.jpg'),
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
            'snippet': 'This is a research paper',
            'publicationInfo': 'Example Journal, 2023',
            'citedBy': 100,
            'pdfUrl': 'https://example.com/paper.pdf',
            'id': 'paper1',
            'position': 1,
            'year': 2023, // Added missing field
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
        equals('This is a research paper'),
      );
      expect(
        response.organic.first.publicationInfo,
        equals('Example Journal, 2023'),
      );
      expect(
        response.organic.first.citedBy,
        equals(100),
      ); // Corrected assertion for citedBy
      expect(
        response.organic.first.pdfUrl,
        equals('https://example.com/paper.pdf'),
      );
      expect(response.organic.first.id, equals('paper1'));
      expect(response.credits, equals(5));
    });

    test('PatentsResponse deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'searchParameters': {'q': 'solar energy'},
        'organic': [
          {
            'title': 'Solar Energy Patent',
            'link': 'https://example.com/patent',
            'snippet': 'This is a patent description',
            'publicationNumber': 'US12345678',
            'assignee': 'Example Company',
            'inventor': 'Inventor 1',
            'filingDate': '2022-01-01',
            'priorityDate': '2021-12-01',
            'publicationDate': '2022-06-01',
            'language': 'en',
            'thumbnailUrl': 'https://example.com/thumb.jpg',
            'pdfUrl': 'https://example.com/patent.pdf',
            'figures': [
              {
                'imageUrl': 'https://example.com/figure1.jpg',
                'thumbnailUrl': 'https://example.com/figure1_thumb.jpg',
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
      expect(patent.snippet, equals('This is a patent description'));
      expect(patent.publicationNumber, equals('US12345678'));
      expect(patent.assignee, equals('Example Company'));
      expect(patent.inventor, equals('Inventor 1'));
      expect(patent.filingDate, equals('2022-01-01'));
      expect(patent.priorityDate, equals('2021-12-01'));
      expect(patent.publicationDate, equals('2022-06-01'));
      expect(patent.language, equals('en'));
      expect(patent.thumbnailUrl, equals('https://example.com/thumb.jpg'));
      expect(patent.pdfUrl, equals('https://example.com/patent.pdf'));
      expect(patent.figures?.length, equals(1));
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
          'cid': '12345', // Added cid
          'runtimeType': 'withCid', // Added runtimeType
        },
        'reviews': [
          {
            // Removed title, link, snippet as they are not part of PlaceReview
            'author': 'Jane Doe', // Added author
            'authorUrl': 'https://example.com/user/janedoe', // Added authorUrl
            'text': 'This is a hotel review', // Added text
            'rating': 4.5,
            'date': '2023-01-01', // Added date
            'id': 'review1', // Added id
            'isLocalGuide': true, // Added isLocalGuide
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
      final review = response.reviews.first;
      expect(review.author, equals('Jane Doe'));
      expect(review.authorUrl, equals('https://example.com/user/janedoe'));
      expect(review.text, equals('This is a hotel review'));
      expect(review.rating, equals(4.5));
      expect(review.date, equals('2023-01-01'));
      expect(review.id, equals('review1'));
      expect(review.isLocalGuide, isTrue);
      expect(review.position, equals(1));
      expect(response.credits, equals(5));
    });

    test('AutocompleteResponse deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'searchParameters': {'q': 'how to'},
        'suggestions': [
          {
            'value': 'how to cook pasta',
          }, // Changed from 'suggestion' to 'value'
          {
            'value': 'how to learn programming',
          }, // Changed from 'suggestion' to 'value'
        ],
        'credits': 1,
      };

      // Act
      final response = AutocompleteResponse.fromJson(json);

      // Assert
      expect(response, isA<AutocompleteResponse>());
      expect(response.suggestions.length, equals(2));
      expect(
        response.suggestions.first.value, // Changed from .suggestion to .value
        equals('how to cook pasta'),
      );
      expect(
        response.suggestions.last.value, // Changed from .suggestion to .value
        equals('how to learn programming'),
      );
      expect(response.credits, equals(1));
    });
  });
}
