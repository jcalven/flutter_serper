part of 'responses.dart';

/// {@template newsResponseDocComments}
///
/// An immutable response object for the Serper News API, describing the API response
/// by holding the [searchParameters], [news], and [credits] fields.
///
/// - [searchParameters]: The parameters used for the news search.
/// - [news]: List of news results returned by the API. Contains news articles that match the search query.
/// - [credits]: The number of API credits consumed by this request.
///
/// This class is returned by Serper API methods that perform news search requests.
/// {@endtemplate}
@freezed
abstract class NewsResponse extends SerperResponse<NewsQuery>
    with _$NewsResponse, ResponseUtilityMixin<NewsQuery> {
  /// {@macro newsResponseDocComments}
  const NewsResponse._();

  const factory NewsResponse({
    /// {@macro flutter_serper.responses.searchParameters}
    required NewsQuery searchParameters,

    /// List of news results returned by the API
    ///
    /// Contains news articles that match the search query.
    required List<NewsResult> news,

    /// {@macro flutter_serper.responses.credits}
    required int credits,
  }) = _NewsResponse;

  factory NewsResponse.fromJson(Map<String, dynamic> json) =>
      _$NewsResponseFromJson(json);
}
