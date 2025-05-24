import 'package:flutter_serper/flutter_serper.dart';
import 'package:dotenv/dotenv.dart';
import 'package:test/test.dart';

void main() {
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
      final searchQuery = SearchQuery(q: 'coffee shops', location: 'New York');

      // Act & Assert
      try {
        final searchResults = await serper.search([searchQuery]);
        print('Raw Search API response:');
        print(searchResults);
        expect(searchResults.organic, isNotEmpty);
        expect(searchResults.credits, greaterThan(0));
      } catch (e) {
        print('Search API error: $e');
        rethrow;
      }
    });

    test('Images API returns valid results', () async {
      // Arrange
      final imagesQuery = ImagesQuery(q: 'coffee beans', location: 'New York');

      // Act & Assert
      try {
        final imageResults = await serper.images([imagesQuery]);
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
      final autocompleteQuery = AutocompleteQuery(q: 'coffee');

      // Act & Assert
      try {
        final autocompleteResults = await serper.autocomplete([
          autocompleteQuery,
        ]);
        print('Raw Autocomplete API response:');
        print(autocompleteResults);
        expect(autocompleteResults.suggestions, isNotEmpty);
        expect(autocompleteResults.credits, greaterThan(0));
      } catch (e) {
        print('Autocomplete API error: $e');
        rethrow;
      }
    });
  });
}
