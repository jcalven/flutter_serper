part of 'results.dart';

/// Lens (Image Search) result.
@freezed
class LensResult with _$LensResult {
  const factory LensResult({
    required String title,
    required String source,
    required String link,
    required String imageUrl,
    required String thumbnailUrl,
  }) = _LensResult;

  factory LensResult.fromJson(Map<String, dynamic> json) =>
      _$LensResultFromJson(json);
}
