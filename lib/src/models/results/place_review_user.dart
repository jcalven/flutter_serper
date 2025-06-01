part of 'results.dart';

/// {@template placeReviewUserDocComments}
///
/// An immutable result object representing the user who wrote a place review.
///
/// - [name]: The user's display name.
/// - [thumbnail]: The URL to the user's profile thumbnail image.
/// - [link]: The link to the user's profile.
/// - [reviews]: The number of reviews written by the user.
/// - [photos]: The number of photos contributed by the user.
///
/// This class is used in [PlaceReview] to represent the author of a review.
/// {@endtemplate}
@freezed
abstract class PlaceReviewUser with _$PlaceReviewUser {
  /// {@macro placeReviewUserDocComments}
  /// Creates a [PlaceReviewUser].
  const factory PlaceReviewUser({
    /// The user's display name.
    required String name,

    /// The URL to the user's profile thumbnail image.
    String? thumbnail,

    /// The link to the user's profile.
    String? link,

    /// The number of reviews written by the user.
    int? reviews,

    /// The number of photos contributed by the user.
    int? photos,
  }) = _PlaceReviewUser;

  /// Creates a [PlaceReviewUser] from a JSON map.
  factory PlaceReviewUser.fromJson(Map<String, dynamic> json) =>
      _$PlaceReviewUserFromJson(json);
}
