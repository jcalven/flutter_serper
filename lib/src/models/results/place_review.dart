part of 'results.dart';

/// Place review.
@freezed
abstract class PlaceReview with _$PlaceReview {
  const factory PlaceReview({
    required String author,
    required String authorUrl,
    required String text,
    required double rating,
    required String date,
    String? id,
    bool? isLocalGuide,
    required int position,
  }) = _PlaceReview;

  factory PlaceReview.fromJson(Map<String, dynamic> json) =>
      _$PlaceReviewFromJson(json);
}
