part of 'responses.dart';

/// Response for the Serper Search API.
@freezed
abstract class SearchResponse extends SerperResponse<SearchQuery>
    with _$SearchResponse, ResponseUtilityMixin<SearchQuery> {
  const SearchResponse._();

  const factory SearchResponse({
    /// {@macro flutter_serper.responses.searchParameters}
    required SearchQuery searchParameters,

    /// {@template flutter_serper.responses.organic}
    /// List of organic search results returned by the API.
    ///
    /// Organic results are the main search results that match the query criteria,
    /// similar to the standard results you would see in a search engine.
    /// {@endtemplate}
    required List<OrganicResult> organic,

    /// {@template flutter_serper.responses.knowledgeGraph}
    /// Knowledge Graph information related to the search query, if available.
    ///
    /// The Knowledge Graph provides structured information about the entity
    /// being searched for, such as a person, place, organization, or concept.
    /// {@endtemplate}
    KnowledgeGraphResult? knowledgeGraph,

    /// List of related search suggestions
    ///
    /// Contains search terms related to the original query.
    List<RelatedSearchResult>? relatedSearches,

    /// List of "People Also Ask" questions
    ///
    /// Contains common questions related to the search query.
    List<PeopleAlsoAskResult>? peopleAlsoAsk,

    // /// List of place results, if any
    // ///
    // /// Shown when the search query is related to places.
    // List<PlacesResult>? places,

    /// List of top stories, if any
    ///
    /// Shown when the search query is related to news or current events.
    List<TopStoriesResult>? topStories,

    // /// List of Twitter results, if any
    // ///
    // /// Shown when the search query is related to Twitter content.
    // List<TwitterResult>? twitter,

    // /// List of image results, if any
    // ///
    // /// Shown when the search query is related to images.
    // List<ImagesResult>? images,

    // /// List of local business results, if any
    // ///
    // /// Shown when the search query is related to local businesses.
    // List<LocalResultsResult>? localResults,

    /// {@macro flutter_serper.responses.credits}
    required int credits,
  }) = _SearchResponse;

  factory SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseFromJson(json);
}
