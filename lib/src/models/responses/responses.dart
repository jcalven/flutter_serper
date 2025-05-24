import 'package:flutter_serper/src/models/results/results.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_serper/src/models/queries/queries.dart';

part 'serper_response_base.dart';
// part 'serper_response_mixin.dart';
part 'search_response.dart';
part 'images_response.dart';
part 'places_response.dart';
part 'videos_response.dart';
part 'maps_response.dart';
part 'reviews_response.dart';
part 'news_response.dart';
part 'shopping_response.dart';
part 'lens_response.dart';
part 'scholar_response.dart';
part 'patents_response.dart';
part 'autocomplete_response.dart';
part 'webpage_response.dart';

// Add the generated part for Freezed
part 'responses.freezed.dart';

// Generated part files for code generation
part 'responses.g.dart';

/// Documentation templates for common response parameters
///
/// This class contains reusable documentation templates for common
/// response parameters across different Serper API responses.
class ResponseDocTemplates {
  /// Template for search parameters documentation
  static const String searchParametersDoc = '''
The query parameters used for this search request.

Contains all the parameters that were sent with the original API request.
''';

  /// Template for credits documentation
  static const String creditsDoc = '''
The number of credits used for this API request.

Serper API uses a credit-based system for billing, and this field indicates
how many credits were consumed by this particular API call.
''';

  /// Template for organic results documentation
  static const String organicDoc = '''
List of organic search results returned by the API.

Organic results are the main search results that match the query criteria,
similar to the standard results you would see in a search engine.
''';

  /// Template for knowledge graph documentation
  static const String knowledgeGraphDoc = '''
Knowledge Graph information related to the search query, if available.

The Knowledge Graph provides structured information about the entity
being searched for, such as a person, place, organization, or concept.
''';

  /// Template for results documentation
  static const String resultsDoc = '''
List of search results returned by the API.

Contains all the results that match the search query criteria.
''';
}
