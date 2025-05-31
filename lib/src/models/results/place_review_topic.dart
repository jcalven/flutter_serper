part of 'results.dart';

/// Topic related to a group of reviews.
@freezed
abstract class PlaceReviewTopic with _$PlaceReviewTopic {
  /// Creates a [PlaceReviewTopic].
  const factory PlaceReviewTopic({
    /// The name of the topic (e.g., "pick up").
    required String name,

    /// The number of reviews associated with this topic.
    required int reviews,

    /// The unique identifier for the topic.
    required String id,
  }) = _PlaceReviewTopic;

  /// Creates a [PlaceReviewTopic] from a JSON map.
  factory PlaceReviewTopic.fromJson(Map<String, dynamic> json) =>
      _$PlaceReviewTopicFromJson(json);
}
