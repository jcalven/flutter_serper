part of 'results.dart';

/// Patent figure.
@freezed
class PatentFigure with _$PatentFigure {
  const factory PatentFigure({
    required String imageUrl,
    required String thumbnailUrl,
  }) = _PatentFigure;

  factory PatentFigure.fromJson(Map<String, dynamic> json) =>
      _$PatentFigureFromJson(json);
}
