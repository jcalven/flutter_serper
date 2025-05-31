part of 'results.dart';

/// Place review from the Serper Reviews API.
@freezed
abstract class PlaceReview with _$PlaceReview {
  /// Creates a [PlaceReview].
  const factory PlaceReview({
    /// The rating given in the review.
    required double rating,

    /// The relative date string (e.g., "a month ago").
    required String date,

    /// The ISO 8601 date string.
    String? isoDate,

    /// The main snippet/content of the review.
    String? snippet,

    /// The number of likes/upvotes for the review.
    int? likes,

    /// The user who wrote the review.
    required PlaceReviewUser user,

    /// The business's response to the review, if any.
    PlaceReviewResponse? response,

    /// The unique identifier for this review.
    String? id,
  }) = _PlaceReview;

  /// Creates a [PlaceReview] from a JSON map.
  factory PlaceReview.fromJson(Map<String, dynamic> json) =>
      _$PlaceReviewFromJson(json);
}
