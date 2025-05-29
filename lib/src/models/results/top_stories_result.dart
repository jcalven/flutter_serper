part of 'results.dart';

/// Top stories result from the Serper Search API.
@freezed
abstract class TopStoriesResult with _$TopStoriesResult {
  /// Creates a [TopStoriesResult].
  const factory TopStoriesResult({
    /// {@macro flutter_serper.results.title}
    required String title,

    /// {@macro flutter_serper.results.link}
    required String link,

    /// {@macro flutter_serper.results.source}
    required String source,

    /// {@macro flutter_serper.results.date}
    required String date,

    /// {@macro flutter_serper.results.imageUrl}
    String? imageUrl,
  }) = _TopStoriesResult;

  /// Creates a [TopStoriesResult] from a JSON map.
  factory TopStoriesResult.fromJson(Map<String, dynamic> json) =>
      _$TopStoriesResultFromJson(json);
}
