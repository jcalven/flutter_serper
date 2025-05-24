part of 'queries.dart';

/// Query object for the Serper Reviews API.
@freezed
abstract class ReviewsQuery with _$ReviewsQuery {
  const factory ReviewsQuery({
    /// Required Google CID parameter for the place
    required String cid,

    /// Required FID parameter for the place
    required String fid,

    /// Required Google Maps Place ID
    required String placeId,

    /// {@macro QueryDocTemplates.glDoc}
    String? gl,

    /// {@macro QueryDocTemplates.hlDoc}
    String? hl,

    /// Optional parameter to sort reviews
    ///
    /// Possible values: 'newest', 'highest_rating', 'lowest_rating', 'relevant'
    String? sortBy,

    /// Optional topic ID to filter reviews by topic
    String? topicId,

    /// Optional token for pagination
    String? nextPageToken,

    /// Optional query string to filter reviews
    String? q,
  }) = _ReviewsQuery;

  factory ReviewsQuery.fromJson(Map<String, dynamic> json) =>
      _$ReviewsQueryFromJson(json);
}
