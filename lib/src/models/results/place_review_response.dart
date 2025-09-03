part of 'results.dart';

/// {@template placeReviewResponseDocComments}
///
/// An immutable result object representing the business's response to a place review.
///
/// - [date]: The relative date string (e.g., "a month ago").
/// - [isoDate]: The ISO 8601 date string.
/// - [snippet]: The main snippet/content of the response.
///
/// This class is used in [PlaceReview] to represent the business's response to a review.
/// {@endtemplate}
@freezed
abstract class PlaceReviewResponse with _$PlaceReviewResponse {
  /// {@macro placeReviewResponseDocComments}
  /// Creates a [PlaceReviewResponse].
  const factory PlaceReviewResponse({
    /// The relative date string (e.g., "a month ago").
    String? date,

    /// The ISO 8601 date string.
    String? isoDate,

    /// The main snippet/content of the response.
    String? snippet,
  }) = _PlaceReviewResponse;

  /// Creates a [PlaceReviewResponse] from a JSON map.
  factory PlaceReviewResponse.fromJson(Map<String, dynamic> json) =>
      _$PlaceReviewResponseFromJson(json);
}
