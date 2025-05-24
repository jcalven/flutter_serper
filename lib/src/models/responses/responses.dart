import 'package:flutter_serper/src/models/queries/queries.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'responses.freezed.dart';
part 'responses.g.dart';

/// Mixin containing common fields for all Serper API responses.
/// This allows us to reuse the common fields in all response classes.
mixin SerperResponseMixin<T> {
  T get searchParameters;
  int get credits;
}

/// Response for the Serper Search API.
@freezed
class SearchResponse with _$SearchResponse, SerperResponseMixin<SearchQuery> {
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

/// Organic search result.
@freezed
class OrganicResult with _$OrganicResult {
  const factory OrganicResult({
    required String title,
    required String link,
    required String snippet,
    String? date,
    double? rating,
    int? ratingCount,
    String? imageUrl,
    required int position,
    dynamic sitelinks,
  }) = _OrganicResult;

  factory OrganicResult.fromJson(Map<String, dynamic> json) =>
      _$OrganicResultFromJson(json);
}

/// Related search result.
@freezed
class RelatedSearchResult with _$RelatedSearchResult {
  const factory RelatedSearchResult({required String query}) =
      _RelatedSearchResult;

  factory RelatedSearchResult.fromJson(Map<String, dynamic> json) =>
      _$RelatedSearchResultFromJson(json);
}

/// People also ask result.
@freezed
class PeopleAlsoAskResult with _$PeopleAlsoAskResult {
  const factory PeopleAlsoAskResult({
    required String question,
    String? snippet,
    String? title,
    String? link,
  }) = _PeopleAlsoAskResult;

  factory PeopleAlsoAskResult.fromJson(Map<String, dynamic> json) =>
      _$PeopleAlsoAskResultFromJson(json);
}

/// Places result for search results.
@freezed
class PlacesResult with _$PlacesResult {
  const factory PlacesResult({
    required String title,
    required String address,
    String? phone,
    double? rating,
    int? reviewCount,
    String? website,
    String? type,
    String? priceLevel,
    List<String>? openingHours,
    int? position,
  }) = _PlacesResult;

  factory PlacesResult.fromJson(Map<String, dynamic> json) =>
      _$PlacesResultFromJson(json);
}

/// Top stories result.
@freezed
class TopStoriesResult with _$TopStoriesResult {
  const factory TopStoriesResult({
    required String title,
    required String link,
    String? date,
    String? source,
    String? imageUrl,
    String? snippet,
  }) = _TopStoriesResult;

  factory TopStoriesResult.fromJson(Map<String, dynamic> json) =>
      _$TopStoriesResultFromJson(json);
}

/// Twitter result.
@freezed
class TwitterResult with _$TwitterResult {
  const factory TwitterResult({
    String? title,
    required String link,
    String? snippet,
  }) = _TwitterResult;

  factory TwitterResult.fromJson(Map<String, dynamic> json) =>
      _$TwitterResultFromJson(json);
}

/// Images result in search response.
@freezed
class ImagesResult with _$ImagesResult {
  const factory ImagesResult({
    required String title,
    required String imageUrl,
    required String source,
    required String sourceUrl,
  }) = _ImagesResult;

  factory ImagesResult.fromJson(Map<String, dynamic> json) =>
      _$ImagesResultFromJson(json);
}

/// Knowledge graph result.
@freezed
class KnowledgeGraphResult with _$KnowledgeGraphResult {
  const factory KnowledgeGraphResult({
    required String title,
    String? type,
    String? imageUrl,
    Map<String, dynamic>? attributes,
    String? description,
    String? descriptionLink,
    String? descriptionSource,
  }) = _KnowledgeGraphResult;

  factory KnowledgeGraphResult.fromJson(Map<String, dynamic> json) =>
      _$KnowledgeGraphResultFromJson(json);
}

/// Local results result.
@freezed
class LocalResultsResult with _$LocalResultsResult {
  const factory LocalResultsResult({
    required String title,
    required String address,
    String? phone,
    String? website,
    double? rating,
    int? reviewCount,
    String? priceLevel,
    List<String>? openingHours,
    List<dynamic>? moreHours,
    required int position,
  }) = _LocalResultsResult;

