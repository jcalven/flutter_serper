part of 'queries.dart';

/// Query object for the Serper Reviews API.
@freezed
sealed class ReviewsQuery with _$ReviewsQuery {
  const factory ReviewsQuery.withCid({
    /// {@macro QueryDocTemplates.cidDoc}
    required String cid,

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
  }) = ReviewsQueryCid;

  const factory ReviewsQuery.withFid({
    /// {@macro QueryDocTemplates.fidDoc}
    required String fid,

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
  }) = ReviewsQueryFid;

  const factory ReviewsQuery.withPlaceId({
    /// {@macro QueryDocTemplates.placeIdDoc}
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
  }) = ReviewsQueryPlaceId;

  // const factory ReviewsQuery({
  //   /// {@macro QueryDocTemplates.cidDoc}
  //   required String cid,

  //   /// {@macro QueryDocTemplates.fidDoc}
  //   required String fid,

  //   /// {@macro QueryDocTemplates.placeIdDoc}
  //   required String placeId,

  //   /// {@macro QueryDocTemplates.glDoc}
  //   String? gl,

  //   /// {@macro QueryDocTemplates.hlDoc}
  //   String? hl,

  //   /// Optional parameter to sort reviews
  //   ///
  //   /// Possible values: 'newest', 'highest_rating', 'lowest_rating', 'relevant'
  //   String? sortBy,

  //   /// Optional topic ID to filter reviews by topic
  //   String? topicId,

  //   /// Optional token for pagination
  //   String? nextPageToken,

  //   /// Optional query string to filter reviews
  //   String? q,
  // }) = _ReviewsQuery;

  factory ReviewsQuery.fromJson(Map<String, dynamic> json) =>
      _$ReviewsQueryFromJson(json);
}
