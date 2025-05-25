part of 'results.dart';

/// Images result in search response from the Serper Search API.
@freezed
abstract class ImagesResult with _$ImagesResult {
  /// Creates an [ImagesResult].
  const factory ImagesResult({
    /// {@macro ResultDocTemplates.titleDoc}
    String? title,

    /// {@macro ResultDocTemplates.imageUrlDoc}
    String? imageUrl,

    /// {@macro ResultDocTemplates.sourceDoc}
    String? source,

    /// {@macro ResultDocTemplates.sourceUrlDoc}
    String? sourceUrl,
  }) = _ImagesResult;

  /// Creates an [ImagesResult] from a JSON map.
  factory ImagesResult.fromJson(Map<String, dynamic> json) =>
      _$ImagesResultFromJson(json);
}
