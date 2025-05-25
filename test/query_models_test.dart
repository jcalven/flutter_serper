import 'package:flutter_serper/flutter_serper.dart';
import 'package:test/test.dart';

void main() {
  group('Query Models - Additional Tests', () {
    test('MapsQuery serializes to JSON correctly', () {
      final query = MapsQuery(
        q: 'coffee shops',
        hl: 'en',
        ll: '37.7749,-122.4194',
        placeId: 'ChIJN1t_tDeuEmsRUsoyG83frY4',
        cid: '1234567890',
        page: 2,
      );
      final json = query.toJson();
      expect(json, isA<Map<String, dynamic>>());
      expect(json['q'], equals('coffee shops'));
      expect(json['hl'], equals('en'));
      expect(json['ll'], equals('37.7749,-122.4194'));
      expect(json['placeId'], equals('ChIJN1t_tDeuEmsRUsoyG83frY4'));
      expect(json['cid'], equals('1234567890'));
      expect(json['page'], equals(2));
    });

    test('PlacesQuery serializes to JSON correctly', () {
      final query = PlacesQuery(q: 'restaurants', location: 'Chicago');
      final json = query.toJson();
      expect(json, isA<Map<String, dynamic>>());
      expect(json['q'], equals('restaurants'));
      expect(json['location'], equals('Chicago'));
    });

    test('NewsQuery serializes to JSON correctly', () {
      final query = NewsQuery(
        q: 'world news',
        location: 'London',
        gl: 'uk',
        hl: 'en',
        num: 10,
      );
      final json = query.toJson();
      expect(json, isA<Map<String, dynamic>>());
      expect(json['q'], equals('world news'));
      expect(json['location'], equals('London'));
      expect(json['gl'], equals('uk'));
      expect(json['hl'], equals('en'));
      expect(json['num'], equals(10));
    });

    test('ShoppingQuery serializes to JSON correctly', () {
      final query = ShoppingQuery(
        q: 'smartphones',
        location: 'Boston',
        gl: 'us',
        hl: 'en',
      );
      final json = query.toJson();
      expect(json, isA<Map<String, dynamic>>());
      expect(json['q'], equals('smartphones'));
      expect(json['location'], equals('Boston'));
      expect(json['gl'], equals('us'));
      expect(json['hl'], equals('en'));
    });

    test('LensQuery serializes to JSON correctly', () {
      final query = LensQuery(
        url: 'https://example.com/image.jpg',
        gl: 'us',
        hl: 'en',
      );
      final json = query.toJson();
      expect(json, isA<Map<String, dynamic>>());
      expect(json['url'], equals('https://example.com/image.jpg'));
      expect(json['gl'], equals('us'));
      expect(json['hl'], equals('en'));
    });

    test('ScholarQuery serializes to JSON correctly', () {
      final query = ScholarQuery(q: 'machine learning', hl: 'en');
      final json = query.toJson();
      expect(json, isA<Map<String, dynamic>>());
      expect(json['q'], equals('machine learning'));
      expect(json['hl'], equals('en'));
    });

    test('PatentsQuery serializes to JSON correctly', () {
      final query = PatentsQuery(q: 'solar energy', hl: 'en');
      final json = query.toJson();
      expect(json, isA<Map<String, dynamic>>());
      expect(json['q'], equals('solar energy'));
      expect(json['hl'], equals('en'));
    });

    test('ReviewsQuery serializes to JSON correctly', () {
      final query = ReviewsQuery.withCid(cid: '12345', gl: 'us', hl: 'en');
      final json = query.toJson();
      expect(json, isA<Map<String, dynamic>>());
      expect(json['cid'], equals('12345'));
      expect(json['gl'], equals('us'));
      expect(json['hl'], equals('en'));
    });

    test('AutocompleteQuery serializes to JSON correctly', () {
      final query = AutocompleteQuery(q: 'how to', gl: 'us', hl: 'en');
      final json = query.toJson();
      expect(json, isA<Map<String, dynamic>>());
      expect(json['q'], equals('how to'));
      expect(json['gl'], equals('us'));
      expect(json['hl'], equals('en'));
    });
  });
}
