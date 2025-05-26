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
    q: 'coffee shops', // Search query string
    location: 'New York', // Geographic location for search context
    // countryCode and languageCode require importing the enums if you want to use them
    // countryCode: CountryCode.unitedStates,
    // languageCode: LanguageCode.english,
    num: 10, // Number of results to return
  );

  try {
    final searchResults = await serper.search(searchQuery);

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
    // Using documented query parameters with consistent behavior
    final imagesQuery = ImagesQuery(
      q: 'coffee beans', // Search query string
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
      q: 'coffee shops', // Search query string
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
      q: 'coffee industry', // Search query string
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

    final webpageResults = await serper.webpage(webpageQuery);
    print('\\nWebpage scraping results:');

    if (webpageResults.results.isNotEmpty) {
      final webpage = webpageResults.results.first;
      print('Text length: ${webpage.text.length} characters');
      print('Markdown available: ${webpage.markdown != null}');
      print('Credits used: ${webpage.credits}');
    }

    // Example 6: Get autocomplete suggestions
    // The documentation is consistent across all query types
    final autocompleteQuery = AutocompleteQuery(
      q: 'coffee', // Partial search query string to autocomplete
      location: 'San Francisco', // Geographic location for search context
    );

    final autocompleteResults = await serper.autocomplete(autocompleteQuery);
    print(
      '\\nFound ${autocompleteResults.suggestions.length} autocomplete suggestions',
    );

    for (final suggestion in autocompleteResults.suggestions.take(3)) {
      print('- ${suggestion.value}');
    }

    // Example 7: Using polymorphic API handling
    print('\nExample of polymorphic API handling:');

    // Create a function that works with any Serper API response
    void processPolymorphicResponse(ResponseUtilityMixin response) {
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
      final polymorphicResults = await serper.callApi<SearchResponse>(
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
