part of 'responses.dart';

/// Response for the Serper Search API.
@freezed
abstract class SearchResponse extends SerperResponse<SearchQuery>
    with _$SearchResponse {
  const SearchResponse._({
    required super.searchParameters,
    required super.credits,
  });
  const factory SearchResponse({
    required SearchQuery searchParameters,
    required List<OrganicResult> organic,
    List<RelatedSearchResult>? relatedSearches,
    List<PeopleAlsoAskResult>? peopleAlsoAsk,
    List<PlacesResult>? places,
    List<TopStoriesResult>? topStories,
    List<TwitterResult>? twitter,
    List<ImagesResult>? images,
    KnowledgeGraphResult? knowledgeGraph,
    List<LocalResultsResult>? localResults,
    required int credits,
  }) = _SearchResponse;

  factory SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseFromJson(json);
}
