import 'package:flutter_serper/flutter_serper.dart';
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
      expect(result.sitelinks!.first['title'], equals('Sublink 1'));
      expect(
        result.sitelinks!.first['link'],
        equals('https://example.com/sublink1'),
      );
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
        'imageWidth': 800,
        'imageHeight': 600,
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
      expect(result.imageWidth, equals(800));
      expect(result.imageHeight, equals(600));
    });

    test('KnowledgeGraphResult deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'title': 'Test Entity',
        'type': 'Person',
        'description': 'This is a test entity',
        'attributes': {'Born': 'January 1, 1980', 'Occupation': 'Engineer'},
        'imageUrl': 'https://example.com/entity.jpg',
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
    });

    test('PeopleAlsoAskResult deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'question': 'What is a test?',
        'answer': 'A test is a procedure to evaluate something.',
        'link': 'https://example.com/what-is-a-test',
        'position': 1,
      };

      // Act
      final result = PeopleAlsoAskResult.fromJson(json);

      // Assert
      expect(result.question, equals('What is a test?'));
      expect(
        result.answer,
        equals('A test is a procedure to evaluate something.'),
      );
      expect(result.link, equals('https://example.com/what-is-a-test'));
      expect(result.position, equals(1));
    });

    test('RelatedSearchResult deserializes from JSON correctly', () {
      // Arrange
      final json = {'query': 'related test query', 'position': 1};

      // Act
      final result = RelatedSearchResult.fromJson(json);

      // Assert
      expect(result.query, equals('related test query'));
      expect(result.position, equals(1));
    });

    test('VideoResult deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'title': 'Test Video',
        'link': 'https://example.com/video',
        'source': 'Example Channel',
        'thumbnail': 'https://example.com/thumbnail.jpg',
        'position': 1,
        'date': '2 days ago',
        'duration': '10:30',
        'views': '1M views',
      };

      // Act
      final result = VideoResult.fromJson(json);

      // Assert
      expect(result.title, equals('Test Video'));
      expect(result.link, equals('https://example.com/video'));
      expect(result.source, equals('Example Channel'));
      expect(result.thumbnail, equals('https://example.com/thumbnail.jpg'));
      expect(result.position, equals(1));
      expect(result.date, equals('2 days ago'));
      expect(result.duration, equals('10:30'));
      expect(result.views, equals('1M views'));
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
        'position': 1,
        'imageUrl': 'https://example.com/story-image.jpg',
      };

      // Act
      final result = TopStoriesResult.fromJson(json);

      // Assert
      expect(result.title, equals('Top Story'));
      expect(result.link, equals('https://example.com/top-story'));
      expect(result.source, equals('Example News'));
      expect(result.date, equals('1 hour ago'));
      expect(result.position, equals(1));
      expect(result.imageUrl, equals('https://example.com/story-image.jpg'));
    });

    test('ShoppingResult deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'title': 'Test Product',
        'link': 'https://example.com/product',
        'price': '\$99.99',
        'source': 'Example Store',
        'position': 1,
        'rating': 4.5,
        'reviewCount': 100,
        'imageUrl': 'https://example.com/product-image.jpg',
      };

      // Act
      final result = ShoppingResult.fromJson(json);

      // Assert
      expect(result.title, equals('Test Product'));
      expect(result.link, equals('https://example.com/product'));
      expect(result.price, equals('\$99.99'));
      expect(result.source, equals('Example Store'));
      expect(result.position, equals(1));
      expect(result.rating, equals(4.5));
      expect(result.reviewCount, equals(100));
      expect(result.imageUrl, equals('https://example.com/product-image.jpg'));
    });

    test('AutocompleteSuggestion deserializes from JSON correctly', () {
      // Arrange
      final json = {'suggestion': 'test suggestion'};

      // Act
      final result = AutocompleteSuggestion.fromJson(json);

      // Assert
      expect(result.suggestion, equals('test suggestion'));
    });

    test('WebpageResult deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'url': 'https://example.com',
        'text': 'This is the extracted text content.',
        'title': 'Example Page',
        'markdown': '# Example Page\n\nThis is the extracted text content.',
        'links': [
          {'url': 'https://example.com/link1', 'text': 'Link 1'},
          {'url': 'https://example.com/link2', 'text': 'Link 2'},
        ],
      };

      // Act
      final result = WebpageResult.fromJson(json);

      // Assert
      expect(result.url, equals('https://example.com'));
      expect(result.text, equals('This is the extracted text content.'));
      expect(result.title, equals('Example Page'));
      expect(
        result.markdown,
        equals('# Example Page\n\nThis is the extracted text content.'),
      );
      expect(result.links!.length, equals(2));
      expect(result.links!.first['url'], equals('https://example.com/link1'));
      expect(result.links!.first['text'], equals('Link 1'));
    });
  });
}
