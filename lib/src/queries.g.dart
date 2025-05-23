// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchQuery _$SearchQueryFromJson(Map<String, dynamic> json) => _SearchQuery(
  q: json['q'] as String,
  location: json['location'] as String?,
  gl: json['gl'] as String?,
  hl: json['hl'] as String?,
  num: (json['num'] as num?)?.toInt(),
  autocorrect: json['autocorrect'] as bool?,
  tbs: json['tbs'] as String?,
  page: (json['page'] as num?)?.toInt(),
);

Map<String, dynamic> _$SearchQueryToJson(_SearchQuery instance) =>
    <String, dynamic>{
      'q': instance.q,
      'location': instance.location,
      'gl': instance.gl,
      'hl': instance.hl,
      'num': instance.num,
      'autocorrect': instance.autocorrect,
      'tbs': instance.tbs,
      'page': instance.page,
    };

_ImagesQuery _$ImagesQueryFromJson(Map<String, dynamic> json) => _ImagesQuery(
  q: json['q'] as String,
  location: json['location'] as String?,
  gl: json['gl'] as String?,
  hl: json['hl'] as String?,
  num: (json['num'] as num?)?.toInt(),
  autocorrect: json['autocorrect'] as bool?,
  tbs: json['tbs'] as String?,
  page: (json['page'] as num?)?.toInt(),
);

Map<String, dynamic> _$ImagesQueryToJson(_ImagesQuery instance) =>
    <String, dynamic>{
      'q': instance.q,
      'location': instance.location,
      'gl': instance.gl,
      'hl': instance.hl,
      'num': instance.num,
      'autocorrect': instance.autocorrect,
      'tbs': instance.tbs,
      'page': instance.page,
    };

_PlacesQuery _$PlacesQueryFromJson(Map<String, dynamic> json) => _PlacesQuery(
  q: json['q'] as String,
  location: json['location'] as String?,
  gl: json['gl'] as String?,
  hl: json['hl'] as String?,
  autocorrect: json['autocorrect'] as bool?,
  tbs: json['tbs'] as String?,
  page: (json['page'] as num?)?.toInt(),
);

Map<String, dynamic> _$PlacesQueryToJson(_PlacesQuery instance) =>
    <String, dynamic>{
      'q': instance.q,
      'location': instance.location,
      'gl': instance.gl,
      'hl': instance.hl,
      'autocorrect': instance.autocorrect,
      'tbs': instance.tbs,
      'page': instance.page,
    };

_VideosQuery _$VideosQueryFromJson(Map<String, dynamic> json) => _VideosQuery(
  q: json['q'] as String,
  location: json['location'] as String?,
  gl: json['gl'] as String?,
  hl: json['hl'] as String?,
  num: (json['num'] as num?)?.toInt(),
  autocorrect: json['autocorrect'] as bool?,
  tbs: json['tbs'] as String?,
  page: (json['page'] as num?)?.toInt(),
);

Map<String, dynamic> _$VideosQueryToJson(_VideosQuery instance) =>
    <String, dynamic>{
      'q': instance.q,
      'location': instance.location,
      'gl': instance.gl,
      'hl': instance.hl,
      'num': instance.num,
      'autocorrect': instance.autocorrect,
      'tbs': instance.tbs,
      'page': instance.page,
    };

_MapsQuery _$MapsQueryFromJson(Map<String, dynamic> json) => _MapsQuery(
  q: json['q'] as String,
  hl: json['hl'] as String?,
  ll: json['ll'] as String?,
  placeId: json['placeId'] as String?,
  cid: json['cid'] as String?,
  page: (json['page'] as num?)?.toInt(),
);

Map<String, dynamic> _$MapsQueryToJson(_MapsQuery instance) =>
    <String, dynamic>{
      'q': instance.q,
      'hl': instance.hl,
      'll': instance.ll,
      'placeId': instance.placeId,
      'cid': instance.cid,
      'page': instance.page,
    };

_ReviewsQuery _$ReviewsQueryFromJson(Map<String, dynamic> json) =>
    _ReviewsQuery(
      cid: json['cid'] as String,
      fid: json['fid'] as String,
      placeId: json['placeId'] as String,
      gl: json['gl'] as String?,
      hl: json['hl'] as String?,
      sortBy: json['sortBy'] as String?,
      topicId: json['topicId'] as String?,
      nextPageToken: json['nextPageToken'] as String?,
      q: json['q'] as String?,
    );

Map<String, dynamic> _$ReviewsQueryToJson(_ReviewsQuery instance) =>
    <String, dynamic>{
      'cid': instance.cid,
      'fid': instance.fid,
      'placeId': instance.placeId,
      'gl': instance.gl,
      'hl': instance.hl,
      'sortBy': instance.sortBy,
      'topicId': instance.topicId,
      'nextPageToken': instance.nextPageToken,
      'q': instance.q,
    };

