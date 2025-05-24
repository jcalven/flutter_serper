part of 'results.dart';

/// Place review from the Serper Reviews API.
@freezed
abstract class PlaceReview with _$PlaceReview {
  /// Creates a [PlaceReview].
  const factory PlaceReview({
    /// The name of the review author.
    required String author,

    /// The URL to the author's profile.
    required String authorUrl,

    /// The text content of the review.
    ///
    /// Contains the user's feedback about the place.
    required String text,

    /// {@macro ResultDocTemplates.ratingDoc}
    required double rating,

    /// {@macro ResultDocTemplates.dateDoc}
    required String date,

    /// The unique identifier for this review.
    String? id,

    /// Whether the author is a Google Local Guide.
    ///
    /// Local Guides are trusted reviewers in the Google Maps community.
    bool? isLocalGuide,

    /// {@macro ResultDocTemplates.positionDoc}
    required int position,
  }) = _PlaceReview;

  /// Creates a [PlaceReview] from a JSON map.
  factory PlaceReview.fromJson(Map<String, dynamic> json) =>
      _$PlaceReviewFromJson(json);
}
