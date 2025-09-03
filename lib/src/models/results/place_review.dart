part of 'results.dart';

/// {@template placeReviewDocComments}
///
/// An immutable result object representing a place review from the Serper Reviews API.
///
/// - [rating]: The rating given in the review.
/// - [date]: The relative date string (e.g., "a month ago").
/// - [isoDate]: The ISO 8601 date string.
/// - [snippet]: The main snippet/content of the review.
/// - [likes]: The number of likes/upvotes for the review.
/// - [user]: The user who wrote the review.
/// - [response]: The business's response to the review, if any.
/// - [id]: The unique identifier for this review.
///
/// This class is used in the [ReviewsResponse] to represent each review returned by the API.
/// {@endtemplate}
@freezed
abstract class PlaceReview with _$PlaceReview {
  /// {@macro placeReviewDocComments}
  /// Creates a [PlaceReview].
  const factory PlaceReview({
    /// The rating given in the review.
    double? rating,

    /// The relative date string (e.g., "a month ago").
    String? date,

    /// The ISO 8601 date string.
    String? isoDate,

    /// The main snippet/content of the review.
    String? snippet,

    /// The number of likes/upvotes for the review.
    int? likes,

    /// The user who wrote the review.
    PlaceReviewUser? user,

    /// The business's response to the review, if any.
    PlaceReviewResponse? response,

    /// The unique identifier for this review.
    String? id,
  }) = _PlaceReview;

  /// Creates a [PlaceReview] from a JSON map.
  factory PlaceReview.fromJson(Map<String, dynamic> json) =>
      _$PlaceReviewFromJson(json);
}
