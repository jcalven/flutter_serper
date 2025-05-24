part of 'results.dart';

/// Image result.
@freezed
abstract class ImageResult with _$ImageResult {
  /// Creates an [ImageResult].
  const factory ImageResult({
    String? title,
    String? imageUrl,
    String? thumbnailUrl,
    String? source,
    String? sourceUrl,
    String? price,
    String? domain,
    required int position,
  }) = _ImageResult;

  /// Creates an [ImageResult] from a JSON map.
  factory ImageResult.fromJson(Map<String, dynamic> json) =>
      _$ImageResultFromJson(json);
}
