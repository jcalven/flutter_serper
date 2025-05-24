part of 'responses.dart';

/// Response for the Serper Reviews API.
@freezed
abstract class ReviewsResponse extends SerperResponse<ReviewsQuery>
    with _$ReviewsResponse {
  const ReviewsResponse._({
    required super.searchParameters,
    required super.credits,
  });
  const factory ReviewsResponse({
    required ReviewsQuery searchParameters,
    required List<PlaceReview> reviews,
    String? nextPageToken,
    required int credits,
  }) = _ReviewsResponse;

  factory ReviewsResponse.fromJson(Map<String, dynamic> json) =>
      _$ReviewsResponseFromJson(json);
}
