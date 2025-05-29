part of 'results.dart';

/// Patent figure image from the Serper Patents API.
@freezed
abstract class PatentFigure with _$PatentFigure {
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
