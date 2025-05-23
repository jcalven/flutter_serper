import 'package:flutter_serper/flutter_serper.dart';

// Example function that can process any Serper API response
void processResponse(SerperResponseMixin response) {
  print('API call used ${response.credits} credits');
  print('Search parameters: ${response.searchParameters}');
}

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

    // Process with polymorphic function
    processResponse(searchResults);

    // Access strongly-typed response fields
    print('\nFound ${searchResults.organic.length} organic results');

    if (searchResults.organic.isNotEmpty) {
      final firstResult = searchResults.organic.first;
      print('First result: ${firstResult.title}');
      print('Link: ${firstResult.link}');
      print('Snippet: ${firstResult.snippet}');
      print('Position: ${firstResult.position}');

      if (firstResult.rating != null) {
        print(
          'Rating: ${firstResult.rating} (${firstResult.ratingCount} reviews)',
        );
      }
    }

    // Access optional result sections
    if (searchResults.peopleAlsoAsk != null) {
      print('\nPeople also ask:');
      for (final question in searchResults.peopleAlsoAsk!) {
        print('- ${question.question}');
      }
    }

    if (searchResults.relatedSearches != null) {
      print('\nRelated searches:');
      for (final related in searchResults.relatedSearches!) {
        print('- ${related.query}');
      }
    }

    // Example 2: Search for images
    final imagesQuery = ImagesQuery(
      q: 'coffee beans',
      location: 'New York',
      num: 5,
    );

    final imageResults = await serper.images([imagesQuery]);
    print('\nFound ${imageResults.images.length} image results');

    if (imageResults.images.isNotEmpty) {
      final firstImage = imageResults.images.first;
      print('First image: ${firstImage.title}');
      print('Image URL: ${firstImage.imageUrl}');
      print('Thumbnail URL: ${firstImage.thumbnailUrl}');
      print('Source: ${firstImage.source}');
    }

    // Example 3: Places search for local businesses
    final placesQuery = PlacesQuery(
      q: 'coffee shops',
      location: 'San Francisco',
    );

    final placesResults = await serper.places([placesQuery]);
    print('\nFound ${placesResults.places.length} places results');

    if (placesResults.places.isNotEmpty) {
      final place = placesResults.places.first;
      print('Place: ${place.title}');
      print('Address: ${place.address}');

      if (place.rating != null) {
        print('Rating: ${place.rating} (${place.reviewCount} reviews)');
      }

      if (place.website != null) {
        print('Website: ${place.website}');
      }

      if (place.openingHours != null) {
        print('Opening hours: ${place.openingHours!.first}');
      }
    }

    // Example 4: Get news articles
    final newsQuery = NewsQuery(
      q: 'coffee industry',
      location: 'United States',
    );

    final newsResults = await serper.news([newsQuery]);
    print('\nFound ${newsResults.news.length} news results');

    if (newsResults.news.isNotEmpty) {
      final article = newsResults.news.first;
      print('Article: ${article.title}');
      print('Source: ${article.source}');
      print('Date: ${article.date}');
      print('Link: ${article.link}');
    }

    // Example 5: Scrape a webpage
    final webpageQuery = WebpageQuery(
      url: 'https://example.com',
      includeMarkdown: true,
    );

    final webpageResults = await serper.webpage([webpageQuery]);
    print('\nWebpage scraping results:');

    if (webpageResults.results.isNotEmpty) {
      final webpage = webpageResults.results.first;
      print('Text length: ${webpage.text.length} characters');
      print('Markdown available: ${webpage.markdown != null}');
      print('Credits used: ${webpage.credits}');
    }

    // Example 6: Get autocomplete suggestions
    final autocompleteQuery = AutocompleteQuery(
      q: 'coffee',
      location: 'San Francisco',
    );

    final autocompleteResults = await serper.autocomplete([autocompleteQuery]);
    print(
      '\nFound ${autocompleteResults.suggestions.length} autocomplete suggestions',
    );

    for (final suggestion in autocompleteResults.suggestions.take(3)) {
      print('- ${suggestion.value}');
    }

    // Example 7: Using polymorphic API handling
    print('\nExample of polymorphic API handling:');

    // Create a function that works with any Serper API response
    void processPolymorphicResponse(SerperResponseMixin response) {
      print('This function works with any Serper response type');
      print('Search parameters: ${response.searchParameters}');
      print('Credits used: ${response.credits}');
    }

    // Process different response types with the same function
    print('\nHandling SearchResponse polymorphically:');
    processPolymorphicResponse(searchResults);

    print('\nHandling ImagesResponse polymorphically:');
    processPolymorphicResponse(imageResults);

    print('\nHandling NewsResponse polymorphically:');
    processPolymorphicResponse(newsResults);

    // Example 8: Using the callApiWithMixin method
    print('\nUsing callApiWithMixin with SearchResponse:');
    final polymorphicQuery =
        SearchQuery(q: 'specialty coffee', num: 3).toJson();

    try {
      final polymorphicResults = await serper.callApiWithMixin<SearchResponse>(
        '/search',
        [polymorphicQuery],
        SearchResponse.fromJson,
      );

      // We can access common properties via the mixin
      print('Credits used: ${polymorphicResults.credits}');

      // And also specific properties of the concrete type
      print('Found ${polymorphicResults.organic.length} organic results');

      // We can pass this to any function accepting SerperResponseMixin
      processPolymorphicResponse(polymorphicResults);
    } catch (e) {
      print('Error calling API with mixin: $e');
    }
  } catch (e) {
    print('Error: $e');
  }
}
