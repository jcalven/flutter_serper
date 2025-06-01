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
  knowledgeGraph:
      json['knowledgeGraph'] == null
          ? null
          : KnowledgeGraphResult.fromJson(
            json['knowledgeGraph'] as Map<String, dynamic>,
          ),
  relatedSearches:
      (json['relatedSearches'] as List<dynamic>?)
          ?.map((e) => RelatedSearchResult.fromJson(e as Map<String, dynamic>))
          .toList(),
  peopleAlsoAsk:
      (json['peopleAlsoAsk'] as List<dynamic>?)
          ?.map((e) => PeopleAlsoAskResult.fromJson(e as Map<String, dynamic>))
          .toList(),
  topStories:
      (json['topStories'] as List<dynamic>?)
          ?.map((e) => TopStoriesResult.fromJson(e as Map<String, dynamic>))
          .toList(),
  credits: (json['credits'] as num).toInt(),
);

Map<String, dynamic> _$SearchResponseToJson(_SearchResponse instance) =>
    <String, dynamic>{
      'searchParameters': instance.searchParameters,
      'organic': instance.organic,
      'knowledgeGraph': instance.knowledgeGraph,
      'relatedSearches': instance.relatedSearches,
      'peopleAlsoAsk': instance.peopleAlsoAsk,
      'topStories': instance.topStories,
      'credits': instance.credits,
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
      credits: (json['credits'] as num).toInt(),
    );

Map<String, dynamic> _$ImagesResponseToJson(_ImagesResponse instance) =>
    <String, dynamic>{
      'searchParameters': instance.searchParameters,
      'images': instance.images,
      'credits': instance.credits,
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
      credits: (json['credits'] as num).toInt(),
    );

Map<String, dynamic> _$PlacesResponseToJson(_PlacesResponse instance) =>
    <String, dynamic>{
      'searchParameters': instance.searchParameters,
      'places': instance.places,
      'credits': instance.credits,
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
      credits: (json['credits'] as num).toInt(),
    );

Map<String, dynamic> _$VideosResponseToJson(_VideosResponse instance) =>
    <String, dynamic>{
      'searchParameters': instance.searchParameters,
      'videos': instance.videos,
      'credits': instance.credits,
    };

_MapsResponse _$MapsResponseFromJson(Map<String, dynamic> json) =>
    _MapsResponse(
      searchParameters: MapsQuery.fromJson(
        json['searchParameters'] as Map<String, dynamic>,
      ),
      latLng: _$JsonConverterFromJson<String, LatLng>(
        json['ll'],
        const LatLngConverter().fromJson,
      ),
      places:
          (json['places'] as List<dynamic>)
              .map((e) => MapResult.fromJson(e as Map<String, dynamic>))
              .toList(),
      credits: (json['credits'] as num).toInt(),
    );

Map<String, dynamic> _$MapsResponseToJson(_MapsResponse instance) =>
    <String, dynamic>{
      'searchParameters': instance.searchParameters,
      'll': _$JsonConverterToJson<String, LatLng>(
        instance.latLng,
        const LatLngConverter().toJson,
      ),
      'places': instance.places,
      'credits': instance.credits,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

_ReviewsResponse _$ReviewsResponseFromJson(Map<String, dynamic> json) =>
    _ReviewsResponse(
      searchParameters: ReviewsQuery.fromJson(
        json['searchParameters'] as Map<String, dynamic>,
      ),
      reviews:
          (json['reviews'] as List<dynamic>)
              .map((e) => PlaceReview.fromJson(e as Map<String, dynamic>))
              .toList(),
      topics:
          (json['topics'] as List<dynamic>?)
              ?.map((e) => PlaceReviewTopic.fromJson(e as Map<String, dynamic>))
              .toList(),
      nextPageToken: json['nextPageToken'] as String?,
      credits: (json['credits'] as num).toInt(),
    );

Map<String, dynamic> _$ReviewsResponseToJson(_ReviewsResponse instance) =>
    <String, dynamic>{
      'searchParameters': instance.searchParameters,
      'reviews': instance.reviews,
      'topics': instance.topics,
      'nextPageToken': instance.nextPageToken,
      'credits': instance.credits,
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
      credits: (json['credits'] as num).toInt(),
    );

Map<String, dynamic> _$NewsResponseToJson(_NewsResponse instance) =>
    <String, dynamic>{
      'searchParameters': instance.searchParameters,
      'news': instance.news,
      'credits': instance.credits,
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
      credits: (json['credits'] as num).toInt(),
    );

Map<String, dynamic> _$ShoppingResponseToJson(_ShoppingResponse instance) =>
    <String, dynamic>{
      'searchParameters': instance.searchParameters,
      'shopping': instance.shopping,
      'credits': instance.credits,
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
      'organic': instance.organic,
      'credits': instance.credits,
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
      'organic': instance.organic,
      'credits': instance.credits,
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
      'organic': instance.organic,
      'credits': instance.credits,
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
  'suggestions': instance.suggestions,
  'credits': instance.credits,
};

_WebpageResponse _$WebpageResponseFromJson(Map<String, dynamic> json) =>
    _WebpageResponse(
      results: WebpageResult.fromJson(json['results'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WebpageResponseToJson(_WebpageResponse instance) =>
    <String, dynamic>{'results': instance.results};
