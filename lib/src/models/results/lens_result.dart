part of 'results.dart';

/// Lens (Image Search) result from the Serper Lens API.
@freezed
abstract class LensResult with _$LensResult {
  /// Creates a [LensResult].
  const factory LensResult({
    /// {@macro ResultDocTemplates.titleDoc}
    required String title,

    /// {@macro ResultDocTemplates.sourceDoc}
    required String source,

    /// {@macro ResultDocTemplates.linkDoc}
    required String link,

    /// {@macro ResultDocTemplates.imageUrlDoc}
    required String imageUrl,

    /// {@macro ResultDocTemplates.thumbnailUrlDoc}
    required String thumbnailUrl,
  }) = _LensResult;

  /// Creates a [LensResult] from a JSON map.
  factory LensResult.fromJson(Map<String, dynamic> json) =>
      _$LensResultFromJson(json);
}
