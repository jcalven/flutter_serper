part of 'responses.dart';

/// Response for the Serper Search API.
@freezed
abstract class SearchResponse extends SerperResponse<SearchQuery>
    with _$SearchResponse, ResponseUtilityMixin<SearchQuery> {
  const SearchResponse._(
    //   {
    //   required super.searchParameters,
    //   required super.credits,
    // }
  );

  const factory SearchResponse({
    /// {@macro ResponseDocTemplates.searchParametersDoc}
    required SearchQuery searchParameters,

    /// {@macro ResponseDocTemplates.organicDoc}
    required List<OrganicResult> organic,

    /// List of related search suggestions
    ///
    /// Contains search terms related to the original query.
    List<RelatedSearchResult>? relatedSearches,

    /// List of "People Also Ask" questions
    ///
    /// Contains common questions related to the search query.
    List<PeopleAlsoAskResult>? peopleAlsoAsk,

    /// List of place results, if any
    ///
    /// Shown when the search query is related to places.
    List<PlacesResult>? places,

    /// List of top stories, if any
    ///
    /// Shown when the search query is related to news or current events.
    List<TopStoriesResult>? topStories,

    /// List of Twitter results, if any
    ///
    /// Shown when the search query is related to Twitter content.
    List<TwitterResult>? twitter,

    /// List of image results, if any
    ///
    /// Shown when the search query is related to images.
    List<ImagesResult>? images,

    /// {@macro ResponseDocTemplates.knowledgeGraphDoc}
    KnowledgeGraphResult? knowledgeGraph,

    /// List of local business results, if any
    ///
    /// Shown when the search query is related to local businesses.
    List<LocalResultsResult>? localResults,

    /// {@macro ResponseDocTemplates.creditsDoc}
    required int credits,
  }) = _SearchResponse;

  factory SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseFromJson(json);
}
