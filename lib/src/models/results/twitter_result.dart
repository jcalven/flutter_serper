part of 'results.dart';

/// Twitter result from the Serper Search API.
@freezed
abstract class TwitterResult with _$TwitterResult {
  /// Creates a [TwitterResult].
  const factory TwitterResult({
    /// {@macro flutter_serper.results.title}
    required String title,

    /// {@macro flutter_serper.results.link}
    required String link,

    /// {@macro flutter_serper.results.snippet}
    required String snippet,

    /// {@macro flutter_serper.results.date}
    required String date,
  }) = _TwitterResult;

  /// Creates a [TwitterResult] from a JSON map.
  factory TwitterResult.fromJson(Map<String, dynamic> json) =>
      _$TwitterResultFromJson(json);
}
