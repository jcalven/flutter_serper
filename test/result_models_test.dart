import 'package:flutter_serper/src/models/results/results.dart';
import 'package:test/test.dart';

void main() {
  group('Result Models Tests', () {
    test('OrganicResult deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'title': 'Test Result',
        'link': 'https://example.com',
        'snippet': 'This is a test result',
        'position': 1,
        'date': '2 hours ago',
        'imageUrl': 'https://example.com/image.jpg',
        'sitelinks': [
          {'title': 'Sublink 1', 'link': 'https://example.com/sublink1'},
          {'title': 'Sublink 2', 'link': 'https://example.com/sublink2'},
        ],
        'rating': 4.5, // Added based on model
        'ratingCount': 100, // Added based on model
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
      expect(result.rating, equals(4.5)); // Added
      expect(result.ratingCount, equals(100)); // Added
    });

    test('ImageResult deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'title': 'Test Image',
        'imageUrl': 'https://example.com/image.jpg',
        'thumbnailUrl': 'https://example.com/thumbnail.jpg',
        'source': 'Example Source',
        'sourceUrl': 'https://example.com',
        'position': 1,
        'price': '\$10', // Corrected escaping
        'domain': 'example.com', // Added based on model
      };

      // Act
      final result = ImageResult.fromJson(json);

      // Assert
      expect(result.title, equals('Test Image'));
      expect(result.imageUrl, equals('https://example.com/image.jpg'));
      expect(result.thumbnailUrl, equals('https://example.com/thumbnail.jpg'));
      expect(result.source, equals('Example Source'));
      expect(result.sourceUrl, equals('https://example.com'));
      expect(result.position, equals(1));
      expect(result.price, equals('\$10')); // Corrected escaping
      expect(result.domain, equals('example.com')); // Added
      // Removed imageWidth, imageHeight as they are not in the model
    });

    test('KnowledgeGraphResult deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'title': 'Test Entity',
        'type': 'Person',
        'description': 'This is a test entity',
        'attributes': {'Born': 'January 1, 1980', 'Occupation': 'Engineer'},
        'imageUrl': 'https://example.com/entity.jpg',
        'descriptionLink': 'https://example.com/desc_link', // Added
        'descriptionSource': 'TestSource', // Added
      };

      // Act
      final result = KnowledgeGraphResult.fromJson(json);

      // Assert
      expect(result.title, equals('Test Entity'));
      expect(result.type, equals('Person'));
      expect(result.description, equals('This is a test entity'));
      expect(result.attributes!['Born'], equals('January 1, 1980'));
      expect(result.attributes!['Occupation'], equals('Engineer'));
      expect(result.imageUrl, equals('https://example.com/entity.jpg'));
      expect(
        result.descriptionLink,
        equals('https://example.com/desc_link'),
      ); // Added
      expect(result.descriptionSource, equals('TestSource')); // Added
    });

    test('PeopleAlsoAskResult deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'question': 'What is a test?',
        'snippet':
            'A test is a procedure to evaluate something.', // Renamed from answer
        'link': 'https://example.com/what-is-a-test',
        'title': 'What is a Test? - Example', // Added based on model
        // Removed position as it's not in the model
      };

      // Act
      final result = PeopleAlsoAskResult.fromJson(json);

      // Assert
      expect(result.question, equals('What is a test?'));
      expect(
        result.snippet, // Renamed from answer
        equals('A test is a procedure to evaluate something.'),
      );
      expect(result.link, equals('https://example.com/what-is-a-test'));
      expect(result.title, equals('What is a Test? - Example')); // Added
      // Removed position assertion
    });

    test('RelatedSearchResult deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'query': 'related test query', // Removed position
      };

      // Act
      final result = RelatedSearchResult.fromJson(json);

      // Assert
      expect(result.query, equals('related test query'));
      // Removed position assertion
    });

    test('VideoResult deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'title': 'Test Video',
        'link': 'https://example.com/video',
        'source': 'Example Channel',
        'thumbnailUrl':
            'https://example.com/thumbnail.jpg', // Renamed from thumbnail
        'position': 1,
        'date': '2 days ago',
        'duration': '10:30',
        'viewCount': 1000000, // Renamed from views and changed to int
        'snippet': 'A test video snippet', // Added
        'channelLink': 'https://example.com/channel', // Added
      };

      // Act
      final result = VideoResult.fromJson(json);

      // Assert
      expect(result.title, equals('Test Video'));
      expect(result.link, equals('https://example.com/video'));
      expect(result.source, equals('Example Channel'));
      expect(
        result.thumbnailUrl,
        equals('https://example.com/thumbnail.jpg'),
      ); // Renamed
      expect(result.position, equals(1));
      expect(result.date, equals('2 days ago'));
      expect(result.duration, equals('10:30'));
      expect(result.viewCount, equals(1000000)); // Renamed
      expect(result.snippet, equals('A test video snippet')); // Added
      expect(
        result.channelLink,
        equals('https://example.com/channel'),
      ); // Added
    });

    test('NewsResult deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'title': 'Test News',
        'link': 'https://example.com/news',
        'snippet': 'This is a test news article',
        'source': 'Example News',
        'date': '2 hours ago',
        'position': 1,
        'imageUrl': 'https://example.com/news-image.jpg',
      };

      // Act
      final result = NewsResult.fromJson(json);

      // Assert
      expect(result.title, equals('Test News'));
      expect(result.link, equals('https://example.com/news'));
      expect(result.snippet, equals('This is a test news article'));
      expect(result.source, equals('Example News'));
      expect(result.date, equals('2 hours ago'));
      expect(result.position, equals(1));
      expect(result.imageUrl, equals('https://example.com/news-image.jpg'));
    });

    test('TopStoriesResult deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'title': 'Top Story',
        'link': 'https://example.com/top-story',
        'source': 'Example News',
        'date': '1 hour ago',
        // Removed position
        'imageUrl': 'https://example.com/story-image.jpg',
        'snippet': 'This is a top story snippet', // Added based on model
      };

      // Act
      final result = TopStoriesResult.fromJson(json);

      // Assert
      expect(result.title, equals('Top Story'));
      expect(result.link, equals('https://example.com/top-story'));
      expect(result.source, equals('Example News'));
      expect(result.date, equals('1 hour ago'));
      // Removed position assertion
      expect(result.imageUrl, equals('https://example.com/story-image.jpg'));
      expect(result.snippet, equals('This is a top story snippet')); // Added
    });

    test('ShoppingResult deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'title': 'Test Product',
        'link': 'https://example.com/product',
        'price': '\$99.99', // Corrected escaping
        'source': 'Example Store',
        'position': 1,
        // Removed rating, reviewCount
        'imageUrl': 'https://example.com/product-image.jpg',
        'delivery': 'Usually ships in 2 days', // Added based on model
      };

      // Act
      final result = ShoppingResult.fromJson(json);

      // Assert
      expect(result.title, equals('Test Product'));
      expect(result.link, equals('https://example.com/product'));
      expect(result.price, equals('\$99.99')); // Corrected escaping
      expect(result.source, equals('Example Store'));
      expect(result.position, equals(1));
      // Removed rating, reviewCount assertions
      expect(result.imageUrl, equals('https://example.com/product-image.jpg'));
      expect(result.delivery, equals('Usually ships in 2 days')); // Added
    });

    test('AutocompleteSuggestion deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'value': 'test suggestion', // Renamed from suggestion
      };

      // Act
      final result = AutocompleteSuggestion.fromJson(json);

      // Assert
      expect(result.value, equals('test suggestion')); // Renamed
    });

    test('WebpageResult deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'text': 'This is the extracted text content.',
        'markdown': '# Example Page\\n\\nThis is the extracted text content.',
        'metadata': {'author': 'Test Author'},
        'credits': 1,
      };

      // Act
      final result = WebpageResult.fromJson(json);

      // Assert
      expect(result.text, equals('This is the extracted text content.'));
      expect(
        result.markdown,
        equals('# Example Page\\n\\nThis is the extracted text content.'),
      );
      expect(result.metadata!['author'], equals('Test Author'));
      expect(result.credits, equals(1));
      // Removed url, title, links assertions
    });
  });

  group('PlaceResult', () {
    final Map<String, dynamic> placeResultJson = {
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
    };

    test('fromJson', () {
      final result = PlaceResult.fromJson(placeResultJson);
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

    test('toJson', () {
      final result = PlaceResult.fromJson(placeResultJson);
      final json = result.toJson();
      expect(json['title'], equals('Test Place'));
      expect(json['address'], equals('123 Test St'));
      expect(json['phone'], equals('555-1234'));
      expect(json['website'], equals('http://example.com/place'));
      expect(json['rating'], equals(4.0));
      expect(json['reviewCount'], equals(50));
      expect(json['type'], equals('Restaurant'));
      expect(json['priceLevel'], equals('\$\$')); // Corrected escaping
      expect(json['openingHours'], equals(['Mon: 9-5', 'Tue: 9-5']));
      expect(json['cid'], equals('test_cid'));
      expect(json['position'], equals(1));
    });
  });

  group('PatentResult', () {
    final Map<String, dynamic> patentResultJson = {
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
      // Fields not in model: source, date, patentOffice, relatedPatents, citedBy (as a complex object or direct int), applicationNumber
    };

    test('fromJson', () {
      final result = PatentResult.fromJson(patentResultJson);
      expect(result.title, equals('Test Patent'));
      expect(result.link, equals('http://example.com/patent'));
      expect(result.snippet, equals('This is a test patent abstract.'));
      expect(result.priorityDate, equals('2022-01-01'));
      expect(result.filingDate, equals('2022-02-01'));
      expect(result.grantDate, equals('2023-01-01'));
      expect(result.publicationDate, equals('2022-06-01'));
      expect(result.inventor, equals('John Doe'));
      expect(result.assignee, equals('Test Corp'));
      expect(result.publicationNumber, equals('US12345'));
      expect(result.language, equals('en'));
      expect(
        result.thumbnailUrl,
        equals('http://example.com/patent_thumb.jpg'),
      );
      expect(result.pdfUrl, equals('http://example.com/patent.pdf'));
      expect(
        result.figures!.first.imageUrl,
        equals('http://example.com/figure1.jpg'),
      );
      expect(result.position, equals(1));
    });

    test('toJson', () {
      final result = PatentResult.fromJson(patentResultJson);
      final json = result.toJson();
      expect(json['title'], equals('Test Patent'));
      // ... other assertions
      expect(json['snippet'], equals('This is a test patent abstract.'));
      expect(json['position'], equals(1));
    });
  });

  group('ScholarResult', () {
    final Map<String, dynamic> scholarResultJson = {
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

    test('fromJson', () {
      final result = ScholarResult.fromJson(scholarResultJson);
      expect(result.title, equals('Test Scholar Article'));
      expect(result.link, equals('http://example.com/scholar_article'));
      expect(result.publicationInfo, equals('Authors, Journal, Year'));
      expect(result.snippet, equals('This is a test scholar article snippet.'));
      expect(result.year, equals(2022));
      expect(result.citedBy, equals(120));
      expect(result.pdfUrl, equals('http://example.com/scholar.pdf'));
      expect(result.id, equals('scholar_id_123'));
    });

    test('toJson', () {
      final result = ScholarResult.fromJson(scholarResultJson);
      final json = result.toJson();
      expect(json['title'], equals('Test Scholar Article'));
      // ... other assertions
      expect(json['publicationInfo'], equals('Authors, Journal, Year'));
      expect(json['year'], equals(2022));
      expect(json['citedBy'], equals(120));
    });
  });
}
