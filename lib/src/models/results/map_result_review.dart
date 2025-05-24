part of 'results.dart';

/// Map result review.
@freezed
abstract class MapResultReview with _$MapResultReview {
  const factory MapResultReview({
    required String author,
    required String authorUrl,
    required String text,
    required double rating,
    required String date,
  }) = _MapResultReview;

  factory MapResultReview.fromJson(Map<String, dynamic> json) =>
      _$MapResultReviewFromJson(json);
}
