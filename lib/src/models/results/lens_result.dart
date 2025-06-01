part of 'results.dart';

/// {@template lensResultDocComments}
///
/// An immutable result object representing a Lens (Image Search) result from the Serper Lens API.
///
/// - [title]: The title of the result.
/// - [source]: The source or provider of the result.
/// - [link]: The direct link to the result.
/// - [imageUrl]: The URL to the full-size image.
/// - [thumbnailUrl]: The URL to a thumbnail version of the image.
///
/// This class is used in the [LensResponse] to represent each result returned by the API.
/// {@endtemplate}
@freezed
abstract class LensResult with _$LensResult {
  /// {@macro lensResultDocComments}
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
