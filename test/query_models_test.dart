import 'package:flutter_serper/flutter_serper.dart';
import 'package:test/test.dart';

void main() {
  group('Query Models - Additional Tests', () {
    test('MapsQuery serializes to JSON correctly', () {
      // Arrange
      final query = MapsQuery(
        q: 'coffee shops',
        location: 'San Francisco',
        zoom: 15,
        ll: '37.7749,-122.4194',
      );

      // Act
      final json = query.toJson();

      // Assert
      expect(json, isA<Map<String, dynamic>>());
      expect(json['q'], equals('coffee shops'));
      expect(json['location'], equals('San Francisco'));
      expect(json['zoom'], equals(15));
      expect(json['ll'], equals('37.7749,-122.4194'));
    });

    test('PlacesQuery serializes to JSON correctly', () {
      // Arrange
      final query = PlacesQuery(
        q: 'restaurants',
        location: 'Chicago',
        limit: 5,
      );

      // Act
      final json = query.toJson();

      // Assert
      expect(json, isA<Map<String, dynamic>>());
      expect(json['q'], equals('restaurants'));
      expect(json['location'], equals('Chicago'));
      expect(json['limit'], equals(5));
    });

    test('NewsQuery serializes to JSON correctly', () {
      // Arrange
      final query = NewsQuery(
        q: 'world news',
        location: 'London',
        gl: 'uk',
        hl: 'en',
        num: 10,
      );

      // Act
      final json = query.toJson();

      // Assert
      expect(json, isA<Map<String, dynamic>>());
      expect(json['q'], equals('world news'));
      expect(json['location'], equals('London'));
      expect(json['gl'], equals('uk'));
      expect(json['hl'], equals('en'));
      expect(json['num'], equals(10));
    });

    test('ShoppingQuery serializes to JSON correctly', () {
      // Arrange
      final query = ShoppingQuery(
        q: 'smartphones',
        location: 'Boston',
        gl: 'us',
        hl: 'en',
      );

      // Act
      final json = query.toJson();

      // Assert
      expect(json, isA<Map<String, dynamic>>());
      expect(json['q'], equals('smartphones'));
      expect(json['location'], equals('Boston'));
      expect(json['gl'], equals('us'));
      expect(json['hl'], equals('en'));
    });

    test('LensQuery serializes to JSON correctly', () {
      // Arrange
      final query = LensQuery(
        imageUrl: 'https://example.com/image.jpg',
        gl: 'us',
        hl: 'en',
      );

      // Act
      final json = query.toJson();

      // Assert
      expect(json, isA<Map<String, dynamic>>());
      expect(json['imageUrl'], equals('https://example.com/image.jpg'));
      expect(json['gl'], equals('us'));
      expect(json['hl'], equals('en'));
    });

    test('ScholarQuery serializes to JSON correctly', () {
      // Arrange
      final query = ScholarQuery(q: 'machine learning', hl: 'en');

      // Act
      final json = query.toJson();

      // Assert
      expect(json, isA<Map<String, dynamic>>());
      expect(json['q'], equals('machine learning'));
      expect(json['hl'], equals('en'));
    });

    test('PatentsQuery serializes to JSON correctly', () {
      // Arrange
      final query = PatentsQuery(q: 'solar energy', hl: 'en');

      // Act
      final json = query.toJson();

      // Assert
      expect(json, isA<Map<String, dynamic>>());
      expect(json['q'], equals('solar energy'));
      expect(json['hl'], equals('en'));
    });

    test('ReviewsQuery serializes to JSON correctly', () {
      // Arrange
      final query = ReviewsQuery(q: 'hotel reviews', gl: 'us', hl: 'en');

      // Act
      final json = query.toJson();

      // Assert
      expect(json, isA<Map<String, dynamic>>());
      expect(json['q'], equals('hotel reviews'));
      expect(json['gl'], equals('us'));
      expect(json['hl'], equals('en'));
    });

    test('AutocompleteQuery serializes to JSON correctly', () {
      // Arrange
      final query = AutocompleteQuery(q: 'how to', gl: 'us', hl: 'en');

      // Act
      final json = query.toJson();

      // Assert
      expect(json, isA<Map<String, dynamic>>());
      expect(json['q'], equals('how to'));
      expect(json['gl'], equals('us'));
      expect(json['hl'], equals('en'));
    });
  });
}
