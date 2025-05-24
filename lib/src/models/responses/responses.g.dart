// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchResponse _$SearchResponseFromJson(
  Map<String, dynamic> json,
) => _SearchResponse(
  searchParameters: SearchQuery.fromJson(
    json['searchParameters'] as Map<String, dynamic>,
  ),
  organic:
      (json['organic'] as List<dynamic>)
          .map((e) => OrganicResult.fromJson(e as Map<String, dynamic>))
          .toList(),
  relatedSearches:
      (json['relatedSearches'] as List<dynamic>?)
          ?.map((e) => RelatedSearchResult.fromJson(e as Map<String, dynamic>))
          .toList(),
  peopleAlsoAsk:
      (json['peopleAlsoAsk'] as List<dynamic>?)
          ?.map((e) => PeopleAlsoAskResult.fromJson(e as Map<String, dynamic>))
          .toList(),
  places:
      (json['places'] as List<dynamic>?)
          ?.map((e) => PlacesResult.fromJson(e as Map<String, dynamic>))
          .toList(),
  topStories:
      (json['topStories'] as List<dynamic>?)
          ?.map((e) => TopStoriesResult.fromJson(e as Map<String, dynamic>))
          .toList(),
  twitter:
      (json['twitter'] as List<dynamic>?)
          ?.map((e) => TwitterResult.fromJson(e as Map<String, dynamic>))
          .toList(),
  images:
      (json['images'] as List<dynamic>?)
          ?.map((e) => ImagesResult.fromJson(e as Map<String, dynamic>))
          .toList(),
  knowledgeGraph:
      json['knowledgeGraph'] == null
          ? null
          : KnowledgeGraphResult.fromJson(
            json['knowledgeGraph'] as Map<String, dynamic>,
          ),
  localResults:
      (json['localResults'] as List<dynamic>?)
          ?.map((e) => LocalResultsResult.fromJson(e as Map<String, dynamic>))
          .toList(),
  credits: (json['credits'] as num).toInt(),
);

Map<String, dynamic> _$SearchResponseToJson(_SearchResponse instance) =>
    <String, dynamic>{
      'searchParameters': instance.searchParameters,
      'credits': instance.credits,
      'organic': instance.organic,
      'relatedSearches': instance.relatedSearches,
      'peopleAlsoAsk': instance.peopleAlsoAsk,
      'places': instance.places,
      'topStories': instance.topStories,
      'twitter': instance.twitter,
      'images': instance.images,
      'knowledgeGraph': instance.knowledgeGraph,
      'localResults': instance.localResults,
    };

_ImagesResponse _$ImagesResponseFromJson(Map<String, dynamic> json) =>
    _ImagesResponse(
      searchParameters: ImagesQuery.fromJson(
        json['searchParameters'] as Map<String, dynamic>,
      ),
      images:
          (json['images'] as List<dynamic>)
              .map((e) => ImageResult.fromJson(e as Map<String, dynamic>))
              .toList(),
      knowledgeGraph:
          json['knowledgeGraph'] == null
              ? null
              : KnowledgeGraphResult.fromJson(
                json['knowledgeGraph'] as Map<String, dynamic>,
              ),
      credits: (json['credits'] as num).toInt(),
    );

Map<String, dynamic> _$ImagesResponseToJson(_ImagesResponse instance) =>
    <String, dynamic>{
      'searchParameters': instance.searchParameters,
      'credits': instance.credits,
      'images': instance.images,
      'knowledgeGraph': instance.knowledgeGraph,
    };

_PlacesResponse _$PlacesResponseFromJson(Map<String, dynamic> json) =>
    _PlacesResponse(
      searchParameters: PlacesQuery.fromJson(
        json['searchParameters'] as Map<String, dynamic>,
      ),
      places:
          (json['places'] as List<dynamic>)
              .map((e) => PlaceResult.fromJson(e as Map<String, dynamic>))
              .toList(),
      knowledgeGraph:
          json['knowledgeGraph'] == null
              ? null
              : KnowledgeGraphResult.fromJson(
                json['knowledgeGraph'] as Map<String, dynamic>,
              ),
      credits: (json['credits'] as num).toInt(),
    );

