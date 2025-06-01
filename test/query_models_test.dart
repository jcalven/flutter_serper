import 'package:flutter_serper/flutter_serper.dart';
import 'package:flutter_serper/src/models/shared_types.dart';
import 'package:test/test.dart';

void main() {
  group('Query Models - Tests', () {
    test('MapsQuery serializes to JSON correctly', () {
      // Arrange
      final query = MapsQuery(
        query: 'coffee shops',
        languageCode: LanguageCode.english,
        latLng: const LatLng(37.7749, -122.4194),
        placeId: 'ChIJN1t_tDeuEmsRUsoyG83frY4',
        cid: '1234567890',
        page: 2,
      );

      // Act
      final json = query.toJson();

      // Assert
      expect(json, isA<Map<String, dynamic>>());
      expect(json['q'], equals('coffee shops'));
      expect(json['hl'], equals('en'));
      expect(json['ll'], equals('@37.7749,-122.4194,10.0z'));
      expect(json['placeId'], equals('ChIJN1t_tDeuEmsRUsoyG83frY4'));
      expect(json['cid'], equals('1234567890'));
      expect(json['page'], equals(2));
    });

    test('PlacesQuery serializes to JSON correctly', () {
      // Arrange
      final query = PlacesQuery(
        query: 'restaurants',
        location: 'San Francisco',
      );

      // Act
      final json = query.toJson();

      // Assert
      expect(json, isA<Map<String, dynamic>>());
      expect(json['q'], equals('restaurants'));
      expect(json['location'], equals('San Francisco'));
    });

    test('SearchQuery serializes to JSON correctly', () {
      // Arrange
      final query = SearchQuery(query: 'flutter');

      // Act
      final json = query.toJson();

      // Assert
      expect(json, isA<Map<String, dynamic>>());
      expect(json['q'], equals('flutter'));
    });

    test('ImagesQuery serializes to JSON correctly', () {
      // Arrange
      final query = ImagesQuery(query: 'mountains');

      // Act
      final json = query.toJson();

      // Assert
      expect(json, isA<Map<String, dynamic>>());
      expect(json['q'], equals('mountains'));
    });

    test('NewsQuery serializes to JSON correctly', () {
      // Arrange
      final query = NewsQuery(
        query: 'technology news',
        location: 'London',
        countryCode:
            CountryCode
                .unitedKingdomGB, // Assuming 'uk' maps to unitedKingdomGB
        languageCode: LanguageCode.english,
        num: 10,
      );

      // Act
      final json = query.toJson();

      // Assert
      expect(json, isA<Map<String, dynamic>>());
      expect(json['q'], equals('technology news'));
      expect(json['location'], equals('London'));
      expect(json['gl'], equals('gb')); // Changed from 'uk' to 'gb'
      expect(json['hl'], equals('en'));
      expect(json['num'], equals(10));
    });

    test('VideosQuery serializes to JSON correctly', () {
      // Arrange
      final query = VideosQuery(query: 'flutter tutorials');

      // Act
      final json = query.toJson();

      // Assert
      expect(json, isA<Map<String, dynamic>>());
      expect(json['q'], equals('flutter tutorials'));
    });

    test('LensQuery serializes to JSON correctly', () {
      // Arrange
      final query = LensQuery(
        url: 'https://example.com/image.jpg',
        countryCode: CountryCode.unitedStates,
        languageCode: LanguageCode.english,
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
      final query = ScholarQuery(
        query: 'machine learning',
        languageCode: LanguageCode.english,
      );

      // Act
      final json = query.toJson();

      // Assert
      expect(json, isA<Map<String, dynamic>>());
      expect(json['q'], equals('machine learning'));
      expect(json['hl'], equals('en'));
    });

    test('PatentsQuery serializes to JSON correctly', () {
      // Arrange
      final query = PatentsQuery(query: 'solar energy patents');

      // Act
      final json = query.toJson();

      // Assert
      expect(json, isA<Map<String, dynamic>>());
      expect(json['q'], equals('solar energy patents'));
    });

    test('ReviewsQuery serializes to JSON correctly', () {
      // Arrange/Act/Assert for withCid
      final queryCid = ReviewsQuery.withCid(
        cid: '12345',
        countryCode: CountryCode.unitedStates,
        languageCode: LanguageCode.english,
        sortBy: SortByValue.newest,
        topicId: 'topic1',
        nextPageToken: 'token1',
        query: 'filter',
      );
      final jsonCid = queryCid.toJson();
      expect(jsonCid, isA<Map<String, dynamic>>());
      expect(jsonCid['cid'], equals('12345'));
      expect(jsonCid['gl'], equals('us'));
      expect(jsonCid['hl'], equals('en'));
      expect(jsonCid['sortBy'], equals('newest'));
      expect(jsonCid['topicId'], equals('topic1'));
      expect(jsonCid['nextPageToken'], equals('token1'));
      expect(jsonCid['q'], equals('filter'));

      // Arrange/Act/Assert for withFid
      final queryFid = ReviewsQuery.withFid(
        fid: '67890',
        countryCode: CountryCode.unitedStates,
        languageCode: LanguageCode.english,
        sortBy: SortByValue.highestRating,
        topicId: 'topic2',
        nextPageToken: 'token2',
        query: 'filter2',
      );
      final jsonFid = queryFid.toJson();
      expect(jsonFid, isA<Map<String, dynamic>>());
      expect(jsonFid['fid'], equals('67890'));
      expect(jsonFid['gl'], equals('us'));
      expect(jsonFid['hl'], equals('en'));
      expect(jsonFid['sortBy'], equals('highest_rating'));
      expect(jsonFid['topicId'], equals('topic2'));
      expect(jsonFid['nextPageToken'], equals('token2'));
      expect(jsonFid['q'], equals('filter2'));

      // Arrange/Act/Assert for withPlaceId
      final queryPlaceId = ReviewsQuery.withPlaceId(
        placeId: 'ChIJIQBpAG2ahYAR_6128GcTUEo',
        countryCode: CountryCode.unitedStates,
        languageCode: LanguageCode.english,
        sortBy: SortByValue.relevant,
        topicId: 'topic3',
        nextPageToken: 'token3',
        query: 'filter3',
      );
      final jsonPlaceId = queryPlaceId.toJson();
      expect(jsonPlaceId, isA<Map<String, dynamic>>());
      expect(jsonPlaceId['placeId'], equals('ChIJIQBpAG2ahYAR_6128GcTUEo'));
      expect(jsonPlaceId['gl'], equals('us'));
      expect(jsonPlaceId['hl'], equals('en'));
      expect(jsonPlaceId['sortBy'], equals('relevant'));
      expect(jsonPlaceId['topicId'], equals('topic3'));
      expect(jsonPlaceId['nextPageToken'], equals('token3'));
      expect(jsonPlaceId['q'], equals('filter3'));
    });

    test('AutocompleteQuery serializes to JSON correctly', () {
      // Arrange
      final query = AutocompleteQuery(
        query: 'flo',
        countryCode: CountryCode.unitedStates,
        languageCode: LanguageCode.english,
      );

      // Act
      final json = query.toJson();

      // Assert
      expect(json, isA<Map<String, dynamic>>());
      expect(json['q'], equals('flo'));
      expect(json['gl'], equals('us'));
      expect(json['hl'], equals('en'));
    });

    // Added from query_models_test.dart
    test('ShoppingQuery serializes to JSON correctly', () {
      final query = ShoppingQuery(
        query: 'smartphones',
        location: 'Boston',
        countryCode: CountryCode.unitedStates,
        languageCode: LanguageCode.english,
      );
      final json = query.toJson();
      expect(json, isA<Map<String, dynamic>>());
      expect(json['q'], equals('smartphones'));
      expect(json['location'], equals('Boston'));
      expect(json['gl'], equals('us'));
      expect(json['hl'], equals('en'));
    });

    test('WebpageQuery serializes to JSON correctly', () {
      // Arrange
      final query = WebpageQuery(
        url: 'https://example.com',
        includeMarkdown: true,
      );

      // Act
      final json = query.toJson();

      // Assert
      expect(json, isA<Map<String, dynamic>>());
      expect(json['url'], equals('https://example.com'));
      expect(json['includeMarkdown'], equals(true));
    });
  });
}
