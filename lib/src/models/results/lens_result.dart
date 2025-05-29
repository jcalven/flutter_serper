part of 'results.dart';

/// Lens (Image Search) result from the Serper Lens API.
@freezed
abstract class LensResult with _$LensResult {
  /// Creates a [LensResult].
  const factory LensResult({
    /// {@macro flutter_serper.results.title}
    required String title,

    /// {@macro flutter_serper.results.source}
    required String source,

    /// {@macro flutter_serper.results.link}
    required String link,

    /// {@macro flutter_serper.results.imageUrl}
    required String imageUrl,

    /// {@macro flutter_serper.results.thumbnailUrl}
    required String thumbnailUrl,
  }) = _LensResult;

  /// Creates a [LensResult] from a JSON map.
  factory LensResult.fromJson(Map<String, dynamic> json) =>
      _$LensResultFromJson(json);
}
