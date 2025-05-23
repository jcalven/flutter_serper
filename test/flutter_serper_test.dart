import 'package:flutter_serper/flutter_serper.dart';
import 'package:test/test.dart';

void main() {
  group('Serper Query Classes', () {
    test('SearchQuery serializes to JSON correctly', () {
      // Arrange
      final searchQuery = SearchQuery(
        q: 'test query',
        location: 'New York',
        gl: 'us',
        hl: 'en',
        num: 10,
        autocorrect: true,
        tbs: 'qdr:d',
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
        q: 'test image',
        location: 'San Francisco',
        num: 5,
      );

      // Act
      final json = query.toJson();

      // Assert
      expect(json, isA<Map<String, dynamic>>());
      expect(json['q'], equals('test image'));
      expect(json['location'], equals('San Francisco'));
      expect(json['num'], equals(5));
    });

    test('WebpageQuery serializes to JSON correctly', () {
      // Arrange
      final query = WebpageQuery(
        url: 'https://example.com',
        includeMarkdown: true,
        q: 'test query',
      );

      // Act
      final json = query.toJson();

      // Assert
      expect(json, isA<Map<String, dynamic>>());
      expect(json['url'], equals('https://example.com'));
      expect(json['includeMarkdown'], isTrue);
      expect(json['q'], equals('test query'));
    });
  });
}
