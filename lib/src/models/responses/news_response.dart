part of 'responses.dart';

/// Response for the Serper News API.
@freezed
abstract class NewsResponse extends SerperResponse<NewsQuery>
    with _$NewsResponse, ResponseUtilityMixin<NewsQuery> {
  const NewsResponse._();

  const factory NewsResponse({
    /// {@macro flutter_serper.responses.searchParameters}
    required NewsQuery searchParameters,

    /// List of news results returned by the API
    ///
    /// Contains news articles that match the search query.
    required List<NewsResult> news,

    /// {@macro flutter_serper.responses.knowledgeGraph}
    KnowledgeGraphResult? knowledgeGraph,

    /// {@macro flutter_serper.responses.credits}
    required int credits,
  }) = _NewsResponse;

  factory NewsResponse.fromJson(Map<String, dynamic> json) =>
      _$NewsResponseFromJson(json);
}
