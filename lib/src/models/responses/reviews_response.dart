part of 'responses.dart';

/// Response for the Serper Reviews API.
@freezed
abstract class ReviewsResponse extends SerperResponse<ReviewsQuery>
    with _$ReviewsResponse, ResponseUtilityMixin<ReviewsQuery> {
  const ReviewsResponse._(
    //   {
    //   required super.searchParameters,
    //   required super.credits,
    // }
  );

  const factory ReviewsResponse({
    /// {@macro ResponseDocTemplates.searchParametersDoc}
    required ReviewsQuery searchParameters,

    /// List of place reviews returned by the API
    ///
    /// Contains reviews for the specified place.
    required List<PlaceReview> reviews,

    /// Token for fetching the next page of reviews
    ///
    /// If more reviews are available, this token can be used to fetch the next batch.
    String? nextPageToken,

    /// {@macro ResponseDocTemplates.creditsDoc}
    required int credits,
  }) = _ReviewsResponse;

  factory ReviewsResponse.fromJson(Map<String, dynamic> json) =>
      _$ReviewsResponseFromJson(json);
}
