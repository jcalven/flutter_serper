import 'package:flutter_serper/flutter_serper.dart';

Future<void> main() async {
  // Initialize the Serper client with your API key
  final serper = Serper(apiKey: 'YOUR_API_KEY');

  // Example 1: Perform a Google search
  final searchQuery = SearchQuery(
    q: 'coffee shops',
    location: 'New York',
    gl: 'us',
    hl: 'en',
    num: 10,
  );

  try {
    final searchResults = await serper.search([searchQuery]);
    print('Search results: $searchResults');

    // Example 2: Search for images
    final imagesQuery = ImagesQuery(
      q: 'coffee beans',
      location: 'New York',
      num: 5,
    );

    final imageResults = await serper.images([imagesQuery]);
    print('Image results: $imageResults');

    // Example 3: Batch search with multiple queries
    final batchQueries = [
      SearchQuery(q: 'best cafes', location: 'Seattle'),
      SearchQuery(q: 'best coffee', location: 'Portland'),
    ];

    final batchResults = await serper.search(batchQueries);
    print('Batch results: $batchResults');

    // Example 4: Scrape a webpage
    final webpageQuery = WebpageQuery(
      url: 'https://example.com',
      includeMarkdown: true,
    );

    final webpageResults = await serper.webpage([webpageQuery]);
    print('Webpage results: $webpageResults');
  } catch (e) {
    print('Error: $e');
  }
}
