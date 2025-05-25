import 'package:flutter_serper/flutter_serper.dart';
import 'package:flutter_serper/src/models/results/results.dart';
import 'package:test/test.dart';

void main() {
  group('Result Models Tests', () {
    test('Organic result deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'title': 'Test Result',
        'link': 'https://example.com',
        'snippet': 'This is a test result',
        'position': 1,
        'date': '2 hours ago',
        'imageUrl': 'https://example.com/image.jpg',
        'sitelinks': [
          // Corrected sitelinks data
          {'title': 'Sublink 1', 'link': 'https://example.com/sublink1'},
          {'title': 'Sublink 2', 'link': 'https://example.com/sublink2'},
        ],
        'rating': 4.2, // Added
        'ratingCount': 88, // Added
      };

      // Act
      final result = OrganicResult.fromJson(json);

      // Assert
      expect(result.title, equals('Test Result'));
      expect(result.link, equals('https://example.com'));
      expect(result.snippet, equals('This is a test result'));
      expect(result.position, equals(1));
      expect(result.date, equals('2 hours ago'));
      expect(result.imageUrl, equals('https://example.com/image.jpg'));
      expect(result.sitelinks!.length, equals(2));
      // Assuming sitelinks are List<Map<String, dynamic>> as per results.g.dart for OrganicResult
      expect(
        (result.sitelinks!.first as Map<String, dynamic>)['title'],
        equals('Sublink 1'),
      );
      expect(
        (result.sitelinks!.first as Map<String, dynamic>)['link'],
        equals('https://example.com/sublink1'),
      );
      expect(
        (result.sitelinks![1] as Map<String, dynamic>)['title'],
        equals('Sublink 2'),
      );
      expect(
        (result.sitelinks![1] as Map<String, dynamic>)['link'],
        equals('https://example.com/sublink2'),
      );
      expect(result.rating, equals(4.2)); // Added
      expect(result.ratingCount, equals(88)); // Added
    });

    test('Image result deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'title': 'Mountain View',
        'imageUrl': 'https://example.com/image.jpg',
        // Removed imageWidth, imageHeight
        'source': 'Example.com',
        'sourceUrl': 'https://example.com',
        'position': 1,
        'thumbnailUrl': 'https://example.com/image_thumb.jpg', // Added
        'price': '\$15', // Corrected escaping
        'domain': 'images.example.com', // Added
      };

      // Act
      final result = ImageResult.fromJson(json);

      // Assert
      expect(result.title, equals('Mountain View'));
      expect(result.imageUrl, equals('https://example.com/image.jpg'));
      // Removed imageWidth, imageHeight assertions
      expect(result.source, equals('Example.com'));
      expect(result.sourceUrl, equals('https://example.com'));
      expect(result.position, equals(1));
      expect(
        result.thumbnailUrl,
        equals('https://example.com/image_thumb.jpg'),
      ); // Added
      expect(result.price, equals('\$15')); // Corrected escaping
      expect(result.domain, equals('images.example.com')); // Added
    });

    test('Knowledge Graph result deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'title': 'Flutter',
        'type': 'Software',
        'imageUrl': 'https://example.com/flutter.jpg',
        'description': 'Flutter is an open-source UI framework',
        'descriptionSource': 'Wikipedia',
        'descriptionLink': 'https://en.wikipedia.org/wiki/Flutter',
        'attributes': {'Developer': 'Google', 'Initial release': 'May 2017'},
      };

      // Act
      final result = KnowledgeGraphResult.fromJson(json);

      // Assert
      expect(result.title, equals('Flutter'));
      expect(result.type, equals('Software'));
      expect(result.imageUrl, equals('https://example.com/flutter.jpg'));
      expect(
        result.description,
        equals('Flutter is an open-source UI framework'),
      );
      expect(result.descriptionSource, equals('Wikipedia'));
      expect(
        result.descriptionLink,
        equals('https://en.wikipedia.org/wiki/Flutter'),
      );
      expect(result.attributes!['Developer'], equals('Google'));
      expect(result.attributes!['Initial release'], equals('May 2017'));
    });

    test('People Also Ask result deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'question': 'What is Flutter?',
        'snippet':
            'Flutter is an open-source UI framework', // Renamed from answer
        'title': 'Flutter - Build apps for any screen',
        'link': 'https://flutter.dev',
        // Removed date as it's not in the model
      };

      // Act
      final result = PeopleAlsoAskResult.fromJson(json);

      // Assert
      expect(result.question, equals('What is Flutter?'));
      expect(
        result.snippet,
        equals('Flutter is an open-source UI framework'),
      ); // Renamed
      expect(result.title, equals('Flutter - Build apps for any screen'));
      expect(result.link, equals('https://flutter.dev'));
      // Removed date assertion
    });

    test('Related Search result deserializes from JSON correctly', () {
      // Arrange
      final json = {'query': 'flutter vs react native'};

      // Act
      final result = RelatedSearchResult.fromJson(json);

      // Assert
      expect(result.query, equals('flutter vs react native'));
    });

    test('Video result deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'title': 'Flutter Tutorial',
        'link': 'https://example.com/video',
        'thumbnailUrl': 'https://example.com/thumbnail.jpg',
        'source': 'YouTube',
        'channelLink': 'https://youtube.com/channel/example',
        'duration': '10:30',
        'viewCount': 10000,
        'position': 1,
        'snippet': 'Learn Flutter basics', // Added
        'date': '2023-10-26', // Added
      };

      // Act
      final result = VideoResult.fromJson(json);

      // Assert
      expect(result.title, equals('Flutter Tutorial'));
      expect(result.link, equals('https://example.com/video'));
      expect(result.thumbnailUrl, equals('https://example.com/thumbnail.jpg'));
      expect(result.source, equals('YouTube'));
      expect(result.channelLink, equals('https://youtube.com/channel/example'));
      expect(result.duration, equals('10:30'));
      expect(result.viewCount, equals(10000));
      expect(result.position, equals(1));
      expect(result.snippet, equals('Learn Flutter basics')); // Added
      expect(result.date, equals('2023-10-26')); // Added
    });

    test('News result deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'title': 'Latest Tech News',
        'link': 'https://example.com/news',
        'snippet': 'The latest in technology...',
        'source': 'Tech News',
        'date': '2023-01-01',
        'imageUrl': 'https://example.com/news.jpg',
        'position': 1,
      };

      // Act
      final result = NewsResult.fromJson(json);

      // Assert
      expect(result.title, equals('Latest Tech News'));
      expect(result.link, equals('https://example.com/news'));
      expect(result.snippet, equals('The latest in technology...'));
      expect(result.source, equals('Tech News'));
      expect(result.date, equals('2023-01-01'));
      expect(result.imageUrl, equals('https://example.com/news.jpg'));
      expect(result.position, equals(1));
    });

    test('Top Stories result deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'title': 'Breaking News',
        'link': 'https://example.com/breaking',
        'source': 'News Source',
        'date': '1 hour ago',
        'imageUrl': 'https://example.com/breaking.jpg',
        // Removed position
        'snippet': 'A breaking news snippet', // Added
      };

      // Act
      final result = TopStoriesResult.fromJson(json);

      // Assert
      expect(result.title, equals('Breaking News'));
      expect(result.link, equals('https://example.com/breaking'));
      expect(result.source, equals('News Source'));
      expect(result.date, equals('1 hour ago'));
      expect(result.imageUrl, equals('https://example.com/breaking.jpg'));
      // Removed position assertion
      expect(result.snippet, equals('A breaking news snippet')); // Added
    });

    test('Shopping result deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'title': 'Smartphone',
        'link': 'https://example.com/product',
        'price': '\$999', // Corrected escaping
        'source': 'Example Store',
        'imageUrl': 'https://example.com/product.jpg',
        // Removed rating, reviewCount
        'position': 1,
        'delivery': 'Ships in 1-2 days', // Added
      };

      // Act
      final result = ShoppingResult.fromJson(json);

      // Assert
      expect(result.title, equals('Smartphone'));
      expect(result.link, equals('https://example.com/product'));
      expect(result.price, equals('\$999')); // Corrected escaping
      expect(result.source, equals('Example Store'));
      expect(result.imageUrl, equals('https://example.com/product.jpg'));
      // Removed rating, reviewCount assertions
      expect(result.position, equals(1));
      expect(result.delivery, equals('Ships in 1-2 days')); // Added
    });

    test('Autocomplete Suggestion deserializes from JSON correctly', () {
      // Arrange
      final json = {'value': 'flutter tutorial'};

      // Act
      final result = AutocompleteSuggestion.fromJson(json);

      // Assert
      expect(result.value, equals('flutter tutorial'));
    });

    test('Webpage result deserializes from JSON correctly', () {
      // Arrange
      final json = {
        // Corrected to match WebpageResult model
        'text': 'Main content of the webpage.',
        'markdown': '## Webpage Content\\nMain content...',
        'metadata': {'keywords': 'flutter, dart, mobile'},
        'credits': 2,
      };

      // Act
      final result = WebpageResult.fromJson(json);

      // Assert
      expect(result.text, equals('Main content of the webpage.'));
      expect(result.markdown, equals('## Webpage Content\\nMain content...'));
      expect(result.metadata!['keywords'], equals('flutter, dart, mobile'));
      expect(result.credits, equals(2));
      // Removed title, link, snippet, favicon, position assertions
    });

    test('Place result deserializes from JSON correctly', () {
      // Arrange
      final Map<String, dynamic> placeResultJsonFixed = {
        'title': 'Test Place',
        'address': '123 Test St',
        'phone': '555-1234',
        'website': 'http://example.com/place',
        'rating': 4.0,
        'reviewCount': 50,
        'type': 'Restaurant',
        'priceLevel': '\$\$', // Corrected escaping for priceLevel
        'openingHours': ['Mon: 9-5', 'Tue: 9-5'],
        'cid': 'test_cid',
        'position': 1,
        // Fields not in model: latitude, longitude, category, imageUrl, placeId, userReviewCount, description
      };

      // Act
      final result = PlaceResult.fromJson(placeResultJsonFixed);

      // Assert
      expect(result.title, equals('Test Place'));
      expect(result.address, equals('123 Test St'));
      expect(result.phone, equals('555-1234'));
      expect(result.website, equals('http://example.com/place'));
      expect(result.rating, equals(4.0));
      expect(result.reviewCount, equals(50));
      expect(result.type, equals('Restaurant'));
      expect(result.priceLevel, equals('\$\$')); // Corrected escaping
      expect(result.openingHours, equals(['Mon: 9-5', 'Tue: 9-5']));
      expect(result.cid, equals('test_cid'));
      expect(result.position, equals(1));
    });

    test('Patent result deserializes from JSON correctly', () {
      // Arrange
      final Map<String, dynamic> patentResultJsonFixed = {
        'title': 'Test Patent',
        'link': 'http://example.com/patent',
        'snippet': 'This is a test patent abstract.',
        'priorityDate': '2022-01-01',
        'filingDate': '2022-02-01',
        'grantDate': '2023-01-01',
        'publicationDate': '2022-06-01',
        'inventor': 'John Doe',
        'assignee': 'Test Corp',
        'publicationNumber': 'US12345',
        'language': 'en',
        'thumbnailUrl': 'http://example.com/patent_thumb.jpg',
        'pdfUrl': 'http://example.com/patent.pdf',
        'figures': [
          {
            'imageUrl': 'http://example.com/figure1.jpg',
            'thumbnailUrl': 'http://example.com/figure1_thumb.jpg',
          },
        ],
        'position': 1,
        // Fields not in model: source, date, patentOffice, relatedPatents, citedBy (as complex object or direct int), applicationNumber
      };

      // Act
      final result = PatentResult.fromJson(patentResultJsonFixed);

      // Assert
      expect(result.title, equals('Test Patent'));
      expect(result.link, equals('http://example.com/patent'));
      expect(result.snippet, equals('This is a test patent abstract.'));
      // ... assert other fields from patentResultJsonFixed
      expect(result.inventor, equals('John Doe'));
      expect(result.position, equals(1));
      expect(
        result.figures!.first.imageUrl,
        equals('http://example.com/figure1.jpg'),
      );
    });

    test('Scholar result deserializes from JSON correctly', () {
      // Arrange
      final Map<String, dynamic> scholarResultJsonFixed = {
        'title': 'Test Scholar Article',
        'link': 'http://example.com/scholar_article',
        'publicationInfo': 'Authors, Journal, Year', // Corrected: is String
        'snippet': 'This is a test scholar article snippet.',
        'year': 2022, // Corrected: is int
        'citedBy': 120, // Corrected: is int
        'pdfUrl': 'http://example.com/scholar.pdf', // Corrected: is String
        'id': 'scholar_id_123',
        // Fields not in model: source, authors (as separate field), journal, volume, issue, pages, publisher, position
      };

      // Act
      final result = ScholarResult.fromJson(scholarResultJsonFixed);

      // Assert
      expect(result.title, equals('Test Scholar Article'));
      expect(result.link, equals('http://example.com/scholar_article'));
      expect(result.publicationInfo, equals('Authors, Journal, Year'));
      // ... assert other fields from scholarResultJsonFixed
      expect(result.year, equals(2022));
      expect(result.citedBy, equals(120));
      expect(result.id, equals('scholar_id_123'));
    });
  });
}
