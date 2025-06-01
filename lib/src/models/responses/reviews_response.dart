part of 'responses.dart';

/// {@template reviewsResponseDocComments}
///
/// An immutable response object for the Serper Reviews API, describing the API response
/// by holding the [searchParameters], [reviews], [topics], [nextPageToken], and [credits] fields.
///
/// - [searchParameters]: The parameters used for the reviews search.
/// - [reviews]: List of place reviews returned by the API. Contains reviews for the specified place.
/// - [topics]: List of topics related to the reviews.
/// - [nextPageToken]: Token for fetching the next page of reviews, if more reviews are available.
/// - [credits]: The number of API credits consumed by this request.
///
/// This class is returned by Serper API methods that perform reviews search requests.
/// {@endtemplate}
@freezed
abstract class ReviewsResponse extends SerperResponse<ReviewsQuery>
    with _$ReviewsResponse, ResponseUtilityMixin<ReviewsQuery> {
  /// {@macro reviewsResponseDocComments}
  const ReviewsResponse._();

  const factory ReviewsResponse({
    /// {@macro flutter_serper.responses.searchParameters}
    required ReviewsQuery searchParameters,

    /// List of place reviews returned by the API
    ///
    /// Contains reviews for the specified place.
    required List<PlaceReview> reviews,

    /// List of topics related to the reviews
    List<PlaceReviewTopic>? topics,

    /// Token for fetching the next page of reviews
    ///
    /// If more reviews are available, this token can be used to fetch the next batch.
    String? nextPageToken,

    /// {@macro flutter_serper.responses.credits}
    required int credits,
  }) = _ReviewsResponse;

  factory ReviewsResponse.fromJson(Map<String, dynamic> json) =>
      _$ReviewsResponseFromJson(json);
}
