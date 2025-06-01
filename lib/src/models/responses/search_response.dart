part of 'responses.dart';

/// {@template searchResponseDocComments}
///
/// An immutable response object for the Serper Search API, describing the API response
/// by holding the [searchParameters], [organic], [knowledgeGraph], [relatedSearches], [peopleAlsoAsk], [topStories], and [credits] fields.
///
/// - [searchParameters]: The parameters used for the search.
/// - [organic]: List of organic search results returned by the API. Organic results are the main search results that match the query criteria.
/// - [knowledgeGraph]: Knowledge Graph information related to the search query, if available.
/// - [relatedSearches]: List of related search suggestions.
/// - [peopleAlsoAsk]: List of "People Also Ask" questions.
/// - [topStories]: List of top stories, if any.
/// - [credits]: The number of API credits consumed by this request.
///
/// This class is returned by Serper API methods that perform search requests.
/// {@endtemplate}
@freezed
abstract class SearchResponse extends SerperResponse<SearchQuery>
    with _$SearchResponse, ResponseUtilityMixin<SearchQuery> {
  /// {@macro searchResponseDocComments}
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

    /// List of top stories, if any
    ///
    /// Shown when the search query is related to news or current events.
    List<TopStoriesResult>? topStories,

    /// {@macro flutter_serper.responses.credits}
    required int credits,
  }) = _SearchResponse;

  factory SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseFromJson(json);
}
