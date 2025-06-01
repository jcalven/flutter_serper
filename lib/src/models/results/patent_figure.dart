part of 'results.dart';

/// {@template patentFigureDocComments}
///
/// An immutable result object representing a patent figure image from the Serper Patents API.
///
/// - [imageUrl]: The URL to the full-size patent figure image.
/// - [thumbnailUrl]: The URL to a thumbnail version of the patent figure image.
///
/// This class is used in [PatentResult] to represent each figure included in a patent.
/// {@endtemplate}
@freezed
abstract class PatentFigure with _$PatentFigure {
  /// {@macro patentFigureDocComments}
  /// Creates a [PatentFigure].
  const factory PatentFigure({
    /// {@macro flutter_serper.results.imageUrl}
    required String imageUrl,

    /// {@macro flutter_serper.results.thumbnailUrl}
    required String thumbnailUrl,
  }) = _PatentFigure;

  /// Creates a [PatentFigure] from a JSON map.
  factory PatentFigure.fromJson(Map<String, dynamic> json) =>
      _$PatentFigureFromJson(json);
}
