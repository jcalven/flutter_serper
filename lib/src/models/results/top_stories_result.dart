part of 'results.dart';

/// Top stories result from the Serper Search API.
///
/// These are highlighted news stories that are currently trending or
/// particularly relevant to the search query.
@freezed
abstract class TopStoriesResult with _$TopStoriesResult {
  /// Creates a [TopStoriesResult].
  const factory TopStoriesResult({
    /// {@macro flutter_serper.results.title}
    required String title,

    /// {@macro flutter_serper.results.link}
    required String link,

    /// {@macro flutter_serper.results.date}
    String? date,

    /// {@macro flutter_serper.results.source}
    ///
    /// For top stories, this is the name of the news outlet.
    String? source,

    /// {@macro ResultDocTemplates.snippetDoc}
    String? snippet,

    /// {@macro flutter_serper.results.imageUrl}
    String? imageUrl,
  }) = _TopStoriesResult;

  /// Creates a [TopStoriesResult] from a JSON map.
  factory TopStoriesResult.fromJson(Map<String, dynamic> json) =>
      _$TopStoriesResultFromJson(json);
}
