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
      expect(result.sitelinks!.first.title, equals('Sublink 1'));
      expect(
        result.sitelinks!.first.link,
        equals('https://example.com/sublink1'),
      );
    });

    test('Image result deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'title': 'Mountain View',
        'imageUrl': 'https://example.com/image.jpg',
        'imageWidth': 800,
        'imageHeight': 600,
        'source': 'Example.com',
        'sourceUrl': 'https://example.com',
        'position': 1,
      };

      // Act
      final result = ImageResult.fromJson(json);

      // Assert
      expect(result.title, equals('Mountain View'));
      expect(result.imageUrl, equals('https://example.com/image.jpg'));
      expect(result.imageWidth, equals(800));
      expect(result.imageHeight, equals(600));
      expect(result.source, equals('Example.com'));
      expect(result.sourceUrl, equals('https://example.com'));
      expect(result.position, equals(1));
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
        'answer': 'Flutter is an open-source UI framework',
        'title': 'Flutter - Build apps for any screen',
        'link': 'https://flutter.dev',
        'date': '2 days ago',
      };

      // Act
      final result = PeopleAlsoAskResult.fromJson(json);

      // Assert
      expect(result.question, equals('What is Flutter?'));
      expect(result.answer, equals('Flutter is an open-source UI framework'));
      expect(result.title, equals('Flutter - Build apps for any screen'));
      expect(result.link, equals('https://flutter.dev'));
      expect(result.date, equals('2 days ago'));
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
        'position': 1,
      };

      // Act
      final result = TopStoriesResult.fromJson(json);

      // Assert
      expect(result.title, equals('Breaking News'));
      expect(result.link, equals('https://example.com/breaking'));
      expect(result.source, equals('News Source'));
      expect(result.date, equals('1 hour ago'));
      expect(result.imageUrl, equals('https://example.com/breaking.jpg'));
      expect(result.position, equals(1));
    });

    test('Shopping result deserializes from JSON correctly', () {
      // Arrange
      final json = {
        'title': 'Smartphone',
        'link': 'https://example.com/product',
        'price': '\$999',
        'source': 'Example Store',
        'imageUrl': 'https://example.com/product.jpg',
        'rating': 4.5,
        'reviewCount': 100,
        'position': 1,
      };

      // Act
      final result = ShoppingResult.fromJson(json);

      // Assert
      expect(result.title, equals('Smartphone'));
      expect(result.link, equals('https://example.com/product'));
      expect(result.price, equals('\$999'));
      expect(result.source, equals('Example Store'));
      expect(result.imageUrl, equals('https://example.com/product.jpg'));
      expect(result.rating, equals(4.5));
      expect(result.reviewCount, equals(100));
      expect(result.position, equals(1));
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
        'title': 'Example Website',
        'link': 'https://example.com',
        'snippet': 'This is an example website...',
        'favicon': 'https://example.com/favicon.ico',
        'position': 1,
      };

      // Act
      final result = WebpageResult.fromJson(json);

      // Assert
      expect(result.title, equals('Example Website'));
      expect(result.link, equals('https://example.com'));
      expect(result.snippet, equals('This is an example website...'));
      expect(result.favicon, equals('https://example.com/favicon.ico'));
      expect(result.position, equals(1));
    });
  });
}