  factory LocalResultsResult.fromJson(Map<String, dynamic> json) =>
      _$LocalResultsResultFromJson(json);
}

/// Response for the Serper Images API.
@freezed
class ImagesResponse with _$ImagesResponse, SerperResponseMixin<ImagesQuery> {
  const factory ImagesResponse({
    required ImagesQuery searchParameters,
    required List<ImageResult> images,
    KnowledgeGraphResult? knowledgeGraph,
    required int credits,
  }) = _ImagesResponse;

  factory ImagesResponse.fromJson(Map<String, dynamic> json) =>
      _$ImagesResponseFromJson(json);
}

/// Image result.
@freezed
class ImageResult with _$ImageResult {
  /// Creates an [ImageResult].
  const factory ImageResult({
    String? title,
    String? imageUrl,
    String? thumbnailUrl,
    String? source,
    String? sourceUrl,
    String? price,
    String? domain,
    required int position,
  }) = _ImageResult;

  /// Creates an [ImageResult] from a JSON map.
  factory ImageResult.fromJson(Map<String, dynamic> json) =>
      _$ImageResultFromJson(json);
}

/// Response for the Serper Places API.
@freezed
class PlacesResponse with _$PlacesResponse, SerperResponseMixin<PlacesQuery> {
  const factory PlacesResponse({
    required PlacesQuery searchParameters,
    required List<PlaceResult> places,
    KnowledgeGraphResult? knowledgeGraph,
    required int credits,
  }) = _PlacesResponse;

  factory PlacesResponse.fromJson(Map<String, dynamic> json) =>
      _$PlacesResponseFromJson(json);
}

/// Place result.
@freezed
class PlaceResult with _$PlaceResult {
  const factory PlaceResult({
    required String title,
    required String address,
    String? phone,
    double? rating,
    int? reviewCount,
    String? website,
    String? type,
    String? priceLevel,
    List<String>? openingHours,
    String? cid,
    required int position,
  }) = _PlaceResult;

  factory PlaceResult.fromJson(Map<String, dynamic> json) =>
      _$PlaceResultFromJson(json);
}

/// Response for the Serper Videos API.
@freezed
class VideosResponse with _$VideosResponse, SerperResponseMixin<VideosQuery> {
  const factory VideosResponse({
    required VideosQuery searchParameters,
    required List<VideoResult> videos,
    KnowledgeGraphResult? knowledgeGraph,
    required int credits,
  }) = _VideosResponse;

  factory VideosResponse.fromJson(Map<String, dynamic> json) =>
      _$VideosResponseFromJson(json);
}

/// Video result.
@freezed
class VideoResult with _$VideoResult {
  const factory VideoResult({
    required String title,
    required String link,
    String? snippet,
    String? source,
    String? channelLink,
    String? date,
    String? duration,
    required String thumbnailUrl,
    int? viewCount,
    required int position,
  }) = _VideoResult;

  factory VideoResult.fromJson(Map<String, dynamic> json) =>
      _$VideoResultFromJson(json);
}

/// Response for the Serper Maps API.
@freezed
class MapsResponse with _$MapsResponse, SerperResponseMixin<MapsQuery> {
  const factory MapsResponse({
    required MapsQuery searchParameters,
    required MapResult place,
    required int credits,
  }) = _MapsResponse;

  factory MapsResponse.fromJson(Map<String, dynamic> json) =>
      _$MapsResponseFromJson(json);
}

/// Maps result.
@freezed
class MapResult with _$MapResult {
  const factory MapResult({
    required String title,
    required String cid,
    required String address,
    required double rating,
    required int reviewCount,
    required String priceLevel,
    required String type,
    String? phone,
    String? website,
    List<String>? categories,
    List<String>? openingHours,
    List<MapResultReview>? reviews,
    List<MapResultPhoto>? photos,
    Map<String, dynamic>? additionalInfo,
    String? description,
  }) = _MapResult;

