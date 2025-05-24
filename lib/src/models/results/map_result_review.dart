part of 'results.dart';

/// Review associated with a map result from the Serper Maps API.
@freezed
abstract class MapResultReview with _$MapResultReview {
  /// Creates a [MapResultReview].
  const factory MapResultReview({
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
  }) = _MapResultReview;

  /// Creates a [MapResultReview] from a JSON map.
  factory MapResultReview.fromJson(Map<String, dynamic> json) =>
      _$MapResultReviewFromJson(json);
}
