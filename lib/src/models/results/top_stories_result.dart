part of 'results.dart';

/// {@template topStoriesResultDocComments}
///
/// An immutable result object representing a top stories result from the Serper Search API.
///
/// - [title]: The title of the story.
/// - [link]: The direct link to the story.
/// - [date]: The date of the story.
/// - [source]: The name of the news outlet.
/// - [snippet]: A brief excerpt or description of the story.
/// - [imageUrl]: The URL to the image associated with the story.
///
/// This class is used in [SearchResponse] to represent highlighted news stories for a search query.
/// {@endtemplate}
@freezed
abstract class TopStoriesResult with _$TopStoriesResult {
  /// {@macro topStoriesResultDocComments}
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