  factory MapResult.fromJson(Map<String, dynamic> json) =>
      _$MapResultFromJson(json);
}

/// Map result review.
@freezed
class MapResultReview with _$MapResultReview {
  const factory MapResultReview({
    required String author,
    required String authorUrl,
    required String text,
    required double rating,
    required String date,
  }) = _MapResultReview;

  factory MapResultReview.fromJson(Map<String, dynamic> json) =>
      _$MapResultReviewFromJson(json);
}

/// Map result photo.
@freezed
class MapResultPhoto with _$MapResultPhoto {
  const factory MapResultPhoto({
    required String imageUrl,
    required String thumbnailUrl,
  }) = _MapResultPhoto;

  factory MapResultPhoto.fromJson(Map<String, dynamic> json) =>
      _$MapResultPhotoFromJson(json);
}

/// Response for the Serper Reviews API.
@freezed
class ReviewsResponse
    with _$ReviewsResponse, SerperResponseMixin<ReviewsQuery> {
  const factory ReviewsResponse({
    required ReviewsQuery searchParameters,
    required List<PlaceReview> reviews,
    String? nextPageToken,
    required int credits,
  }) = _ReviewsResponse;

  factory ReviewsResponse.fromJson(Map<String, dynamic> json) =>
      _$ReviewsResponseFromJson(json);
}

/// Place review.
@freezed
class PlaceReview with _$PlaceReview {
  const factory PlaceReview({
    required String author,
    required String authorUrl,
    required String text,
    required double rating,
    required String date,
    String? id,
    bool? isLocalGuide,
    required int position,
  }) = _PlaceReview;

  factory PlaceReview.fromJson(Map<String, dynamic> json) =>
      _$PlaceReviewFromJson(json);
}

/// Response for the Serper News API.
@freezed
class NewsResponse with _$NewsResponse, SerperResponseMixin<NewsQuery> {
  const factory NewsResponse({
    required NewsQuery searchParameters,
    required List<NewsResult> news,
    KnowledgeGraphResult? knowledgeGraph,
    required int credits,
  }) = _NewsResponse;

  factory NewsResponse.fromJson(Map<String, dynamic> json) =>
      _$NewsResponseFromJson(json);
}

/// News result.
@freezed
class NewsResult with _$NewsResult {
  const factory NewsResult({
    required String title,
    required String link,
    required String snippet,
    required String date,
    required String source,
    String? imageUrl,
    required int position,
  }) = _NewsResult;

  factory NewsResult.fromJson(Map<String, dynamic> json) =>
      _$NewsResultFromJson(json);
}

/// Response for the Serper Shopping API.
@freezed
class ShoppingResponse
    with _$ShoppingResponse, SerperResponseMixin<ShoppingQuery> {
  const factory ShoppingResponse({
    required ShoppingQuery searchParameters,
    required List<ShoppingResult> shopping,
    KnowledgeGraphResult? knowledgeGraph,
    required int credits,
  }) = _ShoppingResponse;

  factory ShoppingResponse.fromJson(Map<String, dynamic> json) =>
      _$ShoppingResponseFromJson(json);
}

/// Shopping result.
@freezed
class ShoppingResult with _$ShoppingResult {
  const factory ShoppingResult({
    required String title,
    String? source,
    required String link,
    String? price,
    String? delivery,
    String? imageUrl,
    required int position,
  }) = _ShoppingResult;

  factory ShoppingResult.fromJson(Map<String, dynamic> json) =>
      _$ShoppingResultFromJson(json);
}

/// Response for the Serper Lens (Image Search) API.
@freezed
class LensResponse with _$LensResponse, SerperResponseMixin<LensQuery> {
  const factory LensResponse({
    required LensQuery searchParameters,
    required List<LensResult> organic,
    required int credits,
  }) = _LensResponse;

  factory LensResponse.fromJson(Map<String, dynamic> json) =>
      _$LensResponseFromJson(json);
}

/// Lens (Image Search) result.
@freezed
class LensResult with _$LensResult {
  const factory LensResult({
    required String title,
    required String source,
    required String link,
    required String imageUrl,
    required String thumbnailUrl,
  }) = _LensResult;

