part of 'results.dart';

/// Images result in search response from the Serper Search API.
@freezed
abstract class ImagesResult with _$ImagesResult {
  /// Creates an [ImagesResult].
  const factory ImagesResult({
    /// {@macro flutter_serper.results.title}
    String? title,

    /// {@macro flutter_serper.results.imageUrl}
    String? imageUrl,

    /// {@macro flutter_serper.results.source}
    String? source,

    /// {@macro flutter_serper.results.sourceUrl}
    String? sourceUrl,
  }) = _ImagesResult;

  /// Creates an [ImagesResult] from a JSON map.
  factory ImagesResult.fromJson(Map<String, dynamic> json) =>
      _$ImagesResultFromJson(json);
}
