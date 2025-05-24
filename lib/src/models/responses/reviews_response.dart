part of 'responses.dart';

/// Response for the Serper Reviews API.
@freezed
class ReviewsResponse
    with _$ReviewsResponse, SerperResponseMixin<ReviewsQuery> {
  const factory ReviewsResponse({
    required ReviewsQuery searchParameters,
    required List<PlaceReview> reviews,
    String? nextPageToken,
    required int credits,
  }) = _ReviewsResponse;

  factory ReviewsResponse.fromJson(Map<String, dynamic> json) =>
      _$ReviewsResponseFromJson(json);
}
