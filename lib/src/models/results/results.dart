import 'package:freezed_annotation/freezed_annotation.dart';

part 'autocomplete_suggestion.dart';
part 'organic_result.dart';
part 'related_search_result.dart';
part 'people_also_ask_result.dart';
part 'places_result.dart';
part 'top_stories_result.dart';
part 'twitter_result.dart';
part 'images_result.dart';
part 'knowledge_graph_result.dart';
part 'local_results_result.dart';
part 'image_result.dart';
part 'place_result.dart';
part 'video_result.dart';
part 'map_result.dart';
part 'map_result_review.dart';
part 'map_result_photo.dart';
part 'place_review.dart';
part 'news_result.dart';
part 'shopping_result.dart';
part 'lens_result.dart';
part 'scholar_result.dart';
part 'patent_result.dart';
part 'patent_figure.dart';
part 'webpage_result.dart';

// Add the generated part for Freezed
part 'results.freezed.dart';

// Generated part files for code generation
part 'results.g.dart';

/// Documentation templates for common result fields
///
/// This class contains reusable documentation templates for common
/// fields used across different result models in the Serper API.
class ResultDocTemplates {
  /// Template for title documentation
  static const String titleDoc = '''
The title of the result.

This is typically the main heading or name associated with the search result.
''';

  /// Template for link documentation
  static const String linkDoc = '''
The URL link to the result.

This URL can be used to navigate to the full content of the search result.
''';

  /// Template for snippet documentation
  static const String snippetDoc = '''
A brief excerpt or description of the result.

This provides a summary of the content to help users understand what the result contains.
''';

  /// Template for position documentation
  static const String positionDoc = '''
The position of this result in the search results list.

Position is zero-based, with 0 being the first result.
''';

  /// Template for source documentation
  static const String sourceDoc = '''
The source or provider of the result.

Indicates where the content originated from, such as a website name or publisher.
''';

  /// Template for source URL documentation
  static const String sourceUrlDoc = '''
The URL of the source where the result originated.

Can be used to navigate to the original source of the content.
''';

  /// Template for image URL documentation
  static const String imageUrlDoc = '''
The URL to the full-size image.

This URL can be used to display or download the full-size image.
''';

  /// Template for thumbnail URL documentation
  static const String thumbnailUrlDoc = '''
The URL to a thumbnail version of the image.

This URL can be used to display a smaller, preview version of the image.
''';

  /// Template for date documentation
  static const String dateDoc = '''
The date associated with the result.

This could be a publication date, review date, or other relevant date information.
''';

  /// Template for rating documentation
  static const String ratingDoc = '''
The rating associated with the result.

Typically represented as a number (often between 0-5) indicating user satisfaction or quality.
''';

  /// Template for review count documentation
  static const String reviewCountDoc = '''
The number of reviews associated with the result.

Indicates how many user reviews have been submitted for this item.
''';

  /// Template for price documentation
  static const String priceDoc = '''
The price associated with the result.

For shopping results, this represents the cost of the item, typically including currency symbol.
''';
}
