part of 'results.dart';

/// The business's response to a place review.
@freezed
abstract class PlaceReviewResponse with _$PlaceReviewResponse {
  /// Creates a [PlaceReviewResponse].
  const factory PlaceReviewResponse({
    /// The relative date string (e.g., "a month ago").
    required String date,

    /// The ISO 8601 date string.
    String? isoDate,

    /// The main snippet/content of the response.
    String? snippet,
  }) = _PlaceReviewResponse;

  /// Creates a [PlaceReviewResponse] from a JSON map.
  factory PlaceReviewResponse.fromJson(Map<String, dynamic> json) =>
      _$PlaceReviewResponseFromJson(json);
}
