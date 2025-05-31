part of 'results.dart';

/// The user who wrote a place review.
@freezed
abstract class PlaceReviewUser with _$PlaceReviewUser {
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
