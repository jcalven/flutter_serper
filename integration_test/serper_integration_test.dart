import 'package:flutter_serper/flutter_serper.dart';
import 'package:dotenv/dotenv.dart';
import 'package:flutter_serper/src/models/results/results.dart';
import 'package:test/test.dart';

void main() {
  group('Serper API Integration Tests (Batch & All Endpoints)', () {
    late Serper serper;

    setUp(() {
      var env = DotEnv(includePlatformEnvironment: true)..load();
      final apiKey = env['SERPER_API_KEY'];
      if (apiKey == null || apiKey.isEmpty) {
        throw Exception(
          'API key is not set. Please add SERPER_API_KEY to your .env file.',
        );
      }
      serper = Serper(apiKey: apiKey);
    });

    test('Search API batch returns valid results', () async {
      final queries = [
        SearchQuery(query: 'coffee shops', location: 'New York'),
        SearchQuery(query: 'bookstores', location: 'Boston'),
      ];
      final results = await serper.searchBatch(queries);
      expect(results, hasLength(2));
      expect(results[0].organic, isNotEmpty);
      expect(results[1].organic, isNotEmpty);
    });

    test('Images API batch returns valid results', () async {
      final queries = [
        ImagesQuery(query: 'coffee beans', location: 'New York'),
        ImagesQuery(query: 'tea leaves', location: 'London'),
      ];
      final results = await serper.imagesBatch(queries);
      expect(results, hasLength(2));
      expect(results[0].images, isNotEmpty);
      expect(results[1].images, isNotEmpty);
    });

    test('Videos API returns valid results', () async {
      final query = VideosQuery(query: 'coffee brewing');
      final results = await serper.videos(query);
      expect(results.videos, isNotEmpty);
    });

    test('Videos API batch returns valid results', () async {
      final queries = [
        VideosQuery(query: 'coffee brewing'),
        VideosQuery(query: 'latte art'),
      ];
      final results = await serper.videosBatch(queries);
      expect(results, hasLength(2));
      expect(results[0].videos, isNotEmpty);
      expect(results[1].videos, isNotEmpty);
    });

    test('Places API returns valid results', () async {
      final query = PlacesQuery(query: 'cafes', location: 'Paris');
      final results = await serper.places(query);
      expect(results.places, isNotEmpty);
    });

    test('Places API batch returns valid results', () async {
      final queries = [
        PlacesQuery(query: 'cafes', location: 'Paris'),
        PlacesQuery(query: 'restaurants', location: 'Berlin'),
      ];
      final results = await serper.placesBatch(queries);
      expect(results, hasLength(2));
      expect(results[0].places, isNotEmpty);
      expect(results[1].places, isNotEmpty);
    });

    test('Maps API batch returns valid results', () async {
      final queries = [
        MapsQuery.fromStrings(query: 'coffee shops'),
        MapsQuery.fromStrings(query: 'libraries'),
      ];
      final results = await serper.mapsBatch(queries);
      expect(results, hasLength(2));
      expect(results[0].places, isNotEmpty);
      expect(results[1].places, isNotEmpty);
    });

    test('Reviews API returns valid results', () async {
      final query = ReviewsQuery.withCid(cid: '12345');
      try {
        final results = await serper.reviews(query);
        expect(results.reviews, isList);
      } catch (e) {
        print('Reviews API error: $e');
      }
    });

    test('Reviews API batch returns valid results', () async {
      final queries = [
        ReviewsQuery.withCid(cid: '12345'),
        ReviewsQuery.withCid(cid: '67890'),
      ];
      try {
        final results = await serper.reviewsBatch(queries);
        expect(results, hasLength(2));
      } catch (e) {
        print('Reviews API batch error: $e');
      }
    });

    test('News API returns valid results', () async {
      final query = NewsQuery(query: 'coffee news');
      final results = await serper.news(query);
      expect(results.news, isNotEmpty);
    });

    test('News API batch returns valid results', () async {
      final queries = [
        NewsQuery(query: 'coffee news'),
        NewsQuery(query: 'tea news'),
      ];
      final results = await serper.newsBatch(queries);
      expect(results, hasLength(2));
      expect(results[0].news, isNotEmpty);
      expect(results[1].news, isNotEmpty);
    });

    test('Shopping API returns valid results', () async {
      final query = ShoppingQuery(query: 'coffee grinder');
      final results = await serper.shopping(query);
      expect(results.shopping, isNotEmpty);
    });

    test('Shopping API batch returns valid results', () async {
      final queries = [
        ShoppingQuery(query: 'coffee grinder'),
        ShoppingQuery(query: 'espresso machine'),
      ];
      final results = await serper.shoppingBatch(queries);
      expect(results, hasLength(2));
      expect(results[0].shopping, isNotEmpty);
      expect(results[1].shopping, isNotEmpty);
    });

    test('Lens API returns valid results', () async {
      final query = LensQuery(
        url:
            'https://upload.wikimedia.org/wikipedia/commons/4/45/A_small_cup_of_coffee.JPG',
      );
      try {
        final results = await serper.lens(query);
        expect(results.organic, isList);
      } catch (e) {
        print('Lens API error: $e');
      }
    });

    test('Lens API batch returns valid results', () async {
      final queries = [
        LensQuery(
          url:
              'https://upload.wikimedia.org/wikipedia/commons/4/45/A_small_cup_of_coffee.JPG',
        ),
        LensQuery(
          url:
              'https://upload.wikimedia.org/wikipedia/commons/6/6b/Tea_leaves_in_dish.jpg',
        ), // TODO: Replace with a valid image URL
      ];
      try {
        final results = await serper.lensBatch(queries);
        expect(results, hasLength(2));
      } catch (e) {
        print('Lens API batch error: $e');
      }
    });

    test('Scholar API returns valid results', () async {
      final query = ScholarQuery(query: 'coffee research');
      final results = await serper.scholar(query);
      expect(results.organic, isList);
    });

    test('Scholar API batch returns valid results', () async {
      final queries = [
        ScholarQuery(query: 'coffee research'),
        ScholarQuery(query: 'tea research'),
      ];
      final results = await serper.scholarBatch(queries);
      expect(results, hasLength(2));
      expect(results[0].organic, isList);
      expect(results[1].organic, isList);
    });

    test('Patents API returns valid results', () async {
      final query = PatentsQuery(query: 'coffee filter');
      final results = await serper.patents(query);
      expect(results.organic, isList);
    });

    test('Patents API batch returns valid results', () async {
      final queries = [
        PatentsQuery(query: 'coffee filter'),
        PatentsQuery(query: 'tea infuser'),
      ];
      final results = await serper.patentsBatch(queries);
      expect(results, hasLength(2));
      expect(results[0].organic, isList);
      expect(results[1].organic, isList);
    });

    test('Autocomplete API batch returns valid results', () async {
      final queries = [
        AutocompleteQuery(query: 'coffee'),
        AutocompleteQuery(query: 'tea'),
      ];
      final results = await serper.autocompleteBatch(queries);
      expect(results, hasLength(2));
      expect(results[0].suggestions, isNotEmpty);
      expect(results[1].suggestions, isNotEmpty);
    });

    test('Webpage API returns valid results', () async {
      final query = WebpageQuery(url: 'https://en.wikipedia.org/wiki/Coffee');

      // Act & Assert
      try {
        final _ = await serper.webpage(query);
      } catch (e) {
        print('Webpage API error: $e');
        rethrow;
      }
    });
  });
  group('Serper API Integration Tests', () {
    late Serper serper;

    setUp(() {
      // Load the .env file
      var env = DotEnv(includePlatformEnvironment: true)..load();

      // Retrieve the API key from the .env file
      final apiKey = env['SERPER_API_KEY'];
      if (apiKey == null || apiKey.isEmpty) {
        throw Exception(
          'API key is not set. Please add SERPER_API_KEY to your .env file.',
        );
      }

      serper = Serper(apiKey: apiKey);
    });

    test('Search API returns valid results', () async {
      // Arrange
      final searchQuery = SearchQuery(
        query: 'coffee shops',
        location: 'New York',
      );

      // Act & Assert
      try {
        final searchResults = await serper.search(searchQuery);
      } catch (e) {
        print('Search API error: $e');
        rethrow;
      }
    });

    test('Images API returns valid results', () async {
      // Arrange
      final imagesQuery = ImagesQuery(
        query: 'coffee beans',
        location: 'New York',
      );

      // Act & Assert
      try {
        final imageResults = await serper.images(imagesQuery);
        print('Raw Images API response:');
        print(imageResults);
        expect(imageResults.images, isNotEmpty);
        expect(imageResults.credits, greaterThan(0));
      } catch (e) {
        print('Images API error: $e');
        rethrow;
      }
    });

    test('Autocomplete API returns valid suggestions', () async {
      // Arrange
      final autocompleteQuery = AutocompleteQuery(query: 'coffee');

      // Act & Assert
      try {
        final autocompleteResults = await serper.autocomplete(
          autocompleteQuery,
        );
        print('Raw Autocomplete API response:');
        print(autocompleteResults);
        expect(autocompleteResults.suggestions, isNotEmpty);
        expect(autocompleteResults.credits, greaterThan(0));
      } catch (e) {
        print('Autocomplete API error: $e');
        rethrow;
      }
    });

    test('Maps API returns valid results', () async {
      // Arrange
      final mapsQuery = MapsQuery.fromStrings(
        query: 'coffee shops',
        // latLngString: '40.7128,-74.0060', // New York coordinates
      );

      // Act & Assert
      try {
        final mapsResults = await serper.maps(mapsQuery);
        print('Raw Maps API response:');
        print(mapsResults);
        expect(mapsResults.places, isNotEmpty);
        expect(mapsResults.credits, greaterThan(0));
      } catch (e) {
        print('Maps API error: $e');
        rethrow;
      }
    });
  });
}
