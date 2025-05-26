// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AutocompleteQuery _$AutocompleteQueryFromJson(Map<String, dynamic> json) =>
    _AutocompleteQuery(
      q: json['q'] as String,
      location: json['location'] as String?,
      countryCode: $enumDecodeNullable(_$CountryCodeEnumMap, json['gl']),
      languageCode: $enumDecodeNullable(_$LanguageCodeEnumMap, json['hl']),
    );

Map<String, dynamic> _$AutocompleteQueryToJson(_AutocompleteQuery instance) =>
    <String, dynamic>{
      'q': instance.q,
      'location': instance.location,
      'gl': _$CountryCodeEnumMap[instance.countryCode],
      'hl': _$LanguageCodeEnumMap[instance.languageCode],
    };

const _$CountryCodeEnumMap = {
  CountryCode.afghanistan: 'af',
  CountryCode.albania: 'al',
  CountryCode.algeria: 'dz',
};

const _$LanguageCodeEnumMap = {
  LanguageCode.afrikaans: 'af',
  LanguageCode.albanian: 'sq',
  LanguageCode.amharic: 'am',
};

_ImagesQuery _$ImagesQueryFromJson(Map<String, dynamic> json) => _ImagesQuery(
  q: json['q'] as String,
  location: json['location'] as String?,
  countryCode: $enumDecodeNullable(_$CountryCodeEnumMap, json['gl']),
  languageCode: $enumDecodeNullable(_$LanguageCodeEnumMap, json['hl']),
  num: (json['num'] as num?)?.toInt(),
  autocorrect: json['autocorrect'] as bool?,
  tbs: $enumDecodeNullable(_$TbsValueEnumMap, json['tbs']),
  page: (json['page'] as num?)?.toInt(),
);

Map<String, dynamic> _$ImagesQueryToJson(_ImagesQuery instance) =>
    <String, dynamic>{
      'q': instance.q,
      'location': instance.location,
      'gl': _$CountryCodeEnumMap[instance.countryCode],
      'hl': _$LanguageCodeEnumMap[instance.languageCode],
      'num': instance.num,
      'autocorrect': instance.autocorrect,
      'tbs': _$TbsValueEnumMap[instance.tbs],
      'page': instance.page,
    };

const _$TbsValueEnumMap = {
  TbsValue.pastHour: 'qdr:h',
  TbsValue.pastDay: 'qdr:d',
  TbsValue.pastWeek: 'qdr:w',
  TbsValue.pastMonth: 'qdr:m',
  TbsValue.pastYear: 'qdr:y',
};

_PlacesQuery _$PlacesQueryFromJson(Map<String, dynamic> json) => _PlacesQuery(
  q: json['q'] as String,
  location: json['location'] as String?,
  countryCode: $enumDecodeNullable(_$CountryCodeEnumMap, json['gl']),
  languageCode: $enumDecodeNullable(_$LanguageCodeEnumMap, json['hl']),
  autocorrect: json['autocorrect'] as bool?,
  tbs: $enumDecodeNullable(_$TbsValueEnumMap, json['tbs']),
  page: (json['page'] as num?)?.toInt(),
);

Map<String, dynamic> _$PlacesQueryToJson(_PlacesQuery instance) =>
    <String, dynamic>{
      'q': instance.q,
      'location': instance.location,
      'gl': _$CountryCodeEnumMap[instance.countryCode],
      'hl': _$LanguageCodeEnumMap[instance.languageCode],
      'autocorrect': instance.autocorrect,
      'tbs': _$TbsValueEnumMap[instance.tbs],
      'page': instance.page,
    };

_VideosQuery _$VideosQueryFromJson(Map<String, dynamic> json) => _VideosQuery(
  q: json['q'] as String,
  location: json['location'] as String?,
  countryCode: $enumDecodeNullable(_$CountryCodeEnumMap, json['gl']),
  languageCode: $enumDecodeNullable(_$LanguageCodeEnumMap, json['hl']),
  num: (json['num'] as num?)?.toInt(),
  autocorrect: json['autocorrect'] as bool?,
  tbs: $enumDecodeNullable(_$TbsValueEnumMap, json['tbs']),
  page: (json['page'] as num?)?.toInt(),
);

Map<String, dynamic> _$VideosQueryToJson(_VideosQuery instance) =>
    <String, dynamic>{
      'q': instance.q,
      'location': instance.location,
      'gl': _$CountryCodeEnumMap[instance.countryCode],
      'hl': _$LanguageCodeEnumMap[instance.languageCode],
      'num': instance.num,
      'autocorrect': instance.autocorrect,
      'tbs': _$TbsValueEnumMap[instance.tbs],
      'page': instance.page,
    };

_MapsQuery _$MapsQueryFromJson(Map<String, dynamic> json) => _MapsQuery(
  q: json['q'] as String,
  languageCode: $enumDecodeNullable(_$LanguageCodeEnumMap, json['hl']),
  latLng: _$JsonConverterFromJson<String, LatLng>(
    json['ll'],
    const LatLngConverter().fromJson,
  ),
  placeId: json['placeId'] as String?,
  cid: json['cid'] as String?,
  page: (json['page'] as num?)?.toInt(),
);

