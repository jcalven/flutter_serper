part of 'results.dart';

/// Images result in search response.
@freezed
abstract class ImagesResult with _$ImagesResult {
  const factory ImagesResult({
    required String title,
    required String imageUrl,
    required String source,
    required String sourceUrl,
  }) = _ImagesResult;

  factory ImagesResult.fromJson(Map<String, dynamic> json) =>
      _$ImagesResultFromJson(json);
}
