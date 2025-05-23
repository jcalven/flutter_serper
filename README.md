# flutter_serper

A Dart package that provides a strongly-typed wrapper for the [Serper API](https://serper.dev/), allowing you to perform Google search operations and extract data from webpages.

## Features

- Strongly-typed query objects using Freezed
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
```

### Webpage Scraping

```dart
final query = WebpageQuery(
  url: 'https://example.com',
  includeMarkdown: true,
);

final results = await serper.webpage([query]);
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

## License

This project is licensed under the MIT License - see the LICENSE file for details.