Map<String, dynamic> _$PlacesResponseToJson(_PlacesResponse instance) =>
    <String, dynamic>{
      'searchParameters': instance.searchParameters,
      'credits': instance.credits,
      'places': instance.places,
      'knowledgeGraph': instance.knowledgeGraph,
    };

_VideosResponse _$VideosResponseFromJson(Map<String, dynamic> json) =>
    _VideosResponse(
      searchParameters: VideosQuery.fromJson(
        json['searchParameters'] as Map<String, dynamic>,
      ),
      videos:
          (json['videos'] as List<dynamic>)
              .map((e) => VideoResult.fromJson(e as Map<String, dynamic>))
              .toList(),
      knowledgeGraph:
          json['knowledgeGraph'] == null
              ? null
              : KnowledgeGraphResult.fromJson(
                json['knowledgeGraph'] as Map<String, dynamic>,
              ),
      credits: (json['credits'] as num).toInt(),
    );

Map<String, dynamic> _$VideosResponseToJson(_VideosResponse instance) =>
    <String, dynamic>{
      'searchParameters': instance.searchParameters,
      'credits': instance.credits,
      'videos': instance.videos,
      'knowledgeGraph': instance.knowledgeGraph,
    };

_MapsResponse _$MapsResponseFromJson(Map<String, dynamic> json) =>
    _MapsResponse(
      searchParameters: MapsQuery.fromJson(
        json['searchParameters'] as Map<String, dynamic>,
      ),
      place: MapResult.fromJson(json['place'] as Map<String, dynamic>),
      credits: (json['credits'] as num).toInt(),
    );

Map<String, dynamic> _$MapsResponseToJson(_MapsResponse instance) =>
    <String, dynamic>{
      'searchParameters': instance.searchParameters,
      'credits': instance.credits,
      'place': instance.place,
    };

_ReviewsResponse _$ReviewsResponseFromJson(Map<String, dynamic> json) =>
    _ReviewsResponse(
      searchParameters: ReviewsQuery.fromJson(
        json['searchParameters'] as Map<String, dynamic>,
      ),
      reviews:
          (json['reviews'] as List<dynamic>)
              .map((e) => PlaceReview.fromJson(e as Map<String, dynamic>))
              .toList(),
      nextPageToken: json['nextPageToken'] as String?,
      credits: (json['credits'] as num).toInt(),
    );

Map<String, dynamic> _$ReviewsResponseToJson(_ReviewsResponse instance) =>
    <String, dynamic>{
      'searchParameters': instance.searchParameters,
      'credits': instance.credits,
      'reviews': instance.reviews,
      'nextPageToken': instance.nextPageToken,
    };

_NewsResponse _$NewsResponseFromJson(Map<String, dynamic> json) =>
    _NewsResponse(
      searchParameters: NewsQuery.fromJson(
        json['searchParameters'] as Map<String, dynamic>,
      ),
      news:
          (json['news'] as List<dynamic>)
              .map((e) => NewsResult.fromJson(e as Map<String, dynamic>))
              .toList(),
      knowledgeGraph:
          json['knowledgeGraph'] == null
              ? null
              : KnowledgeGraphResult.fromJson(
                json['knowledgeGraph'] as Map<String, dynamic>,
              ),
      credits: (json['credits'] as num).toInt(),
    );

Map<String, dynamic> _$NewsResponseToJson(_NewsResponse instance) =>
    <String, dynamic>{
      'searchParameters': instance.searchParameters,
      'credits': instance.credits,
      'news': instance.news,
      'knowledgeGraph': instance.knowledgeGraph,
    };