Map<String, dynamic> _$MapsQueryToJson(_MapsQuery instance) =>
    <String, dynamic>{
      'q': instance.q,
      'hl': _$LanguageCodeEnumMap[instance.languageCode],
      'll': _$JsonConverterToJson<String, LatLng>(
        instance.latLng,
        const LatLngConverter().toJson,
      ),
      'placeId': instance.placeId,
      'cid': instance.cid,
      'page': instance.page,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

ReviewsQueryCid _$ReviewsQueryCidFromJson(Map<String, dynamic> json) =>
    ReviewsQueryCid(
      cid: json['cid'] as String,
      countryCode: $enumDecodeNullable(_$CountryCodeEnumMap, json['gl']),
      languageCode: $enumDecodeNullable(_$LanguageCodeEnumMap, json['hl']),
      sortBy: $enumDecodeNullable(_$SortByValueEnumMap, json['sortBy']),
      topicId: json['topicId'] as String?,
      nextPageToken: json['nextPageToken'] as String?,
      q: json['q'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ReviewsQueryCidToJson(ReviewsQueryCid instance) =>
    <String, dynamic>{
      'cid': instance.cid,
      'gl': _$CountryCodeEnumMap[instance.countryCode],
      'hl': _$LanguageCodeEnumMap[instance.languageCode],
      'sortBy': _$SortByValueEnumMap[instance.sortBy],
      'topicId': instance.topicId,
      'nextPageToken': instance.nextPageToken,
      'q': instance.q,
      'runtimeType': instance.$type,
    };

const _$SortByValueEnumMap = {
  SortByValue.newest: 'newest',
  SortByValue.highestRating: 'highest_rating',
  SortByValue.lowestRating: 'lowest_rating',
  SortByValue.relevant: 'relevant',
};

ReviewsQueryFid _$ReviewsQueryFidFromJson(Map<String, dynamic> json) =>
    ReviewsQueryFid(
      fid: json['fid'] as String,
      countryCode: $enumDecodeNullable(_$CountryCodeEnumMap, json['gl']),
      languageCode: $enumDecodeNullable(_$LanguageCodeEnumMap, json['hl']),
      sortBy: $enumDecodeNullable(_$SortByValueEnumMap, json['sortBy']),
      topicId: json['topicId'] as String?,
      nextPageToken: json['nextPageToken'] as String?,
      q: json['q'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ReviewsQueryFidToJson(ReviewsQueryFid instance) =>
    <String, dynamic>{
      'fid': instance.fid,
      'gl': _$CountryCodeEnumMap[instance.countryCode],
      'hl': _$LanguageCodeEnumMap[instance.languageCode],
      'sortBy': _$SortByValueEnumMap[instance.sortBy],
      'topicId': instance.topicId,
      'nextPageToken': instance.nextPageToken,
      'q': instance.q,
      'runtimeType': instance.$type,
    };

ReviewsQueryPlaceId _$ReviewsQueryPlaceIdFromJson(Map<String, dynamic> json) =>
    ReviewsQueryPlaceId(
      placeId: json['placeId'] as String,
      countryCode: $enumDecodeNullable(_$CountryCodeEnumMap, json['gl']),
      languageCode: $enumDecodeNullable(_$LanguageCodeEnumMap, json['hl']),
      sortBy: $enumDecodeNullable(_$SortByValueEnumMap, json['sortBy']),
      topicId: json['topicId'] as String?,
      nextPageToken: json['nextPageToken'] as String?,
      q: json['q'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ReviewsQueryPlaceIdToJson(
  ReviewsQueryPlaceId instance,
) => <String, dynamic>{
  'placeId': instance.placeId,
  'gl': _$CountryCodeEnumMap[instance.countryCode],
  'hl': _$LanguageCodeEnumMap[instance.languageCode],
  'sortBy': _$SortByValueEnumMap[instance.sortBy],
  'topicId': instance.topicId,
  'nextPageToken': instance.nextPageToken,
  'q': instance.q,
  'runtimeType': instance.$type,
};

_NewsQuery _$NewsQueryFromJson(Map<String, dynamic> json) => _NewsQuery(
  q: json['q'] as String,
  location: json['location'] as String?,
  countryCode: $enumDecodeNullable(_$CountryCodeEnumMap, json['gl']),
  languageCode: $enumDecodeNullable(_$LanguageCodeEnumMap, json['hl']),
  num: (json['num'] as num?)?.toInt(),
  autocorrect: json['autocorrect'] as bool?,
  tbs: $enumDecodeNullable(_$TbsValueEnumMap, json['tbs']),
  page: (json['page'] as num?)?.toInt(),
);

Map<String, dynamic> _$NewsQueryToJson(_NewsQuery instance) =>
    <String, dynamic>{
      'q': instance.q,
      'location': instance.location,
      'gl': _$CountryCodeEnumMap[instance.countryCode],
      'hl': _$LanguageCodeEnumMap[instance.languageCode],
      'num': instance.num,
      'autocorrect': instance.autocorrect,
      'tbs': _$TbsValueEnumMap[instance.tbs],
      'page': instance.page,
    };

_ShoppingQuery _$ShoppingQueryFromJson(Map<String, dynamic> json) =>
    _ShoppingQuery(
      q: json['q'] as String,
      location: json['location'] as String?,
      countryCode: $enumDecodeNullable(_$CountryCodeEnumMap, json['gl']),
      languageCode: $enumDecodeNullable(_$LanguageCodeEnumMap, json['hl']),
      autocorrect: json['autocorrect'] as bool?,
      tbs: $enumDecodeNullable(_$TbsValueEnumMap, json['tbs']),
      page: (json['page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ShoppingQueryToJson(_ShoppingQuery instance) =>
    <String, dynamic>{
      'q': instance.q,
      'location': instance.location,
      'gl': _$CountryCodeEnumMap[instance.countryCode],
      'hl': _$LanguageCodeEnumMap[instance.languageCode],
      'autocorrect': instance.autocorrect,
      'tbs': _$TbsValueEnumMap[instance.tbs],
      'page': instance.page,
    };

_LensQuery _$LensQueryFromJson(Map<String, dynamic> json) => _LensQuery(
  url: json['url'] as String,
  location: json['location'] as String?,
  countryCode: $enumDecodeNullable(_$CountryCodeEnumMap, json['gl']),
  languageCode: $enumDecodeNullable(_$LanguageCodeEnumMap, json['hl']),
  tbs: $enumDecodeNullable(_$TbsValueEnumMap, json['tbs']),
  q: json['q'] as String?,
);

Map<String, dynamic> _$LensQueryToJson(_LensQuery instance) =>
    <String, dynamic>{
      'url': instance.url,
      'location': instance.location,
      'gl': _$CountryCodeEnumMap[instance.countryCode],
      'hl': _$LanguageCodeEnumMap[instance.languageCode],
      'tbs': _$TbsValueEnumMap[instance.tbs],
      'q': instance.q,
    };

_ScholarQuery _$ScholarQueryFromJson(Map<String, dynamic> json) =>
    _ScholarQuery(
      q: json['q'] as String,
      location: json['location'] as String?,
      countryCode: $enumDecodeNullable(_$CountryCodeEnumMap, json['gl']),
      languageCode: $enumDecodeNullable(_$LanguageCodeEnumMap, json['hl']),
      autocorrect: json['autocorrect'] as bool?,
      tbs: $enumDecodeNullable(_$TbsValueEnumMap, json['tbs']),
      page: (json['page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ScholarQueryToJson(_ScholarQuery instance) =>
    <String, dynamic>{
      'q': instance.q,
      'location': instance.location,
      'gl': _$CountryCodeEnumMap[instance.countryCode],
      'hl': _$LanguageCodeEnumMap[instance.languageCode],
      'autocorrect': instance.autocorrect,
      'tbs': _$TbsValueEnumMap[instance.tbs],
      'page': instance.page,
    };

_PatentsQuery _$PatentsQueryFromJson(Map<String, dynamic> json) =>
    _PatentsQuery(
      q: json['q'] as String,
      location: json['location'] as String?,
      countryCode: $enumDecodeNullable(_$CountryCodeEnumMap, json['gl']),
      languageCode: $enumDecodeNullable(_$LanguageCodeEnumMap, json['hl']),
      num: (json['num'] as num?)?.toInt(),
      autocorrect: json['autocorrect'] as bool?,
      tbs: $enumDecodeNullable(_$TbsValueEnumMap, json['tbs']),
      page: (json['page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PatentsQueryToJson(_PatentsQuery instance) =>
    <String, dynamic>{
      'q': instance.q,
      'location': instance.location,
      'gl': _$CountryCodeEnumMap[instance.countryCode],
      'hl': _$LanguageCodeEnumMap[instance.languageCode],
      'num': instance.num,
      'autocorrect': instance.autocorrect,
      'tbs': _$TbsValueEnumMap[instance.tbs],
      'page': instance.page,
    };

_SearchQuery _$SearchQueryFromJson(Map<String, dynamic> json) => _SearchQuery(
  q: json['q'] as String,
  location: json['location'] as String?,
  countryCode: $enumDecodeNullable(_$CountryCodeEnumMap, json['gl']),
  languageCode: $enumDecodeNullable(_$LanguageCodeEnumMap, json['hl']),
  num: (json['num'] as num?)?.toInt(),
  autocorrect: json['autocorrect'] as bool?,
  tbs: $enumDecodeNullable(_$TbsValueEnumMap, json['tbs']),
  page: (json['page'] as num?)?.toInt(),
);

Map<String, dynamic> _$SearchQueryToJson(_SearchQuery instance) =>
    <String, dynamic>{
      'q': instance.q,
      'location': instance.location,
      'gl': _$CountryCodeEnumMap[instance.countryCode],
      'hl': _$LanguageCodeEnumMap[instance.languageCode],
      'num': instance.num,
      'autocorrect': instance.autocorrect,
      'tbs': _$TbsValueEnumMap[instance.tbs],
      'page': instance.page,
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
