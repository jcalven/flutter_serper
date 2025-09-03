part of 'results.dart';

/// {@template placeReviewTopicDocComments}
///
/// An immutable result object representing a topic related to a group of reviews.
///
/// - [name]: The name of the topic (e.g., "pick up").
/// - [reviews]: The number of reviews associated with this topic.
/// - [id]: The unique identifier for the topic.
///
/// This class is used in [ReviewsResponse] to represent topics related to reviews.
/// {@endtemplate}
@freezed
abstract class PlaceReviewTopic with _$PlaceReviewTopic {
  /// {@macro placeReviewTopicDocComments}
  /// Creates a [PlaceReviewTopic].
  const factory PlaceReviewTopic({
    /// The name of the topic (e.g., "pick up").
    String? name,

    /// The number of reviews associated with this topic.
    int? reviews,

    /// The unique identifier for the topic.
    String? id,
  }) = _PlaceReviewTopic;

  /// Creates a [PlaceReviewTopic] from a JSON map.
  factory PlaceReviewTopic.fromJson(Map<String, dynamic> json) =>
      _$PlaceReviewTopicFromJson(json);
}
