import 'package:freezed_annotation/freezed_annotation.dart';

part 'autocomplete_query.dart';
part 'images_query.dart';
part 'places_query.dart';
part 'videos_query.dart';
part 'maps_query.dart';
part 'reviews_query.dart';
part 'news_query.dart';
part 'shopping_query.dart';
part 'lens_query.dart';
part 'scholar_query.dart';
part 'patents_query.dart';
part 'search_query.dart';
part 'webpage_query.dart';

// Add the generated part for Freezed
part 'queries.freezed.dart';

// Generated part files for code generation
part 'queries.g.dart';

/// Documentation templates for common query parameters
class QueryDocTemplates {
  /// Template for the query string parameter
  static const String queryStringDoc = '''
The search query string.

This is a required parameter and can be empty.''';

  /// Template for the location parameter
  static const String locationDoc = '''
Optional location to filter results.

This can be a city, state, or country.''';

  /// Template for the Google location parameter
  static const String glDoc = '''
Optional Google location parameter.

This can be used to specify a location bias.''';

  /// Template for the language parameter
  static const String hlDoc = '''
Optional language parameter.

This can be used to specify the language of the results.
For example, 'en' for English, 'es' for Spanish, etc.''';

  /// Template for the num parameter
  static const String numDoc = '''
Optional number of results to return.

Default varies by API endpoint.''';

  /// Template for the autocorrect parameter
  static const String autocorrectDoc = '''
Optional parameter to enable or disable autocorrection.

When true, the API will attempt to correct spelling errors in the query.''';

  /// Template for the time-based search parameter
  static const String tbsDoc = '''
Optional time-based search parameter.

Common values include:
- 'qdr:h' (past hour)
- 'qdr:d' (past day)
- 'qdr:w' (past week)
- 'qdr:m' (past month)
- 'qdr:y' (past year)''';

  /// Template for the page parameter
  static const String pageDoc = '''
Optional page number for paginated results.

Starts at 1 for the first page.''';

  /// Template for the URL parameter in Lens and Webpage queries
  static const String urlDoc = '''
The URL to analyze.

This is a required parameter and should be a valid URL.''';

  /// Template for the Google Maps Place ID parameter
  static const String placeIdDoc = '''
Google Maps Place ID parameter.

This is a unique identifier for a specific place in Google Maps.''';

  /// Template for the Google Maps CID parameter
  static const String cidDoc = '''
Google Maps CID (Customer ID) parameter.

This is a unique identifier used for places in Google Maps.''';

  /// Template for the Google Maps FID parameter
  static const String fidDoc = '''
Google Maps FID (Feature ID) parameter.

This is a unique identifier used for places in Google Maps.''';
}
