# flutter_serper

[![pub package](https://img.shields.io/pub/v/flutter_serper.svg)](https://pub.dev/packages/flutter_serper)
[![flutter_serper](https://github.com/jcalven/flutter_serper/actions/workflows/main.yaml/badge.svg?branch=main)](https://github.com/jcalven/flutter_serper/actions/workflows/main.yaml)

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
- Comprehensive documentation

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
final query = SearchQuery(
  q: 'coffee shops',
  location: 'New York',
  countryCode: CountryCode.unitedStates, // Optional, use enum
  languageCode: LanguageCode.english,    // Optional, use enum
  num: 10,
);

final result = await serper.search(query);
print('Found ${result.organic.length} organic results');
print('First result: ${result.organic.first.title}');
print('Link: ${result.organic.first.link}');

if (result.peopleAlsoAsk != null) {
  print('People also ask: ${result.peopleAlsoAsk!.first.question}');
}
if (result.relatedSearches != null) {
  print('Related search: ${result.relatedSearches!.first.query}');
}
```


### Batch Search

```dart
final queries = [
  SearchQuery(q: 'best cafes', location: 'Seattle'),
  SearchQuery(q: 'best coffee', location: 'Portland'),
];

final results = await serper.searchBatch(queries);
print('Batch search returned ${results.length} responses');
for (final res in results) {
  print('First organic result: ${res.organic.first.title}');
}
```


### Image Search

```dart
final query = ImagesQuery(
  q: 'coffee beans',
  location: 'New York',
  num: 5,
);

final result = await serper.images(query);
print('Found ${result.images.length} image results');
print('First image: ${result.images.first.title}');
print('Image URL: ${result.images.first.imageUrl}');
print('Thumbnail: ${result.images.first.thumbnailUrl}');
```


### Webpage Scraping

```dart
final query = WebpageQuery(
  url: 'https://example.com',
  includeMarkdown: true,
);

final result = await serper.webpage(query);
print('Extracted text length: ${result.results.first.text.length} characters');
if (result.results.first.markdown != null) {
  print('Markdown available');
}
```


## Available Query Parameters

Each query class supports all the parameters available in the Serper API. Example for `SearchQuery`:

```dart
SearchQuery(
  q: 'search term',           // Required - search query
  location: 'New York',       // Optional - location to search from
  countryCode: CountryCode.unitedStates, // Optional - use enum
  languageCode: LanguageCode.english,    // Optional - use enum
  num: 10,                    // Optional - number of results
  autocorrect: true,          // Optional - enable autocorrection
  tbs: TbsValue.pastDay,      // Optional - time-based search (enum)
  page: 1,                    // Optional - page number
);
```


## Response Models

The package includes strongly-typed response models for all Serper API endpoints. Each model matches the JSON structure returned by the API and provides type-safe access to all fields.

### Search Response

```dart
final searchResult = await serper.search(query);
print('Search parameters: ${searchResult.searchParameters}');
print('Credits used: ${searchResult.credits}');
for (final result in searchResult.organic) {
  print('Title: ${result.title}');
  print('Link: ${result.link}');
  print('Snippet: ${result.snippet}');
  print('Position: ${result.position}');
}
if (searchResult.relatedSearches != null) {
  for (final related in searchResult.relatedSearches!) {
    print('Related search: ${related.query}');
  }
}
if (searchResult.peopleAlsoAsk != null) {
  for (final question in searchResult.peopleAlsoAsk!) {
    print('Question: ${question.question}');
  }
}
```


### Images Response

```dart
final imageResult = await serper.images(query);
for (final image in imageResult.images) {
  print('Title: ${image.title}');
  print('Image URL: ${image.imageUrl}');
  print('Thumbnail: ${image.thumbnailUrl}');
  print('Source: ${image.source}');
  print('Source URL: ${image.sourceUrl}');
}
```


### Places Response

```dart
final placesResult = await serper.places(query);
for (final place in placesResult.places) {
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

## Development

### Workflow

This package follows the [Very Good Ventures](https://verygood.ventures/) workflow for Dart packages:

1. All changes should be made in feature branches from `main`
2. Pull requests should follow the [Conventional Commits](https://www.conventionalcommits.org/) specification
3. CI automatically verifies formatting, static analysis, and tests
4. Releases are automated using version tags

### Release Process

To create a new release:

```bash
# For a patch release (0.0.X)
./tool/release.sh patch

# For a minor release (0.X.0)
./tool/release.sh minor

# For a major release (X.0.0)
./tool/release.sh major

# For a pre-release (beta version)
./tool/release.sh pre-release

# To convert a pre-release to a stable release
./tool/release.sh release
```

The release script will:
1. Ensure you're on the main branch
2. Run tests to verify everything works
3. Bump the version in pubspec.yaml and update CHANGELOG.md
4. Commit and tag the changes
5. Push to GitHub, which triggers the publish workflow
print('Found ${results.organic.length} organic results');
```

## License

This project is licensed under the MIT License - see the LICENSE file for details.