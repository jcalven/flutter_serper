# flutter_serper

A Dart package that provides a strongly-typed wrapper for the [Serper API](https://serper.dev/), allowing you to perform Google search operations and extract data from webpages.

## Features

- Strongly-typed query and response models using Freezed
- Type-safe responses for all API endpoints that match the Serper API schema
- Support for all Serper API endpoints:
  - Google Search
  - Images
  - Videos
  - Places
  - Maps
  - Reviews
  - News
  - Shopping
  - Lens (Image Search) 
  - Scholar
  - Patents
  - Autocomplete
  - Webpage Scraping
- Support for batch requests (up to 100 queries per call)
- Full control over all available query parameters

## Installation

```yaml
dependencies:
  flutter_serper: ^1.0.0
```

## Usage

### Initialize the client

```dart
import 'package:flutter_serper/flutter_serper.dart';

// Initialize with your API key
final serper = Serper(apiKey: 'YOUR_API_KEY');
```

### Basic Google Search

```dart
// Create a search query
final query = SearchQuery(
  q: 'coffee shops',
  location: 'New York',
  gl: 'us',
  hl: 'en',
  num: 10,
);

// Execute the search
final results = await serper.search([query]);

// Access typed response data
print('Found ${results.organic.length} organic results');
print('First result: ${results.organic.first.title}');
print('Link: ${results.organic.first.link}');

// Access optional result sections
if (results.peopleAlsoAsk != null) {
  print('People also ask: ${results.peopleAlsoAsk!.first.question}');
}

if (results.relatedSearches != null) {
  print('Related search: ${results.relatedSearches!.first.query}');
}
```

### Batch Search

```dart
// Create multiple queries
final queries = [
  SearchQuery(q: 'best cafes', location: 'Seattle'),
  SearchQuery(q: 'best coffee', location: 'Portland'),
];

// Execute batch search
final results = await serper.search(queries);
```

### Image Search

```dart
final query = ImagesQuery(
  q: 'coffee beans',
  location: 'New York',
  num: 5,
);

final results = await serper.images([query]);

// Access typed image results
print('Found ${results.images.length} image results');
print('First image: ${results.images.first.title}');
print('Image URL: ${results.images.first.imageUrl}');
print('Thumbnail: ${results.images.first.thumbnailUrl}');
```

### Webpage Scraping

```dart
final query = WebpageQuery(
  url: 'https://example.com',
  includeMarkdown: true,
);

final results = await serper.webpage([query]);

// Access webpage scraping results
print('Extracted text length: ${results.results.first.text.length} characters');
if (results.results.first.markdown != null) {
  print('Markdown available');
}
```

## Available Query Parameters

Each query class supports all the parameters available in the Serper API. Here's an example of the parameters available for `SearchQuery`:

```dart
SearchQuery(
  q: 'search term',           // Required - search query
  location: 'New York',       // Optional - location to search from
  gl: 'us',                   // Optional - country code
  hl: 'en',                   // Optional - language code
  num: 10,                    // Optional - number of results
  autocorrect: true,          // Optional - enable autocorrection
  tbs: 'qdr:d',               // Optional - time-based search (e.g., past day)
  page: 1,                    // Optional - page number
);
```

## Response Models

The package includes strongly-typed response models for all Serper API endpoints. Each model matches the JSON structure returned by the API and provides type-safe access to all fields.

### Search Response

```dart
// Search API response model
final searchResults = await serper.search([query]);

// Basic fields
print('Search parameters: ${searchResults.searchParameters}');
print('Credits used: ${searchResults.credits}');

// Organic results (always available)
for (final result in searchResults.organic) {
  print('Title: ${result.title}');
  print('Link: ${result.link}');
  print('Snippet: ${result.snippet}');
  print('Position: ${result.position}');
}

// Optional sections (may be null)
if (searchResults.relatedSearches != null) {
  for (final related in searchResults.relatedSearches!) {
    print('Related search: ${related.query}');
  }
}

if (searchResults.peopleAlsoAsk != null) {
  for (final question in searchResults.peopleAlsoAsk!) {
    print('Question: ${question.question}');
  }
}
```

### Images Response

```dart
final imageResults = await serper.images([query]);

for (final image in imageResults.images) {
  print('Title: ${image.title}');
  print('Image URL: ${image.imageUrl}');
  print('Thumbnail: ${image.thumbnailUrl}');
  print('Source: ${image.source}');
  print('Source URL: ${image.sourceUrl}');
}
```

### Places Response

```dart
final placesResults = await serper.places([query]);

for (final place in placesResults.places) {
  print('Title: ${place.title}');
  print('Address: ${place.address}');
  print('Rating: ${place.rating}');
  print('Review count: ${place.reviewCount}');
  print('Website: ${place.website}');
}
```

## Error Handling

All API methods throw a `SerperApiException` when there's an error with the API request. The exception includes helpful information about what went wrong:

```dart
try {
  final results = await serper.search([query]);
  // Process results...
} on SerperApiException catch (e) {
  print('API error: ${e.message}');
  print('Status code: ${e.statusCode}');
  print('Endpoint: ${e.endpoint}');
  if (e.responseData != null) {
    print('Error details: ${e.responseData}');
  }
} catch (e) {
  print('Other error: $e');
}
```

## License

This project is licensed under the MIT License - see the LICENSE file for details.