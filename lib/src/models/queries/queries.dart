import 'package:freezed_annotation/freezed_annotation.dart';
import '../shared_types.dart'; // Import shared types including new enums

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

/// {@template queries.queryString}
/// The search query string.
///
/// This is a required parameter and can be empty.
/// {@endtemplate}

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
Optional Google location parameter (country code as a string e.g., 'US', 'GB').

This can be used to specify a location bias. Parsed to [CountryCode].''';

  /// Template for the language parameter
  static const String hlDoc = '''
Optional language parameter (language code as a string e.g., 'en', 'es').

This can be used to specify the language of the results.
Parsed to [LanguageCode].''';

  /// Template for the country code parameter
  static const String countryCodeDoc = '''
The country for the search, as a [CountryCode] enum.

Serialized to the 'gl' parameter for the API.''';

  /// Template for the language code parameter
  static const String languageCodeDoc = '''
The language for the search, as a [LanguageCode] enum.

Serialized to the 'hl' parameter for the API.''';

  /// Template for the num parameter
  static const String numDoc = '''
Optional number of results to return.

Default varies by API endpoint.''';

  /// Template for the autocorrect parameter
  static const String autocorrectDoc = '''
Optional parameter to enable or disable autocorrection.

When true, the API will attempt to correct spelling errors in the query.''';

  /// Template for the time-based search parameter (string version)
  static const String tbsDocString = '''
Optional time-based search parameter as a string.

Common values include:
- 'qdr:h' (past hour)
- 'qdr:d' (past day)
- 'qdr:w' (past week)
- 'qdr:m' (past month)
- 'qdr:y' (past year)
Parsed to [TbsValue].''';

  /// Template for the time-based search parameter (enum version)
  static const String tbsDocEnum = '''
Optional time-based search parameter, as a [TbsValue] enum.

Serialized to the 'tbs' parameter for the API.''';

  /// Template for the page parameter
  static const String pageDoc = '''
Optional page number for pagination.

Default is 1.''';

  /// Template for the Google Maps Place ID parameter
  static const String placeIdDoc = '''
Optional Google Place ID.

This can be used to specify a particular place for the search.''';

  /// Template for the Google Maps CID parameter
  static const String cidDoc = '''
Optional Google CID (Customer ID).

This can be used to identify a specific business or entity.''';

  /// Template for the Google Maps FID parameter
  static const String fidDoc = '''
Optional Google Feature ID.

This can be used to identify a specific feature for the search.''';

  /// Template for the URL parameter in Lens and Webpage queries
  static const String urlDoc = '''
The URL of the page to process.

This is a required parameter.''';

  /// Template for the sortBy parameter (string version)
  static const String sortByDocString = '''
Optional parameter to sort results, as a string.

Parsed to [SortByValue].''';

  /// Template for the sortBy parameter (enum version)
  static const String sortByDocEnum = '''
Optional parameter to sort results, as a [SortByValue] enum.

Serialized to the 'sortBy' parameter for the API.''';

  /// Template for the LatLng parameter (class version)
  static const String latLngDocClass = '''
Optional latitude and longitude, as a [LatLng] object.

Serialized as "latitude,longitude" for the 'll' parameter.''';

  /// Template for the LatLng parameter (string version)
  static const String latLngDocString = '''
Optional latitude and longitude, as a string in "latitude,longitude" format.

Parsed to a [LatLng] object.''';
}