_NewsQuery _$NewsQueryFromJson(Map<String, dynamic> json) => _NewsQuery(
  q: json['q'] as String,
  location: json['location'] as String?,
  gl: json['gl'] as String?,
  hl: json['hl'] as String?,
  num: (json['num'] as num?)?.toInt(),
  autocorrect: json['autocorrect'] as bool?,
  tbs: json['tbs'] as String?,
  page: (json['page'] as num?)?.toInt(),
);

Map<String, dynamic> _$NewsQueryToJson(_NewsQuery instance) =>
    <String, dynamic>{
      'q': instance.q,
      'location': instance.location,
      'gl': instance.gl,
      'hl': instance.hl,
      'num': instance.num,
      'autocorrect': instance.autocorrect,
      'tbs': instance.tbs,
      'page': instance.page,
    };

_ShoppingQuery _$ShoppingQueryFromJson(Map<String, dynamic> json) =>
    _ShoppingQuery(
      q: json['q'] as String,
      location: json['location'] as String?,
      gl: json['gl'] as String?,
      hl: json['hl'] as String?,
      autocorrect: json['autocorrect'] as bool?,
      tbs: json['tbs'] as String?,
      page: (json['page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ShoppingQueryToJson(_ShoppingQuery instance) =>
    <String, dynamic>{
      'q': instance.q,
      'location': instance.location,
      'gl': instance.gl,
      'hl': instance.hl,
      'autocorrect': instance.autocorrect,
      'tbs': instance.tbs,
      'page': instance.page,
    };

_LensQuery _$LensQueryFromJson(Map<String, dynamic> json) => _LensQuery(
  url: json['url'] as String,
  location: json['location'] as String?,
  gl: json['gl'] as String?,
  hl: json['hl'] as String?,
  tbs: json['tbs'] as String?,
  q: json['q'] as String?,
);

Map<String, dynamic> _$LensQueryToJson(_LensQuery instance) =>
    <String, dynamic>{
      'url': instance.url,
      'location': instance.location,
      'gl': instance.gl,
      'hl': instance.hl,
      'tbs': instance.tbs,
      'q': instance.q,
    };

_ScholarQuery _$ScholarQueryFromJson(Map<String, dynamic> json) =>
    _ScholarQuery(
      q: json['q'] as String,
      location: json['location'] as String?,
      gl: json['gl'] as String?,
      hl: json['hl'] as String?,
      autocorrect: json['autocorrect'] as bool?,
      tbs: json['tbs'] as String?,
      page: (json['page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ScholarQueryToJson(_ScholarQuery instance) =>
    <String, dynamic>{
      'q': instance.q,
      'location': instance.location,
      'gl': instance.gl,
      'hl': instance.hl,
      'autocorrect': instance.autocorrect,
      'tbs': instance.tbs,
      'page': instance.page,
    };

_PatentsQuery _$PatentsQueryFromJson(Map<String, dynamic> json) =>
    _PatentsQuery(
      q: json['q'] as String,
      location: json['location'] as String?,
      gl: json['gl'] as String?,
      hl: json['hl'] as String?,
      num: (json['num'] as num?)?.toInt(),
      autocorrect: json['autocorrect'] as bool?,
      tbs: json['tbs'] as String?,
      page: (json['page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PatentsQueryToJson(_PatentsQuery instance) =>
    <String, dynamic>{
      'q': instance.q,
      'location': instance.location,
      'gl': instance.gl,
      'hl': instance.hl,
      'num': instance.num,
      'autocorrect': instance.autocorrect,
      'tbs': instance.tbs,
      'page': instance.page,
    };

_AutocompleteQuery _$AutocompleteQueryFromJson(Map<String, dynamic> json) =>
    _AutocompleteQuery(
      q: json['q'] as String,
      location: json['location'] as String?,
      gl: json['gl'] as String?,
      hl: json['hl'] as String?,
    );

Map<String, dynamic> _$AutocompleteQueryToJson(_AutocompleteQuery instance) =>
    <String, dynamic>{
      'q': instance.q,
      'location': instance.location,
      'gl': instance.gl,
      'hl': instance.hl,
    };

_WebpageQuery _$WebpageQueryFromJson(Map<String, dynamic> json) =>
    _WebpageQuery(
      url: json['url'] as String,
      includeMarkdown: json['includeMarkdown'] as bool?,
      q: json['q'] as String?,
    );

Map<String, dynamic> _$WebpageQueryToJson(_WebpageQuery instance) =>
    <String, dynamic>{
      'url': instance.url,
      'includeMarkdown': instance.includeMarkdown,
      'q': instance.q,
    };
