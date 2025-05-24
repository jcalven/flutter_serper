part of 'results.dart';

/// Top stories result from the Serper Search API.
///
/// These are highlighted news stories that are currently trending or
/// particularly relevant to the search query.
@freezed
abstract class TopStoriesResult with _$TopStoriesResult {
  /// Creates a [TopStoriesResult].
  const factory TopStoriesResult({
    /// {@macro ResultDocTemplates.titleDoc}
    required String title,

    /// {@macro ResultDocTemplates.linkDoc}
    required String link,

    /// {@macro ResultDocTemplates.dateDoc}
    ///
    /// For top stories, this is typically the publication date.
    String? date,

    /// {@macro ResultDocTemplates.sourceDoc}
    ///
    /// For top stories, this is the name of the news outlet.
    String? source,

    /// {@macro ResultDocTemplates.imageUrlDoc}
    String? imageUrl,

    /// {@macro ResultDocTemplates.snippetDoc}
    String? snippet,
  }) = _TopStoriesResult;

  /// Creates a [TopStoriesResult] from a JSON map.
  factory TopStoriesResult.fromJson(Map<String, dynamic> json) =>
      _$TopStoriesResultFromJson(json);
}
