part of 'results.dart';

/// Webpage result from the Serper Webpage API.
@freezed
abstract class WebpageResult with _$WebpageResult {
  /// Creates a [WebpageResult].
  const factory WebpageResult({
    /// {@macro flutter_serper.results.title}
    required String title,

    /// {@macro flutter_serper.results.link}
    required String link,

    /// {@macro flutter_serper.results.snippet}
    required String snippet,
  }) = _WebpageResult;

  /// Creates a [WebpageResult] from a JSON map.
  factory WebpageResult.fromJson(Map<String, dynamic> json) =>
      _$WebpageResultFromJson(json);
}
