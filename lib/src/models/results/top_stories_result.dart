part of 'results.dart';

/// Top stories result.
@freezed
class TopStoriesResult with _$TopStoriesResult {
  const factory TopStoriesResult({
    required String title,
    required String link,
    String? date,
    String? source,
    String? imageUrl,
    String? snippet,
  }) = _TopStoriesResult;

  factory TopStoriesResult.fromJson(Map<String, dynamic> json) =>
      _$TopStoriesResultFromJson(json);
}
