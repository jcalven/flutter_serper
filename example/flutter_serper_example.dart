import 'package:flutter_serper/flutter_serper.dart';

// Example function that can process any Serper API response
void processResponse(ResponseUtilityMixin response) {
  print('API call used ${response.credits} credits');
  print('Search parameters: ${response.searchParameters}');
}

Future<void> main() async {
  // Initialize the Serper client with your API key
  final serper = Serper(apiKey: 'YOUR_API_KEY');

  // Example 1: Perform a Google search
  // Note: All query parameters are well-documented with standardized templates
  final searchQuery = SearchQuery(
    query: 'coffee shops', // Search query string
    location: 'New York', // Geographic location for search context
    // countryCode and languageCode require importing the enums if you want to use them
    // countryCode: CountryCode.unitedStates,
    // languageCode: LanguageCode.english,
    num: 10, // Number of results to return
  );

  try {
    final searchResults = await serper.search(searchQuery);

    // Process with generic response handler
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
    // Using documented query parameters with consistent behavior
    final imagesQuery = ImagesQuery(
      query: 'coffee beans', // Search query string
      location: 'New York', // Geographic location for search context
      num: 5, // Number of results to return
    );

    final imageResults = await serper.images(imagesQuery);
    print('\\nFound ${imageResults.images.length} image results');

    if (imageResults.images.isNotEmpty) {
      final firstImage = imageResults.images.first;
      print('First image: ${firstImage.title}');
      print('Image URL: ${firstImage.imageUrl}');
      print('Thumbnail URL: ${firstImage.thumbnailUrl}');
      print('Source: ${firstImage.source}');
    }

    // Example 3: Places search for local businesses
    // All parameters have consistent documentation across different query types
    final placesQuery = PlacesQuery(
      query: 'coffee shops', // Search query string
      location: 'San Francisco', // Geographic location for search context
    );

    final placesResults = await serper.places(placesQuery);
    print('\\nFound ${placesResults.places.length} places results');

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
    // Similar parameters have consistent documentation across query types
    final newsQuery = NewsQuery(
      query: 'coffee industry', // Search query string
      location: 'United States', // Geographic location for search context
    );

    final newsResults = await serper.news(newsQuery);
    print('\\nFound ${newsResults.news.length} news results');

    if (newsResults.news.isNotEmpty) {
      final article = newsResults.news.first;
      print('Article: ${article.title}');
      print('Source: ${article.source}');
      print('Date: ${article.date}');
      print('Link: ${article.link}');
    }

    // Example 5: Scrape a webpage
    final webpageQuery = WebpageQuery(
      url: 'https://example.com', // URL to extract content from
      includeMarkdown: true, // Whether to include markdown in the response
    );

    final webpageResponse = await serper.webpage(webpageQuery);
    print('\\nWebpage scraping results:');

    final webpage = webpageResponse.results;
    print('Text length: ${webpage.text?.length ?? 0} characters');
    print('Markdown available: ${webpage.markdown != null}');
    print('Credits used: ${webpage.credits}');

    // Example 6: Get autocomplete suggestions
    // The documentation is consistent across all query types
    final autocompleteQuery = AutocompleteQuery(
      query: 'coffee', // Partial search query string to autocomplete
      location: 'San Francisco', // Geographic location for search context
    );

    final autocompleteResults = await serper.autocomplete(autocompleteQuery);
    print(
      '\\nFound ${autocompleteResults.suggestions.length} autocomplete suggestions',
    );

    for (final suggestion in autocompleteResults.suggestions.take(3)) {
      print('- ${suggestion.value}');
    }

    // Example 7: Using a generic API response handler
    print('\nExample of generic API response handling:');

    // Create a function that works with any Serper API response
    void processAnySerperResponse(ResponseUtilityMixin response) {
      print('This function works with any Serper response type');
      print('Search parameters: ${response.searchParameters}');
      print('Credits used: ${response.credits}');
    }

    // Process different response types with the same function
    print('\nHandling SearchResponse generically:');
    processAnySerperResponse(searchResults);

    print('\nHandling ImagesResponse generically:');
    processAnySerperResponse(imageResults);

    print('\nHandling NewsResponse generically:');
    processAnySerperResponse(newsResults);

    // Example 8: Using the callApi method with a generic response
    print('\nUsing callApi with SearchResponse:');
    final genericQuery =
        SearchQuery(query: 'specialty coffee', num: 3).toJson();

    try {
      final genericResultsList = await serper.callApi<SearchResponse>(
        '/search',
        [genericQuery],
        SearchResponse.fromJson,
      );

      // callApi now returns a List<T>, so we take the first result for demonstration
      final genericResults =
          genericResultsList.isNotEmpty ? genericResultsList.first : null;
      if (genericResults != null) {
        // We can access common properties via the mixin
        print('Credits used: ${genericResults.credits}');

        // And also specific properties of the concrete type
        print('Found ${genericResults.organic.length} organic results');

        // We can pass this to any function accepting ResponseUtilityMixin
        processAnySerperResponse(genericResults);
      } else {
        print('No results returned from callApi.');
      }
    } catch (e) {
      print('Error calling API with generic handler: $e');
    }

    // Example 9: Using SerperResponseProcessor utility class
    print('\nExample of using SerperResponseProcessor:');

    // Calculate total credits used across multiple API calls
    final totalCredits = SerperResponseProcessor.calculateTotalCredits([
      searchResults,
      imageResults,
      newsResults,
    ]);
    print('Total credits used across 3 API calls: $totalCredits');

    // Generate a usage report
    final usageReport = SerperResponseProcessor.createUsageReport([
      searchResults,
      imageResults,
      newsResults,
    ]);

    print('API Usage Report:');
    print('- Total credits: ${usageReport['totalCredits']}');
    print(
      '- Average credits per call: ${usageReport['averageCreditsPerCall']}',
    );
    print('- Number of API calls: ${usageReport['callCount']}');
    print('- Report timestamp: ${usageReport['timestamp']}');
  } catch (e) {
    print('Error: $e');
  }
}
