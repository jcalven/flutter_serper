part of 'results.dart';

/// Images result in search response from the Serper Search API.
@freezed
abstract class ImagesResult with _$ImagesResult {
  /// Creates an [ImagesResult].
  const factory ImagesResult({
    /// {@macro ResultDocTemplates.titleDoc}
    required String title,

    /// {@macro ResultDocTemplates.imageUrlDoc}
    required String imageUrl,

    /// {@macro ResultDocTemplates.sourceDoc}
    required String source,

    /// {@macro ResultDocTemplates.sourceUrlDoc}
    required String sourceUrl,
  }) = _ImagesResult;

  /// Creates an [ImagesResult] from a JSON map.
  factory ImagesResult.fromJson(Map<String, dynamic> json) =>
      _$ImagesResultFromJson(json);
}
