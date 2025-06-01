import 'package:flutter_serper/flutter_serper.dart';
import 'package:test/test.dart';

void main() {
  group('Response Models - Tests', () {
    test('MapsResponse deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'searchParameters': {'q': 'coffee shops', 'location': 'San Francisco'},
        'places': [
          {
            'title': 'Coffee Shop',
            'cid': '12345',
            'address': '123 Main St, San Francisco, CA',
            'rating': 4.5,
            'ratingCount': 100,
            'priceLevel': '\$\$',
            'type': 'Coffee Shop',
            'types': ['Cafe', 'Bakery'],
            'phoneNumber': '(123) 456-7890',
            'website': 'https://example.com',
            'openingHours': {'Monday': '8am-5pm', 'Tuesday': '8am-5pm'},
            'description': 'A cozy coffee shop.',
            'thumbnailUrl': 'https://example.com/thumb.jpg',
            'bookingLinks': ['https://booking.com/coffee'],
            'fid': 'fid123',
            'latitude': 37.7749,
            'longitude': -122.4194,
            'placeId': 'placeid123',
            'position': 1,
          },
        ],
        'credits': 5,
      };

      // Act
      final response = MapsResponse.fromJson(json);

      // Assert
      expect(response, isA<MapsResponse>());
      expect(response.places.length, equals(1));
      final place = response.places.first;
      expect(place.title, equals('Coffee Shop'));
      expect(place.cid, equals('12345'));
      expect(place.address, equals('123 Main St, San Francisco, CA'));
      expect(place.rating, equals(4.5));
      expect(place.ratingCount, equals(100));
      expect(place.priceLevel, equals('\$\$'));
      expect(place.type, equals('Coffee Shop'));
      expect(place.types, equals(['Cafe', 'Bakery']));
      expect(place.phoneNumber, equals('(123) 456-7890'));
      expect(place.website, equals('https://example.com'));
      expect(
        place.openingHours,
        equals({'Monday': '8am-5pm', 'Tuesday': '8am-5pm'}),
      );
      expect(place.description, equals('A cozy coffee shop.'));
      expect(place.thumbnailUrl, equals('https://example.com/thumb.jpg'));
      expect(place.bookingLinks, equals(['https://booking.com/coffee']));
      expect(place.fid, equals('fid123'));
      expect(place.latitude, equals(37.7749));
      expect(place.longitude, equals(-122.4194));
      expect(place.placeId, equals('placeid123'));
      expect(place.position, equals(1));
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
            'latitude': 41.8781,
            'longitude': -87.6298,
            'phoneNumber': '(312) 555-1234',
            'rating': 4.2,
            'reviewCount': 80,
            'website': 'https://restaurant.com',
            'category': 'Fine Dining',
            'priceLevel': '\$\$',
            'openingHours': ['Mon-Fri 9am-9pm', 'Sat-Sun 10am-8pm'],
            'cid': 'cid987',
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
      final place = response.places.first;
      expect(place.title, equals('Restaurant'));
      expect(place.address, equals('123 Main St, Chicago, IL'));
      expect(place.latitude, equals(41.8781));
      expect(place.longitude, equals(-87.6298));
      expect(place.phoneNumber, equals('(312) 555-1234'));
      expect(place.rating, equals(4.2));
      expect(place.reviewCount, equals(80));
      expect(place.website, equals('https://restaurant.com'));
      expect(place.type, equals('Fine Dining'));
      expect(place.priceLevel, equals('\$\$'));
      expect(
        place.openingHours,
        equals(['Mon-Fri 9am-9pm', 'Sat-Sun 10am-8pm']),
      );
      expect(place.cid, equals('cid987'));
      expect(place.position, equals(1));
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
            'date': '2024-01-01',
            'rating': 4.8,
            'ratingCount': 200,
            'imageUrl': 'https://flutter.dev/logo.png',
            'position': 1,
            'sitelinks': [
              {'title': 'Docs', 'link': 'https://flutter.dev/docs'},
              {'title': 'Install', 'link': 'https://flutter.dev/install'},
            ],
          },
        ],
        'credits': 5,
      };

      // Act
      final response = SearchResponse.fromJson(json);

      // Assert
      expect(response, isA<SearchResponse>());
      expect(response.organic.length, equals(1));
      final organic = response.organic.first;
      expect(organic.title, equals('Flutter - Build apps for any screen'));
      expect(organic.link, equals('https://flutter.dev'));
      expect(
        organic.snippet,
        equals('Flutter is Google\'s UI toolkit for crafting beautiful...'),
      );
      expect(organic.date, equals('2024-01-01'));
      expect(organic.rating, equals(4.8));
      expect(organic.ratingCount, equals(200));
      expect(organic.imageUrl, equals('https://flutter.dev/logo.png'));
      expect(organic.position, equals(1));
      expect(organic.sitelinks?.length, equals(2));
      expect(organic.sitelinks?.first.title, equals('Docs'));
      expect(organic.sitelinks?.first.link, equals('https://flutter.dev/docs'));
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
        'searchParameters': {
          'q': 'world news',
          'location': 'London',
        }, // from _test
        'news': [
          {
            'title': 'News Article', // from _test
            'link': 'https://example.com/news',
            'snippet': 'This is a news article', // from _test
            'date': '2 hours ago', // from _test
            'source': 'Example News', // from _test
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
      expect(response.news.first.title, equals('News Article'));
      expect(response.news.first.link, equals('https://example.com/news'));
      expect(response.news.first.snippet, equals('This is a news article'));
      expect(response.news.first.date, equals('2 hours ago'));
      expect(response.news.first.source, equals('Example News'));
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
            'snippet': 'A great cooking video',
            'imageUrl': 'https://example.com/thumbnail.jpg',
            'duration': '10:30',
            'source': 'Example Channel',
            'channel': 'Chef John',
            'date': '2024-01-01',
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
      expect(response.videos.first.title, equals('Cooking Video'));
      expect(response.videos.first.link, equals('https://example.com/video'));
      expect(
        response.videos.first.imageUrl,
        equals('https://example.com/thumbnail.jpg'),
      );
      expect(response.videos.first.duration, equals('10:30'));
      expect(response.videos.first.source, equals('Example Channel'));
      expect(response.videos.first.snippet, equals('A great cooking video'));
      expect(
        response.videos.first.imageUrl,
        equals('https://example.com/thumbnail.jpg'),
      );
      expect(response.videos.first.duration, equals('10:30'));
      expect(response.videos.first.channel, equals('Chef John'));
      expect(response.videos.first.date, equals('2024-01-01'));
      expect(response.videos.first.position, equals(1));
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
            'delivery': 'Ships in 2 days',
            'imageUrl': 'https://example.com/product.jpg',
            'rating': 4.7,
            'ratingCount': 50,
            'offers': '10+',
            'productId': 'prod123',
          },
        ],
        'credits': 5,
      };

      // Act
      final response = ShoppingResponse.fromJson(json);

      // Assert
      expect(response, isA<ShoppingResponse>());
      expect(response.shopping.length, equals(1));
      expect(response.shopping.first.title, equals('Smartphone'));
      expect(
        response.shopping.first.link,
        equals('https://example.com/product'),
      );
      expect(response.shopping.first.price, equals('\$999'));
      expect(response.shopping.first.source, equals('Example Store'));
      expect(response.shopping.first.delivery, equals('Ships in 2 days'));
      expect(
        response.shopping.first.imageUrl,
        equals('https://example.com/product.jpg'),
      );
      expect(response.shopping.first.rating, equals(4.7));
      expect(response.shopping.first.ratingCount, equals(50));
      expect(response.shopping.first.offers, equals('10+'));
      expect(response.shopping.first.productId, equals('prod123'));
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
            'imageUrl': 'https://example.com/image.jpg',
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
        response.organic.first.imageUrl,
        equals('https://example.com/image.jpg'),
      );
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
            'snippet': 'This is a research paper',
            'publicationInfo': 'Example Journal, 2023',
            'year': 2023,
            'citedBy': 100,
            'pdfUrl': 'https://example.com/paper.pdf',
            'htmlUrl': 'https://example.com/paper.html',
            'id': 'paper1',
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
      expect(scholarResult.snippet, equals('This is a research paper'));
      expect(scholarResult.publicationInfo, equals('Example Journal, 2023'));
      expect(scholarResult.year, equals(2023));
      expect(scholarResult.citedBy, equals(100));
      expect(scholarResult.pdfUrl, equals('https://example.com/paper.pdf'));
      expect(scholarResult.id, equals('paper1'));
      expect(scholarResult.htmlUrl, equals('https://example.com/paper.html'));
      expect(response.credits, equals(5));
    });

    test('PatentsResponse deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'searchParameters': {'q': 'solar energy'}, // from _test
        'organic': [
          {
            'title': 'Solar Energy Patent',
            'link': 'https://example.com/patent',
            'snippet': 'This is a patent description', // from _test
            'publicationNumber': 'US12345678',
            'assignee': 'Example Company',
            'inventor': 'Inventor 1',
            'filingDate': '2022-01-01',
            'priorityDate': '2021-12-01', // from _test
            'grantDate': '2023-01-01', // from fixed
            'publicationDate': '2022-06-01',
            'language': 'en',
            'thumbnailUrl': 'https://example.com/thumb.jpg', // from _test
            'pdfUrl': 'https://example.com/patent.pdf',
            'figures': [
              {
                'imageUrl': 'https://example.com/figure1.jpg',
                'thumbnailUrl': 'https://example.com/figure1_thumb.jpg',
              },
              {
                'imageUrl': 'https://example.com/figure2.jpg', // from fixed
                'thumbnailUrl':
                    'https://example.com/figure2_thumb.jpg', // from fixed
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
      expect(patent.grantDate, equals('2023-01-01'));
      expect(patent.publicationDate, equals('2022-06-01'));
      expect(patent.language, equals('en'));
      expect(patent.thumbnailUrl, equals('https://example.com/thumb.jpg'));
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
          'runtimeType': 'withCid',
        },
        'reviews': [
          {
            'rating': 4.5,
            'date': '2023-01-01',
            'isoDate': '2023-01-01T00:00:00Z',
            'snippet': 'This is a hotel review',
            'likes': 10,
            'user': {
              'name': 'Jane Doe',
              'thumbnail': 'https://example.com/user.jpg',
              'link': 'https://example.com/user/janedoe',
              'reviews': 5,
              'photos': 2,
            },
            'response': {
              'date': '2023-01-02',
              'isoDate': '2023-01-02T00:00:00Z',
              'snippet': 'Thank you for your review!',
            },
            'id': 'review1',
          },
        ],
        'topics': [
          {'name': 'Cleanliness', 'reviews': 12, 'id': 'topic1'},
          {'name': 'Location', 'reviews': 8, 'id': 'topic2'},
        ],
        'credits': 5,
      };

      // Act
      final response = ReviewsResponse.fromJson(json);

      // Assert
      expect(response, isA<ReviewsResponse>());
      expect(response.reviews.length, equals(1));
      final review = response.reviews.first;
      expect(review.rating, equals(4.5));
      expect(review.date, equals('2023-01-01'));
      expect(review.isoDate, equals('2023-01-01T00:00:00Z'));
      expect(review.snippet, equals('This is a hotel review'));
      expect(review.likes, equals(10));
      expect(review.user.name, equals('Jane Doe'));
      expect(review.user.thumbnail, equals('https://example.com/user.jpg'));
      expect(review.user.link, equals('https://example.com/user/janedoe'));
      expect(review.user.reviews, equals(5));
      expect(review.user.photos, equals(2));
      expect(review.response?.date, equals('2023-01-02'));
      expect(review.response?.isoDate, equals('2023-01-02T00:00:00Z'));
      expect(review.response?.snippet, equals('Thank you for your review!'));
      expect(review.id, equals('review1'));
      expect(response.credits, equals(5));
    });

    test('AutocompleteResponse deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'searchParameters': {'q': 'how to'}, // from _test
        'suggestions': [
          {'value': 'how to cook pasta'}, // from _test
          {'value': 'how to learn programming'}, // from _test
        ],
        'credits': 1, // from _test
      };

      // Act
      final response = AutocompleteResponse.fromJson(json);

      // Assert
      expect(response, isA<AutocompleteResponse>());
      expect(response.suggestions.length, equals(2));
      expect(response.suggestions.first.value, equals('how to cook pasta'));
      expect(
        response.suggestions.last.value,
        equals('how to learn programming'),
      );
      expect(response.credits, equals(1));
    });

    test('WebpageResponse deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'text': 'This is the webpage content',
        'markdown': '# Webpage Content\n\nThis is the webpage content',
        'metadata': {'title': 'Example Website'},
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
      expect(
        response.results.metadata,
        containsPair('title', 'Example Website'),
      );
      expect(response.results.credits, equals(5));
    });
  });
}
