import 'package:flutter_serper/flutter_serper.dart';
import 'package:test/test.dart';

void main() {
  group('Query Models - Tests', () {
    test('MapsQuery serializes to JSON correctly', () {
      // Arrange
      final query = MapsQuery(
        q: 'coffee shops',
        hl: 'en',
        ll: '37.7749,-122.4194',
        placeId: 'ChIJIQBpAG2ahYAR_6128GcTUEo',
      );

      // Act
      final json = query.toJson();

      // Assert
      expect(json, isA<Map<String, dynamic>>());
      expect(json['q'], equals('coffee shops'));
      expect(json['hl'], equals('en'));
      expect(json['ll'], equals('37.7749,-122.4194'));
      expect(json['placeId'], equals('ChIJIQBpAG2ahYAR_6128GcTUEo'));
    });

    test('PlacesQuery serializes to JSON correctly', () {
      // Arrange
      final query = PlacesQuery(q: 'restaurants', gl: 'us', hl: 'en', num: 5);

      // Act
      final json = query.toJson();

      // Assert
      expect(json, isA<Map<String, dynamic>>());
      expect(json['q'], equals('restaurants'));
      expect(json['gl'], equals('us'));
      expect(json['hl'], equals('en'));
      expect(json['num'], equals(5));
    });

    test('SearchQuery serializes to JSON correctly', () {
      // Arrange
      final query = SearchQuery(q: 'flutter', gl: 'us', hl: 'en', num: 10);

      // Act
      final json = query.toJson();

      // Assert
      expect(json, isA<Map<String, dynamic>>());
      expect(json['q'], equals('flutter'));
      expect(json['gl'], equals('us'));
      expect(json['hl'], equals('en'));
      expect(json['num'], equals(10));
    });

    test('ImagesQuery serializes to JSON correctly', () {
      // Arrange
      final query = ImagesQuery(q: 'mountains', gl: 'us', hl: 'en', num: 10);

      // Act
      final json = query.toJson();

      // Assert
      expect(json, isA<Map<String, dynamic>>());
      expect(json['q'], equals('mountains'));
      expect(json['gl'], equals('us'));
      expect(json['hl'], equals('en'));
      expect(json['num'], equals(10));
    });

    test('NewsQuery serializes to JSON correctly', () {
      // Arrange
      final query = NewsQuery(
        q: 'technology news',
        gl: 'us',
        hl: 'en',
        dateRestrict: 'd',
      );

      // Act
      final json = query.toJson();

      // Assert
      expect(json, isA<Map<String, dynamic>>());
      expect(json['q'], equals('technology news'));
      expect(json['gl'], equals('us'));
      expect(json['hl'], equals('en'));
      expect(json['dateRestrict'], equals('d'));
    });

    test('VideosQuery serializes to JSON correctly', () {
      // Arrange
      final query = VideosQuery(q: 'flutter tutorials', gl: 'us', hl: 'en');

      // Act
      final json = query.toJson();

      // Assert
      expect(json, isA<Map<String, dynamic>>());
      expect(json['q'], equals('flutter tutorials'));
      expect(json['gl'], equals('us'));
      expect(json['hl'], equals('en'));
    });

    test('LensQuery serializes to JSON correctly', () {
      // Arrange
      final query = LensQuery(
        url: 'https://example.com/image.jpg',
        gl: 'us',
        hl: 'en',
      );

      // Act
      final json = query.toJson();

      // Assert
      expect(json, isA<Map<String, dynamic>>());
      expect(json['url'], equals('https://example.com/image.jpg'));
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
      final query = PatentsQuery(q: 'solar energy patents', gl: 'us', hl: 'en');

      // Act
      final json = query.toJson();

      // Assert
      expect(json, isA<Map<String, dynamic>>());
      expect(json['q'], equals('solar energy patents'));
      expect(json['gl'], equals('us'));
      expect(json['hl'], equals('en'));
    });

    test('ReviewsQuery serializes to JSON correctly', () {
      // Arrange
      final query = ReviewsQuery(
        cid: '12345',
        fid: '67890',
        placeId: 'ChIJIQBpAG2ahYAR_6128GcTUEo',
        gl: 'us',
        hl: 'en',
      );

      // Act
      final json = query.toJson();

      // Assert
      expect(json, isA<Map<String, dynamic>>());
      expect(json['cid'], equals('12345'));
      expect(json['fid'], equals('67890'));
      expect(json['placeId'], equals('ChIJIQBpAG2ahYAR_6128GcTUEo'));
      expect(json['gl'], equals('us'));
      expect(json['hl'], equals('en'));
    });

    test('AutocompleteQuery serializes to JSON correctly', () {
      // Arrange
      final query = AutocompleteQuery(q: 'flo', gl: 'us', hl: 'en');

      // Act
      final json = query.toJson();

      // Assert
      expect(json, isA<Map<String, dynamic>>());
      expect(json['q'], equals('flo'));
      expect(json['gl'], equals('us'));
      expect(json['hl'], equals('en'));
    });

    test('WebpageQuery serializes to JSON correctly', () {
      // Arrange
      final query = WebpageQuery(
        url: 'https://example.com',
        gl: 'us',
        hl: 'en',
      );

      // Act
      final json = query.toJson();

      // Assert
      expect(json, isA<Map<String, dynamic>>());
      expect(json['url'], equals('https://example.com'));
      expect(json['gl'], equals('us'));
      expect(json['hl'], equals('en'));
    });
  });
}
