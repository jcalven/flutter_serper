// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchQueryImpl _$$SearchQueryImplFromJson(Map<String, dynamic> json) =>
    _$SearchQueryImpl(
      q: json['q'] as String,
      location: json['location'] as String?,
      gl: json['gl'] as String?,
      hl: json['hl'] as String?,
      num: (json['num'] as num?)?.toInt(),
      autocorrect: json['autocorrect'] as bool?,
      tbs: json['tbs'] as String?,
      page: (json['page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SearchQueryImplToJson(_$SearchQueryImpl instance) =>
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

_$ImagesQueryImpl _$$ImagesQueryImplFromJson(Map<String, dynamic> json) =>
    _$ImagesQueryImpl(
      q: json['q'] as String,
      location: json['location'] as String?,
      gl: json['gl'] as String?,
      hl: json['hl'] as String?,
      num: (json['num'] as num?)?.toInt(),
      autocorrect: json['autocorrect'] as bool?,
      tbs: json['tbs'] as String?,
      page: (json['page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ImagesQueryImplToJson(_$ImagesQueryImpl instance) =>
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

_$PlacesQueryImpl _$$PlacesQueryImplFromJson(Map<String, dynamic> json) =>
    _$PlacesQueryImpl(
      q: json['q'] as String,
      location: json['location'] as String?,
      gl: json['gl'] as String?,
      hl: json['hl'] as String?,
      autocorrect: json['autocorrect'] as bool?,
      tbs: json['tbs'] as String?,
      page: (json['page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PlacesQueryImplToJson(_$PlacesQueryImpl instance) =>
    <String, dynamic>{
      'q': instance.q,
      'location': instance.location,
      'gl': instance.gl,
      'hl': instance.hl,
      'autocorrect': instance.autocorrect,
      'tbs': instance.tbs,
      'page': instance.page,
    };

_$VideosQueryImpl _$$VideosQueryImplFromJson(Map<String, dynamic> json) =>
    _$VideosQueryImpl(
      q: json['q'] as String,
      location: json['location'] as String?,
      gl: json['gl'] as String?,
      hl: json['hl'] as String?,
      num: (json['num'] as num?)?.toInt(),
      autocorrect: json['autocorrect'] as bool?,
      tbs: json['tbs'] as String?,
      page: (json['page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$VideosQueryImplToJson(_$VideosQueryImpl instance) =>
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

_$MapsQueryImpl _$$MapsQueryImplFromJson(Map<String, dynamic> json) =>
    _$MapsQueryImpl(
      q: json['q'] as String,
      hl: json['hl'] as String?,
      ll: json['ll'] as String?,
      placeId: json['placeId'] as String?,
      cid: json['cid'] as String?,
      page: (json['page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MapsQueryImplToJson(_$MapsQueryImpl instance) =>
    <String, dynamic>{
      'q': instance.q,
      'hl': instance.hl,
      'll': instance.ll,
      'placeId': instance.placeId,
      'cid': instance.cid,
      'page': instance.page,
    };

_$ReviewsQueryImpl _$$ReviewsQueryImplFromJson(Map<String, dynamic> json) =>
    _$ReviewsQueryImpl(
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

Map<String, dynamic> _$$ReviewsQueryImplToJson(_$ReviewsQueryImpl instance) =>
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

_$NewsQueryImpl _$$NewsQueryImplFromJson(Map<String, dynamic> json) =>
    _$NewsQueryImpl(
      q: json['q'] as String,
      location: json['location'] as String?,
      gl: json['gl'] as String?,
      hl: json['hl'] as String?,
      num: (json['num'] as num?)?.toInt(),
      autocorrect: json['autocorrect'] as bool?,
      tbs: json['tbs'] as String?,
      page: (json['page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$NewsQueryImplToJson(_$NewsQueryImpl instance) =>
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

_$ShoppingQueryImpl _$$ShoppingQueryImplFromJson(Map<String, dynamic> json) =>
    _$ShoppingQueryImpl(
      q: json['q'] as String,
      location: json['location'] as String?,
      gl: json['gl'] as String?,
      hl: json['hl'] as String?,
      autocorrect: json['autocorrect'] as bool?,
      tbs: json['tbs'] as String?,
      page: (json['page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ShoppingQueryImplToJson(_$ShoppingQueryImpl instance) =>
    <String, dynamic>{
      'q': instance.q,
      'location': instance.location,
      'gl': instance.gl,
      'hl': instance.hl,
      'autocorrect': instance.autocorrect,
      'tbs': instance.tbs,
      'page': instance.page,
    };

_$LensQueryImpl _$$LensQueryImplFromJson(Map<String, dynamic> json) =>
    _$LensQueryImpl(
      url: json['url'] as String,
      location: json['location'] as String?,
      gl: json['gl'] as String?,
      hl: json['hl'] as String?,
      tbs: json['tbs'] as String?,
      q: json['q'] as String?,
    );

Map<String, dynamic> _$$LensQueryImplToJson(_$LensQueryImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'location': instance.location,
      'gl': instance.gl,
      'hl': instance.hl,
      'tbs': instance.tbs,
      'q': instance.q,
    };

_$ScholarQueryImpl _$$ScholarQueryImplFromJson(Map<String, dynamic> json) =>
    _$ScholarQueryImpl(
      q: json['q'] as String,
      location: json['location'] as String?,
      gl: json['gl'] as String?,
      hl: json['hl'] as String?,
      autocorrect: json['autocorrect'] as bool?,
      tbs: json['tbs'] as String?,
      page: (json['page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ScholarQueryImplToJson(_$ScholarQueryImpl instance) =>
    <String, dynamic>{
      'q': instance.q,
      'location': instance.location,
      'gl': instance.gl,
      'hl': instance.hl,
      'autocorrect': instance.autocorrect,
      'tbs': instance.tbs,
      'page': instance.page,
    };

_$PatentsQueryImpl _$$PatentsQueryImplFromJson(Map<String, dynamic> json) =>
    _$PatentsQueryImpl(
      q: json['q'] as String,
      location: json['location'] as String?,
      gl: json['gl'] as String?,
      hl: json['hl'] as String?,
      num: (json['num'] as num?)?.toInt(),
      autocorrect: json['autocorrect'] as bool?,
      tbs: json['tbs'] as String?,
      page: (json['page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PatentsQueryImplToJson(_$PatentsQueryImpl instance) =>
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

_$AutocompleteQueryImpl _$$AutocompleteQueryImplFromJson(
  Map<String, dynamic> json,
) => _$AutocompleteQueryImpl(
  q: json['q'] as String,
  location: json['location'] as String?,
  gl: json['gl'] as String?,
  hl: json['hl'] as String?,
);

Map<String, dynamic> _$$AutocompleteQueryImplToJson(
  _$AutocompleteQueryImpl instance,
) => <String, dynamic>{
  'q': instance.q,
  'location': instance.location,
  'gl': instance.gl,
  'hl': instance.hl,
};

_$WebpageQueryImpl _$$WebpageQueryImplFromJson(Map<String, dynamic> json) =>
    _$WebpageQueryImpl(
      url: json['url'] as String,
      includeMarkdown: json['includeMarkdown'] as bool?,
      q: json['q'] as String?,
    );

Map<String, dynamic> _$$WebpageQueryImplToJson(_$WebpageQueryImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'includeMarkdown': instance.includeMarkdown,
      'q': instance.q,
    };