  factory LensResult.fromJson(Map<String, dynamic> json) =>
      _$LensResultFromJson(json);
}

/// Response for the Serper Scholar API.
@freezed
class ScholarResponse
    with _$ScholarResponse, SerperResponseMixin<ScholarQuery> {
  const factory ScholarResponse({
    required ScholarQuery searchParameters,
    required List<ScholarResult> organic,
    required int credits,
  }) = _ScholarResponse;

  factory ScholarResponse.fromJson(Map<String, dynamic> json) =>
      _$ScholarResponseFromJson(json);
}

/// Scholar result.
@freezed
class ScholarResult with _$ScholarResult {
  const factory ScholarResult({
    required String title,
    required String link,
    required String publicationInfo,
    required String snippet,
    required int year,
    required int citedBy,
    required String pdfUrl,
    required String id,
  }) = _ScholarResult;

  factory ScholarResult.fromJson(Map<String, dynamic> json) =>
      _$ScholarResultFromJson(json);
}

/// Response for the Serper Patents API.
@freezed
class PatentsResponse
    with _$PatentsResponse, SerperResponseMixin<PatentsQuery> {
  const factory PatentsResponse({
    required PatentsQuery searchParameters,
    required List<PatentResult> organic,
    required int credits,
  }) = _PatentsResponse;

  factory PatentsResponse.fromJson(Map<String, dynamic> json) =>
      _$PatentsResponseFromJson(json);
}

/// Patent result.
@freezed
class PatentResult with _$PatentResult {
  const factory PatentResult({
    required String title,
    required String snippet,
    required String link,
    required String priorityDate,
    required String filingDate,
    String? grantDate,
    required String publicationDate,
    required String inventor,
    required String assignee,
    required String publicationNumber,
    required String language,
    required String thumbnailUrl,
    String? pdfUrl,
    List<PatentFigure>? figures,
    required int position,
  }) = _PatentResult;

  factory PatentResult.fromJson(Map<String, dynamic> json) =>
      _$PatentResultFromJson(json);
}

/// Patent figure.
@freezed
class PatentFigure with _$PatentFigure {
  const factory PatentFigure({
    required String imageUrl,
    required String thumbnailUrl,
  }) = _PatentFigure;

  factory PatentFigure.fromJson(Map<String, dynamic> json) =>
      _$PatentFigureFromJson(json);
}

/// Response for the Serper Autocomplete API.
@freezed
class AutocompleteResponse
    with _$AutocompleteResponse, SerperResponseMixin<AutocompleteQuery> {
  const factory AutocompleteResponse({
    required AutocompleteQuery searchParameters,
    required List<AutocompleteSuggestion> suggestions,
    required int credits,
  }) = _AutocompleteResponse;

  factory AutocompleteResponse.fromJson(Map<String, dynamic> json) =>
      _$AutocompleteResponseFromJson(json);
}

/// Autocomplete suggestion.
@freezed
class AutocompleteSuggestion with _$AutocompleteSuggestion {
  const factory AutocompleteSuggestion({required String value}) =
      _AutocompleteSuggestion;

  factory AutocompleteSuggestion.fromJson(Map<String, dynamic> json) =>
      _$AutocompleteSuggestionFromJson(json);
}

/// Response for the Serper Webpage API (scraping).
@freezed
class WebpageResponse with _$WebpageResponse {
  const factory WebpageResponse({
    required List<WebpageResult> results,
    // Note: Webpage API has a different structure from other APIs
  }) = _WebpageResponse;

  factory WebpageResponse.fromJson(Map<String, dynamic> json) =>
      _$WebpageResponseFromJson(json);
}

/// Webpage result.
@freezed
class WebpageResult with _$WebpageResult {
  const factory WebpageResult({
    required String text,
    String? markdown,
    Map<String, dynamic>? metadata,
    required int credits,
  }) = _WebpageResult;

  factory WebpageResult.fromJson(Map<String, dynamic> json) =>
      _$WebpageResultFromJson(json);
}
