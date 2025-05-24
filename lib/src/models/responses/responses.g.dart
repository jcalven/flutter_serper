// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchResponseImpl _$$SearchResponseImplFromJson(
  Map<String, dynamic> json,
) => _$SearchResponseImpl(
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

Map<String, dynamic> _$$SearchResponseImplToJson(
  _$SearchResponseImpl instance,
) => <String, dynamic>{
  'searchParameters': instance.searchParameters,
  'organic': instance.organic,
  'relatedSearches': instance.relatedSearches,
  'peopleAlsoAsk': instance.peopleAlsoAsk,
  'places': instance.places,
  'topStories': instance.topStories,
  'twitter': instance.twitter,
  'images': instance.images,
  'knowledgeGraph': instance.knowledgeGraph,
  'localResults': instance.localResults,
  'credits': instance.credits,
};

_$ImagesResponseImpl _$$ImagesResponseImplFromJson(Map<String, dynamic> json) =>
    _$ImagesResponseImpl(
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

Map<String, dynamic> _$$ImagesResponseImplToJson(
  _$ImagesResponseImpl instance,
) => <String, dynamic>{
  'searchParameters': instance.searchParameters,
  'images': instance.images,
  'knowledgeGraph': instance.knowledgeGraph,
  'credits': instance.credits,
};

_$PlacesResponseImpl _$$PlacesResponseImplFromJson(Map<String, dynamic> json) =>
    _$PlacesResponseImpl(
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

Map<String, dynamic> _$$PlacesResponseImplToJson(
  _$PlacesResponseImpl instance,
) => <String, dynamic>{
  'searchParameters': instance.searchParameters,
  'places': instance.places,
  'knowledgeGraph': instance.knowledgeGraph,
  'credits': instance.credits,
};

_$VideosResponseImpl _$$VideosResponseImplFromJson(Map<String, dynamic> json) =>
    _$VideosResponseImpl(
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

Map<String, dynamic> _$$VideosResponseImplToJson(
  _$VideosResponseImpl instance,
) => <String, dynamic>{
  'searchParameters': instance.searchParameters,
  'videos': instance.videos,
  'knowledgeGraph': instance.knowledgeGraph,
  'credits': instance.credits,
};

_$MapsResponseImpl _$$MapsResponseImplFromJson(Map<String, dynamic> json) =>
    _$MapsResponseImpl(
      searchParameters: MapsQuery.fromJson(
        json['searchParameters'] as Map<String, dynamic>,
      ),
      place: MapResult.fromJson(json['place'] as Map<String, dynamic>),
      credits: (json['credits'] as num).toInt(),
    );

Map<String, dynamic> _$$MapsResponseImplToJson(_$MapsResponseImpl instance) =>
    <String, dynamic>{
      'searchParameters': instance.searchParameters,
      'place': instance.place,
      'credits': instance.credits,
    };

_$ReviewsResponseImpl _$$ReviewsResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ReviewsResponseImpl(
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

Map<String, dynamic> _$$ReviewsResponseImplToJson(
  _$ReviewsResponseImpl instance,
) => <String, dynamic>{
  'searchParameters': instance.searchParameters,
  'reviews': instance.reviews,
  'nextPageToken': instance.nextPageToken,
  'credits': instance.credits,
};

_$NewsResponseImpl _$$NewsResponseImplFromJson(Map<String, dynamic> json) =>
    _$NewsResponseImpl(
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

Map<String, dynamic> _$$NewsResponseImplToJson(_$NewsResponseImpl instance) =>
    <String, dynamic>{
      'searchParameters': instance.searchParameters,
      'news': instance.news,
      'knowledgeGraph': instance.knowledgeGraph,
      'credits': instance.credits,
    };

_$ShoppingResponseImpl _$$ShoppingResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ShoppingResponseImpl(
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

Map<String, dynamic> _$$ShoppingResponseImplToJson(
  _$ShoppingResponseImpl instance,
) => <String, dynamic>{
  'searchParameters': instance.searchParameters,
  'shopping': instance.shopping,
  'knowledgeGraph': instance.knowledgeGraph,
  'credits': instance.credits,
};

_$LensResponseImpl _$$LensResponseImplFromJson(Map<String, dynamic> json) =>
    _$LensResponseImpl(
      searchParameters: LensQuery.fromJson(
        json['searchParameters'] as Map<String, dynamic>,
      ),
      organic:
          (json['organic'] as List<dynamic>)
              .map((e) => LensResult.fromJson(e as Map<String, dynamic>))
              .toList(),
      credits: (json['credits'] as num).toInt(),
    );

Map<String, dynamic> _$$LensResponseImplToJson(_$LensResponseImpl instance) =>
    <String, dynamic>{
      'searchParameters': instance.searchParameters,
      'organic': instance.organic,
      'credits': instance.credits,
    };

_$ScholarResponseImpl _$$ScholarResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ScholarResponseImpl(
  searchParameters: ScholarQuery.fromJson(
    json['searchParameters'] as Map<String, dynamic>,
  ),
  organic:
      (json['organic'] as List<dynamic>)
          .map((e) => ScholarResult.fromJson(e as Map<String, dynamic>))
          .toList(),
  credits: (json['credits'] as num).toInt(),
);

Map<String, dynamic> _$$ScholarResponseImplToJson(
  _$ScholarResponseImpl instance,
) => <String, dynamic>{
  'searchParameters': instance.searchParameters,
  'organic': instance.organic,
  'credits': instance.credits,
};

_$PatentsResponseImpl _$$PatentsResponseImplFromJson(
  Map<String, dynamic> json,
) => _$PatentsResponseImpl(
  searchParameters: PatentsQuery.fromJson(
    json['searchParameters'] as Map<String, dynamic>,
  ),
  organic:
      (json['organic'] as List<dynamic>)
          .map((e) => PatentResult.fromJson(e as Map<String, dynamic>))
          .toList(),
  credits: (json['credits'] as num).toInt(),
);

Map<String, dynamic> _$$PatentsResponseImplToJson(
  _$PatentsResponseImpl instance,
) => <String, dynamic>{
  'searchParameters': instance.searchParameters,
  'organic': instance.organic,
  'credits': instance.credits,
};

_$AutocompleteResponseImpl _$$AutocompleteResponseImplFromJson(
  Map<String, dynamic> json,
) => _$AutocompleteResponseImpl(
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

Map<String, dynamic> _$$AutocompleteResponseImplToJson(
  _$AutocompleteResponseImpl instance,
) => <String, dynamic>{
  'searchParameters': instance.searchParameters,
  'suggestions': instance.suggestions,
  'credits': instance.credits,
};

_$WebpageResponseImpl _$$WebpageResponseImplFromJson(
  Map<String, dynamic> json,
) => _$WebpageResponseImpl(
  results:
      (json['results'] as List<dynamic>)
          .map((e) => WebpageResult.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$WebpageResponseImplToJson(
  _$WebpageResponseImpl instance,
) => <String, dynamic>{'results': instance.results};