_ShoppingResponse _$ShoppingResponseFromJson(Map<String, dynamic> json) =>
    _ShoppingResponse(
      searchParameters: ShoppingQuery.fromJson(
        json['searchParameters'] as Map<String, dynamic>,
      ),
      shopping:
          (json['shopping'] as List<dynamic>)
              .map((e) => ShoppingResult.fromJson(e as Map<String, dynamic>))
              .toList(),
      knowledgeGraph:
          json['knowledgeGraph'] == null
              ? null
              : KnowledgeGraphResult.fromJson(
                json['knowledgeGraph'] as Map<String, dynamic>,
              ),
      credits: (json['credits'] as num).toInt(),
    );

Map<String, dynamic> _$ShoppingResponseToJson(_ShoppingResponse instance) =>
    <String, dynamic>{
      'searchParameters': instance.searchParameters,
      'credits': instance.credits,
      'shopping': instance.shopping,
      'knowledgeGraph': instance.knowledgeGraph,
    };

_LensResponse _$LensResponseFromJson(Map<String, dynamic> json) =>
    _LensResponse(
      searchParameters: LensQuery.fromJson(
        json['searchParameters'] as Map<String, dynamic>,
      ),
      organic:
          (json['organic'] as List<dynamic>)
              .map((e) => LensResult.fromJson(e as Map<String, dynamic>))
              .toList(),
      credits: (json['credits'] as num).toInt(),
    );

Map<String, dynamic> _$LensResponseToJson(_LensResponse instance) =>
    <String, dynamic>{
      'searchParameters': instance.searchParameters,
      'credits': instance.credits,
      'organic': instance.organic,
    };

_ScholarResponse _$ScholarResponseFromJson(Map<String, dynamic> json) =>
    _ScholarResponse(
      searchParameters: ScholarQuery.fromJson(
        json['searchParameters'] as Map<String, dynamic>,
      ),
      organic:
          (json['organic'] as List<dynamic>)
              .map((e) => ScholarResult.fromJson(e as Map<String, dynamic>))
              .toList(),
      credits: (json['credits'] as num).toInt(),
    );

Map<String, dynamic> _$ScholarResponseToJson(_ScholarResponse instance) =>
    <String, dynamic>{
      'searchParameters': instance.searchParameters,
      'credits': instance.credits,
      'organic': instance.organic,
    };

_PatentsResponse _$PatentsResponseFromJson(Map<String, dynamic> json) =>
    _PatentsResponse(
      searchParameters: PatentsQuery.fromJson(
        json['searchParameters'] as Map<String, dynamic>,
      ),
      organic:
          (json['organic'] as List<dynamic>)
              .map((e) => PatentResult.fromJson(e as Map<String, dynamic>))
              .toList(),
      credits: (json['credits'] as num).toInt(),
    );

Map<String, dynamic> _$PatentsResponseToJson(_PatentsResponse instance) =>
    <String, dynamic>{
      'searchParameters': instance.searchParameters,
      'credits': instance.credits,
      'organic': instance.organic,
    };

_AutocompleteResponse _$AutocompleteResponseFromJson(
  Map<String, dynamic> json,
) => _AutocompleteResponse(
  searchParameters: AutocompleteQuery.fromJson(
    json['searchParameters'] as Map<String, dynamic>,
  ),
  suggestions:
      (json['suggestions'] as List<dynamic>)
          .map(
            (e) => AutocompleteSuggestion.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  credits: (json['credits'] as num).toInt(),
);

Map<String, dynamic> _$AutocompleteResponseToJson(
  _AutocompleteResponse instance,
) => <String, dynamic>{
  'searchParameters': instance.searchParameters,
  'credits': instance.credits,
  'suggestions': instance.suggestions,
};

_WebpageResponse _$WebpageResponseFromJson(Map<String, dynamic> json) =>
    _WebpageResponse(
      results:
          (json['results'] as List<dynamic>)
              .map((e) => WebpageResult.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$WebpageResponseToJson(_WebpageResponse instance) =>
    <String, dynamic>{'results': instance.results};
