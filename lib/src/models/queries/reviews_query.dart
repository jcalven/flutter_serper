part of 'queries.dart';

/// Query object for the Serper Reviews API.
@freezed
class ReviewsQuery with _$ReviewsQuery {
  const factory ReviewsQuery({
    required String cid,
    required String fid,
    required String placeId,
    String? gl,
    String? hl,
    String? sortBy,
    String? topicId,
    String? nextPageToken,
    String? q,
  }) = _ReviewsQuery;

  factory ReviewsQuery.fromJson(Map<String, dynamic> json) =>
      _$ReviewsQueryFromJson(json);
}
