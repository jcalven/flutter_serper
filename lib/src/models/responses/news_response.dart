part of 'responses.dart';

/// Response for the Serper News API.
@freezed
abstract class NewsResponse extends SerperResponse<NewsQuery>
    with _$NewsResponse, ResponseUtilityMixin<NewsQuery> {
  const NewsResponse._(
    //   {
    //   required super.searchParameters,
    //   required super.credits,
    // }
  );

  const factory NewsResponse({
    /// {@macro ResponseDocTemplates.searchParametersDoc}
    required NewsQuery searchParameters,

    /// List of news results returned by the API
    ///
    /// Contains news articles that match the search query.
    required List<NewsResult> news,

    /// {@macro ResponseDocTemplates.knowledgeGraphDoc}
    KnowledgeGraphResult? knowledgeGraph,

    /// {@macro ResponseDocTemplates.creditsDoc}
    required int credits,
  }) = _NewsResponse;

  factory NewsResponse.fromJson(Map<String, dynamic> json) =>
      _$NewsResponseFromJson(json);
}
