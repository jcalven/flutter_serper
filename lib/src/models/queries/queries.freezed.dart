// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AutocompleteQuery {

/// {@template flutter_serper.queries.queryString}
/// The search query string.
///
/// This is a required parameter and can be empty.
/// {@endtemplate}
@JsonKey(name: 'q') String get query;/// {@template flutter_serper.queries.location}
/// Optional location to filter results.
///
/// This can be a city, state, or country.
/// {@endtemplate}
 String? get location;/// {@template flutter_serper.queries.countryCodeEnum}
/// The country for the search, as a [CountryCode] enum.
///
/// This can be used to specify a location bias. Parsed to [CountryCode].
/// {@endtemplate}
@JsonKey(name: 'gl') CountryCode? get countryCode;/// {@template flutter_serper.queries.languageCodeEnum}
/// The language for the search, as a [LanguageCode] enum.
///
/// This can be used to specify the language of the results.
/// {@endtemplate}
@JsonKey(name: 'hl') LanguageCode? get languageCode;
/// Create a copy of AutocompleteQuery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AutocompleteQueryCopyWith<AutocompleteQuery> get copyWith => _$AutocompleteQueryCopyWithImpl<AutocompleteQuery>(this as AutocompleteQuery, _$identity);

  /// Serializes this AutocompleteQuery to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AutocompleteQuery&&(identical(other.query, query) || other.query == query)&&(identical(other.location, location) || other.location == location)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query,location,countryCode,languageCode);

@override
String toString() {
  return 'AutocompleteQuery(query: $query, location: $location, countryCode: $countryCode, languageCode: $languageCode)';
}


}

/// @nodoc
abstract mixin class $AutocompleteQueryCopyWith<$Res>  {
  factory $AutocompleteQueryCopyWith(AutocompleteQuery value, $Res Function(AutocompleteQuery) _then) = _$AutocompleteQueryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'q') String query, String? location,@JsonKey(name: 'gl') CountryCode? countryCode,@JsonKey(name: 'hl') LanguageCode? languageCode
});




}
/// @nodoc
class _$AutocompleteQueryCopyWithImpl<$Res>
    implements $AutocompleteQueryCopyWith<$Res> {
  _$AutocompleteQueryCopyWithImpl(this._self, this._then);

  final AutocompleteQuery _self;
  final $Res Function(AutocompleteQuery) _then;

/// Create a copy of AutocompleteQuery
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? location = freezed,Object? countryCode = freezed,Object? languageCode = freezed,}) {
  return _then(_self.copyWith(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as CountryCode?,languageCode: freezed == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as LanguageCode?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AutocompleteQuery implements AutocompleteQuery {
  const _AutocompleteQuery({@JsonKey(name: 'q') required this.query, this.location, @JsonKey(name: 'gl') this.countryCode, @JsonKey(name: 'hl') this.languageCode});
  factory _AutocompleteQuery.fromJson(Map<String, dynamic> json) => _$AutocompleteQueryFromJson(json);

/// {@template flutter_serper.queries.queryString}
/// The search query string.
///
/// This is a required parameter and can be empty.
/// {@endtemplate}
@override@JsonKey(name: 'q') final  String query;
/// {@template flutter_serper.queries.location}
/// Optional location to filter results.
///
/// This can be a city, state, or country.
/// {@endtemplate}
@override final  String? location;
/// {@template flutter_serper.queries.countryCodeEnum}
/// The country for the search, as a [CountryCode] enum.
///
/// This can be used to specify a location bias. Parsed to [CountryCode].
/// {@endtemplate}
@override@JsonKey(name: 'gl') final  CountryCode? countryCode;
/// {@template flutter_serper.queries.languageCodeEnum}
/// The language for the search, as a [LanguageCode] enum.
///
/// This can be used to specify the language of the results.
/// {@endtemplate}
@override@JsonKey(name: 'hl') final  LanguageCode? languageCode;

/// Create a copy of AutocompleteQuery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AutocompleteQueryCopyWith<_AutocompleteQuery> get copyWith => __$AutocompleteQueryCopyWithImpl<_AutocompleteQuery>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AutocompleteQueryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AutocompleteQuery&&(identical(other.query, query) || other.query == query)&&(identical(other.location, location) || other.location == location)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query,location,countryCode,languageCode);

@override
String toString() {
  return 'AutocompleteQuery(query: $query, location: $location, countryCode: $countryCode, languageCode: $languageCode)';
}


}

/// @nodoc
abstract mixin class _$AutocompleteQueryCopyWith<$Res> implements $AutocompleteQueryCopyWith<$Res> {
  factory _$AutocompleteQueryCopyWith(_AutocompleteQuery value, $Res Function(_AutocompleteQuery) _then) = __$AutocompleteQueryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'q') String query, String? location,@JsonKey(name: 'gl') CountryCode? countryCode,@JsonKey(name: 'hl') LanguageCode? languageCode
});




}
/// @nodoc
class __$AutocompleteQueryCopyWithImpl<$Res>
    implements _$AutocompleteQueryCopyWith<$Res> {
  __$AutocompleteQueryCopyWithImpl(this._self, this._then);

  final _AutocompleteQuery _self;
  final $Res Function(_AutocompleteQuery) _then;

/// Create a copy of AutocompleteQuery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,Object? location = freezed,Object? countryCode = freezed,Object? languageCode = freezed,}) {
  return _then(_AutocompleteQuery(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as CountryCode?,languageCode: freezed == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as LanguageCode?,
  ));
}


}


/// @nodoc
mixin _$ImagesQuery {

/// {@macro flutter_serper.queries.queryString}
@JsonKey(name: 'q') String get query;/// {@macro flutter_serper.queries.location}
 String? get location;/// {@macro flutter_serper.queries.countryCodeEnum}
@JsonKey(name: 'gl') CountryCode? get countryCode;/// {@macro flutter_serper.queries.languageCodeEnum}
@JsonKey(name: 'hl') LanguageCode? get languageCode;/// {@template flutter_serper.queries.num}
/// Optional number of results to return.
///
/// Default varies by API endpoint.
/// {@endtemplate}
 int? get num;/// {@template flutter_serper.queries.autocorrect}
/// Optional parameter to enable or disable autocorrection.
///
/// When true, the API will attempt to correct spelling errors in the query.
/// {@endtemplate}
 bool? get autocorrect;/// {@template flutter_serper.queries.tbsEnum}
/// Optional time-based search parameter, as a [TbsValue] enum.
///
/// Serialized to the 'tbs' parameter for the API.
/// {@endtemplate}
 TbsValue? get tbs;/// {@template flutter_serper.queries.page}
/// Optional page number for pagination.
///
/// Default is 1.
/// {@endtemplate}
 int? get page;
/// Create a copy of ImagesQuery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImagesQueryCopyWith<ImagesQuery> get copyWith => _$ImagesQueryCopyWithImpl<ImagesQuery>(this as ImagesQuery, _$identity);

  /// Serializes this ImagesQuery to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImagesQuery&&(identical(other.query, query) || other.query == query)&&(identical(other.location, location) || other.location == location)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode)&&(identical(other.num, num) || other.num == num)&&(identical(other.autocorrect, autocorrect) || other.autocorrect == autocorrect)&&(identical(other.tbs, tbs) || other.tbs == tbs)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query,location,countryCode,languageCode,num,autocorrect,tbs,page);

@override
String toString() {
  return 'ImagesQuery(query: $query, location: $location, countryCode: $countryCode, languageCode: $languageCode, num: $num, autocorrect: $autocorrect, tbs: $tbs, page: $page)';
}


}

/// @nodoc
abstract mixin class $ImagesQueryCopyWith<$Res>  {
  factory $ImagesQueryCopyWith(ImagesQuery value, $Res Function(ImagesQuery) _then) = _$ImagesQueryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'q') String query, String? location,@JsonKey(name: 'gl') CountryCode? countryCode,@JsonKey(name: 'hl') LanguageCode? languageCode, int? num, bool? autocorrect, TbsValue? tbs, int? page
});




}
/// @nodoc
class _$ImagesQueryCopyWithImpl<$Res>
    implements $ImagesQueryCopyWith<$Res> {
  _$ImagesQueryCopyWithImpl(this._self, this._then);

  final ImagesQuery _self;
  final $Res Function(ImagesQuery) _then;

/// Create a copy of ImagesQuery
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? location = freezed,Object? countryCode = freezed,Object? languageCode = freezed,Object? num = freezed,Object? autocorrect = freezed,Object? tbs = freezed,Object? page = freezed,}) {
  return _then(_self.copyWith(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as CountryCode?,languageCode: freezed == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as LanguageCode?,num: freezed == num ? _self.num : num // ignore: cast_nullable_to_non_nullable
as int?,autocorrect: freezed == autocorrect ? _self.autocorrect : autocorrect // ignore: cast_nullable_to_non_nullable
as bool?,tbs: freezed == tbs ? _self.tbs : tbs // ignore: cast_nullable_to_non_nullable
as TbsValue?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ImagesQuery implements ImagesQuery {
  const _ImagesQuery({@JsonKey(name: 'q') required this.query, this.location, @JsonKey(name: 'gl') this.countryCode, @JsonKey(name: 'hl') this.languageCode, this.num, this.autocorrect, this.tbs, this.page});
  factory _ImagesQuery.fromJson(Map<String, dynamic> json) => _$ImagesQueryFromJson(json);

/// {@macro flutter_serper.queries.queryString}
@override@JsonKey(name: 'q') final  String query;
/// {@macro flutter_serper.queries.location}
@override final  String? location;
/// {@macro flutter_serper.queries.countryCodeEnum}
@override@JsonKey(name: 'gl') final  CountryCode? countryCode;
/// {@macro flutter_serper.queries.languageCodeEnum}
@override@JsonKey(name: 'hl') final  LanguageCode? languageCode;
/// {@template flutter_serper.queries.num}
/// Optional number of results to return.
///
/// Default varies by API endpoint.
/// {@endtemplate}
@override final  int? num;
/// {@template flutter_serper.queries.autocorrect}
/// Optional parameter to enable or disable autocorrection.
///
/// When true, the API will attempt to correct spelling errors in the query.
/// {@endtemplate}
@override final  bool? autocorrect;
/// {@template flutter_serper.queries.tbsEnum}
/// Optional time-based search parameter, as a [TbsValue] enum.
///
/// Serialized to the 'tbs' parameter for the API.
/// {@endtemplate}
@override final  TbsValue? tbs;
/// {@template flutter_serper.queries.page}
/// Optional page number for pagination.
///
/// Default is 1.
/// {@endtemplate}
@override final  int? page;

/// Create a copy of ImagesQuery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImagesQueryCopyWith<_ImagesQuery> get copyWith => __$ImagesQueryCopyWithImpl<_ImagesQuery>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ImagesQueryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImagesQuery&&(identical(other.query, query) || other.query == query)&&(identical(other.location, location) || other.location == location)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode)&&(identical(other.num, num) || other.num == num)&&(identical(other.autocorrect, autocorrect) || other.autocorrect == autocorrect)&&(identical(other.tbs, tbs) || other.tbs == tbs)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query,location,countryCode,languageCode,num,autocorrect,tbs,page);

@override
String toString() {
  return 'ImagesQuery(query: $query, location: $location, countryCode: $countryCode, languageCode: $languageCode, num: $num, autocorrect: $autocorrect, tbs: $tbs, page: $page)';
}


}

/// @nodoc
abstract mixin class _$ImagesQueryCopyWith<$Res> implements $ImagesQueryCopyWith<$Res> {
  factory _$ImagesQueryCopyWith(_ImagesQuery value, $Res Function(_ImagesQuery) _then) = __$ImagesQueryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'q') String query, String? location,@JsonKey(name: 'gl') CountryCode? countryCode,@JsonKey(name: 'hl') LanguageCode? languageCode, int? num, bool? autocorrect, TbsValue? tbs, int? page
});




}
/// @nodoc
class __$ImagesQueryCopyWithImpl<$Res>
    implements _$ImagesQueryCopyWith<$Res> {
  __$ImagesQueryCopyWithImpl(this._self, this._then);

  final _ImagesQuery _self;
  final $Res Function(_ImagesQuery) _then;

/// Create a copy of ImagesQuery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,Object? location = freezed,Object? countryCode = freezed,Object? languageCode = freezed,Object? num = freezed,Object? autocorrect = freezed,Object? tbs = freezed,Object? page = freezed,}) {
  return _then(_ImagesQuery(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as CountryCode?,languageCode: freezed == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as LanguageCode?,num: freezed == num ? _self.num : num // ignore: cast_nullable_to_non_nullable
as int?,autocorrect: freezed == autocorrect ? _self.autocorrect : autocorrect // ignore: cast_nullable_to_non_nullable
as bool?,tbs: freezed == tbs ? _self.tbs : tbs // ignore: cast_nullable_to_non_nullable
as TbsValue?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$PlacesQuery {

/// {@macro flutter_serper.queries.queryString}
@JsonKey(name: 'q') String get query;/// {@macro flutter_serper.queries.location}
 String? get location;/// {@macro flutter_serper.queries.countryCodeEnum}
@JsonKey(name: 'gl') CountryCode? get countryCode;/// {@macro flutter_serper.queries.languageCodeEnum}
@JsonKey(name: 'hl') LanguageCode? get languageCode;/// {@macro flutter_serper.queries.autocorrect}
 bool? get autocorrect;/// {@macro flutter_serper.queries.tbsEnum}
 TbsValue? get tbs;/// {@macro flutter_serper.queries.page}
 int? get page;
/// Create a copy of PlacesQuery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlacesQueryCopyWith<PlacesQuery> get copyWith => _$PlacesQueryCopyWithImpl<PlacesQuery>(this as PlacesQuery, _$identity);

  /// Serializes this PlacesQuery to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlacesQuery&&(identical(other.query, query) || other.query == query)&&(identical(other.location, location) || other.location == location)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode)&&(identical(other.autocorrect, autocorrect) || other.autocorrect == autocorrect)&&(identical(other.tbs, tbs) || other.tbs == tbs)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query,location,countryCode,languageCode,autocorrect,tbs,page);

@override
String toString() {
  return 'PlacesQuery(query: $query, location: $location, countryCode: $countryCode, languageCode: $languageCode, autocorrect: $autocorrect, tbs: $tbs, page: $page)';
}


}

/// @nodoc
abstract mixin class $PlacesQueryCopyWith<$Res>  {
  factory $PlacesQueryCopyWith(PlacesQuery value, $Res Function(PlacesQuery) _then) = _$PlacesQueryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'q') String query, String? location,@JsonKey(name: 'gl') CountryCode? countryCode,@JsonKey(name: 'hl') LanguageCode? languageCode, bool? autocorrect, TbsValue? tbs, int? page
});




}
/// @nodoc
class _$PlacesQueryCopyWithImpl<$Res>
    implements $PlacesQueryCopyWith<$Res> {
  _$PlacesQueryCopyWithImpl(this._self, this._then);

  final PlacesQuery _self;
  final $Res Function(PlacesQuery) _then;

/// Create a copy of PlacesQuery
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? location = freezed,Object? countryCode = freezed,Object? languageCode = freezed,Object? autocorrect = freezed,Object? tbs = freezed,Object? page = freezed,}) {
  return _then(_self.copyWith(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as CountryCode?,languageCode: freezed == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as LanguageCode?,autocorrect: freezed == autocorrect ? _self.autocorrect : autocorrect // ignore: cast_nullable_to_non_nullable
as bool?,tbs: freezed == tbs ? _self.tbs : tbs // ignore: cast_nullable_to_non_nullable
as TbsValue?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PlacesQuery implements PlacesQuery {
  const _PlacesQuery({@JsonKey(name: 'q') required this.query, this.location, @JsonKey(name: 'gl') this.countryCode, @JsonKey(name: 'hl') this.languageCode, this.autocorrect, this.tbs, this.page});
  factory _PlacesQuery.fromJson(Map<String, dynamic> json) => _$PlacesQueryFromJson(json);

/// {@macro flutter_serper.queries.queryString}
@override@JsonKey(name: 'q') final  String query;
/// {@macro flutter_serper.queries.location}
@override final  String? location;
/// {@macro flutter_serper.queries.countryCodeEnum}
@override@JsonKey(name: 'gl') final  CountryCode? countryCode;
/// {@macro flutter_serper.queries.languageCodeEnum}
@override@JsonKey(name: 'hl') final  LanguageCode? languageCode;
/// {@macro flutter_serper.queries.autocorrect}
@override final  bool? autocorrect;
/// {@macro flutter_serper.queries.tbsEnum}
@override final  TbsValue? tbs;
/// {@macro flutter_serper.queries.page}
@override final  int? page;

/// Create a copy of PlacesQuery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlacesQueryCopyWith<_PlacesQuery> get copyWith => __$PlacesQueryCopyWithImpl<_PlacesQuery>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlacesQueryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlacesQuery&&(identical(other.query, query) || other.query == query)&&(identical(other.location, location) || other.location == location)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode)&&(identical(other.autocorrect, autocorrect) || other.autocorrect == autocorrect)&&(identical(other.tbs, tbs) || other.tbs == tbs)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query,location,countryCode,languageCode,autocorrect,tbs,page);

@override
String toString() {
  return 'PlacesQuery(query: $query, location: $location, countryCode: $countryCode, languageCode: $languageCode, autocorrect: $autocorrect, tbs: $tbs, page: $page)';
}


}

/// @nodoc
abstract mixin class _$PlacesQueryCopyWith<$Res> implements $PlacesQueryCopyWith<$Res> {
  factory _$PlacesQueryCopyWith(_PlacesQuery value, $Res Function(_PlacesQuery) _then) = __$PlacesQueryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'q') String query, String? location,@JsonKey(name: 'gl') CountryCode? countryCode,@JsonKey(name: 'hl') LanguageCode? languageCode, bool? autocorrect, TbsValue? tbs, int? page
});




}
/// @nodoc
class __$PlacesQueryCopyWithImpl<$Res>
    implements _$PlacesQueryCopyWith<$Res> {
  __$PlacesQueryCopyWithImpl(this._self, this._then);

  final _PlacesQuery _self;
  final $Res Function(_PlacesQuery) _then;

/// Create a copy of PlacesQuery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,Object? location = freezed,Object? countryCode = freezed,Object? languageCode = freezed,Object? autocorrect = freezed,Object? tbs = freezed,Object? page = freezed,}) {
  return _then(_PlacesQuery(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as CountryCode?,languageCode: freezed == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as LanguageCode?,autocorrect: freezed == autocorrect ? _self.autocorrect : autocorrect // ignore: cast_nullable_to_non_nullable
as bool?,tbs: freezed == tbs ? _self.tbs : tbs // ignore: cast_nullable_to_non_nullable
as TbsValue?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$VideosQuery {

/// {@macro flutter_serper.queries.queryString}
@JsonKey(name: 'q') String get query;/// {@macro flutter_serper.queries.location}
 String? get location;/// {@macro flutter_serper.queries.countryCodeEnum}
@JsonKey(name: 'gl') CountryCode? get countryCode;/// {@macro flutter_serper.queries.languageCodeEnum}
@JsonKey(name: 'hl') LanguageCode? get languageCode;/// {@macro flutter_serper.queries.num}
 int? get num;/// {@macro flutter_serper.queries.autocorrect}
 bool? get autocorrect;/// {@macro flutter_serper.queries.tbsEnum}
 TbsValue? get tbs;/// {@macro flutter_serper.queries.page}
 int? get page;
/// Create a copy of VideosQuery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideosQueryCopyWith<VideosQuery> get copyWith => _$VideosQueryCopyWithImpl<VideosQuery>(this as VideosQuery, _$identity);

  /// Serializes this VideosQuery to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideosQuery&&(identical(other.query, query) || other.query == query)&&(identical(other.location, location) || other.location == location)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode)&&(identical(other.num, num) || other.num == num)&&(identical(other.autocorrect, autocorrect) || other.autocorrect == autocorrect)&&(identical(other.tbs, tbs) || other.tbs == tbs)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query,location,countryCode,languageCode,num,autocorrect,tbs,page);

@override
String toString() {
  return 'VideosQuery(query: $query, location: $location, countryCode: $countryCode, languageCode: $languageCode, num: $num, autocorrect: $autocorrect, tbs: $tbs, page: $page)';
}


}

/// @nodoc
abstract mixin class $VideosQueryCopyWith<$Res>  {
  factory $VideosQueryCopyWith(VideosQuery value, $Res Function(VideosQuery) _then) = _$VideosQueryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'q') String query, String? location,@JsonKey(name: 'gl') CountryCode? countryCode,@JsonKey(name: 'hl') LanguageCode? languageCode, int? num, bool? autocorrect, TbsValue? tbs, int? page
});




}
/// @nodoc
class _$VideosQueryCopyWithImpl<$Res>
    implements $VideosQueryCopyWith<$Res> {
  _$VideosQueryCopyWithImpl(this._self, this._then);

  final VideosQuery _self;
  final $Res Function(VideosQuery) _then;

/// Create a copy of VideosQuery
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? location = freezed,Object? countryCode = freezed,Object? languageCode = freezed,Object? num = freezed,Object? autocorrect = freezed,Object? tbs = freezed,Object? page = freezed,}) {
  return _then(_self.copyWith(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as CountryCode?,languageCode: freezed == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as LanguageCode?,num: freezed == num ? _self.num : num // ignore: cast_nullable_to_non_nullable
as int?,autocorrect: freezed == autocorrect ? _self.autocorrect : autocorrect // ignore: cast_nullable_to_non_nullable
as bool?,tbs: freezed == tbs ? _self.tbs : tbs // ignore: cast_nullable_to_non_nullable
as TbsValue?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _VideosQuery implements VideosQuery {
  const _VideosQuery({@JsonKey(name: 'q') required this.query, this.location, @JsonKey(name: 'gl') this.countryCode, @JsonKey(name: 'hl') this.languageCode, this.num, this.autocorrect, this.tbs, this.page});
  factory _VideosQuery.fromJson(Map<String, dynamic> json) => _$VideosQueryFromJson(json);

/// {@macro flutter_serper.queries.queryString}
@override@JsonKey(name: 'q') final  String query;
/// {@macro flutter_serper.queries.location}
@override final  String? location;
/// {@macro flutter_serper.queries.countryCodeEnum}
@override@JsonKey(name: 'gl') final  CountryCode? countryCode;
/// {@macro flutter_serper.queries.languageCodeEnum}
@override@JsonKey(name: 'hl') final  LanguageCode? languageCode;
/// {@macro flutter_serper.queries.num}
@override final  int? num;
/// {@macro flutter_serper.queries.autocorrect}
@override final  bool? autocorrect;
/// {@macro flutter_serper.queries.tbsEnum}
@override final  TbsValue? tbs;
/// {@macro flutter_serper.queries.page}
@override final  int? page;

/// Create a copy of VideosQuery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideosQueryCopyWith<_VideosQuery> get copyWith => __$VideosQueryCopyWithImpl<_VideosQuery>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VideosQueryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideosQuery&&(identical(other.query, query) || other.query == query)&&(identical(other.location, location) || other.location == location)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode)&&(identical(other.num, num) || other.num == num)&&(identical(other.autocorrect, autocorrect) || other.autocorrect == autocorrect)&&(identical(other.tbs, tbs) || other.tbs == tbs)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query,location,countryCode,languageCode,num,autocorrect,tbs,page);

@override
String toString() {
  return 'VideosQuery(query: $query, location: $location, countryCode: $countryCode, languageCode: $languageCode, num: $num, autocorrect: $autocorrect, tbs: $tbs, page: $page)';
}


}

/// @nodoc
abstract mixin class _$VideosQueryCopyWith<$Res> implements $VideosQueryCopyWith<$Res> {
  factory _$VideosQueryCopyWith(_VideosQuery value, $Res Function(_VideosQuery) _then) = __$VideosQueryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'q') String query, String? location,@JsonKey(name: 'gl') CountryCode? countryCode,@JsonKey(name: 'hl') LanguageCode? languageCode, int? num, bool? autocorrect, TbsValue? tbs, int? page
});




}
/// @nodoc
class __$VideosQueryCopyWithImpl<$Res>
    implements _$VideosQueryCopyWith<$Res> {
  __$VideosQueryCopyWithImpl(this._self, this._then);

  final _VideosQuery _self;
  final $Res Function(_VideosQuery) _then;

/// Create a copy of VideosQuery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,Object? location = freezed,Object? countryCode = freezed,Object? languageCode = freezed,Object? num = freezed,Object? autocorrect = freezed,Object? tbs = freezed,Object? page = freezed,}) {
  return _then(_VideosQuery(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as CountryCode?,languageCode: freezed == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as LanguageCode?,num: freezed == num ? _self.num : num // ignore: cast_nullable_to_non_nullable
as int?,autocorrect: freezed == autocorrect ? _self.autocorrect : autocorrect // ignore: cast_nullable_to_non_nullable
as bool?,tbs: freezed == tbs ? _self.tbs : tbs // ignore: cast_nullable_to_non_nullable
as TbsValue?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$MapsQuery {

/// {@macro flutter_serper.queries.queryString}
@JsonKey(name: 'q') String get query;/// {@macro flutter_serper.queries.languageCodeEnum}
@JsonKey(name: 'hl') LanguageCode? get languageCode;/// {@template flutter_serper.queries.latLngClass}
/// Optional latitude and longitude, as a [LatLng] object.
///
/// Serialized as "latitude,longitude" for the 'll' parameter.
/// {@endtemplate}
@JsonKey(name: 'll')@LatLngConverter() LatLng? get latLng;/// {@template flutter_serper.queries.placeId}
/// Optional Google Place ID.
///
/// This can be used to specify a particular place for the search.
/// {@endtemplate}
 String? get placeId;/// {@template flutter_serper.queries.cid}
/// Optional Google CID (Customer ID).
///
/// This can be used to identify a specific business or entity.
/// {@endtemplate}
 String? get cid;/// {@macro flutter_serper.queries.page}
 int? get page;
/// Create a copy of MapsQuery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MapsQueryCopyWith<MapsQuery> get copyWith => _$MapsQueryCopyWithImpl<MapsQuery>(this as MapsQuery, _$identity);

  /// Serializes this MapsQuery to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MapsQuery&&(identical(other.query, query) || other.query == query)&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode)&&(identical(other.latLng, latLng) || other.latLng == latLng)&&(identical(other.placeId, placeId) || other.placeId == placeId)&&(identical(other.cid, cid) || other.cid == cid)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query,languageCode,latLng,placeId,cid,page);

@override
String toString() {
  return 'MapsQuery(query: $query, languageCode: $languageCode, latLng: $latLng, placeId: $placeId, cid: $cid, page: $page)';
}


}

/// @nodoc
abstract mixin class $MapsQueryCopyWith<$Res>  {
  factory $MapsQueryCopyWith(MapsQuery value, $Res Function(MapsQuery) _then) = _$MapsQueryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'q') String query,@JsonKey(name: 'hl') LanguageCode? languageCode,@JsonKey(name: 'll')@LatLngConverter() LatLng? latLng, String? placeId, String? cid, int? page
});




}
/// @nodoc
class _$MapsQueryCopyWithImpl<$Res>
    implements $MapsQueryCopyWith<$Res> {
  _$MapsQueryCopyWithImpl(this._self, this._then);

  final MapsQuery _self;
  final $Res Function(MapsQuery) _then;

/// Create a copy of MapsQuery
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? languageCode = freezed,Object? latLng = freezed,Object? placeId = freezed,Object? cid = freezed,Object? page = freezed,}) {
  return _then(_self.copyWith(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,languageCode: freezed == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as LanguageCode?,latLng: freezed == latLng ? _self.latLng : latLng // ignore: cast_nullable_to_non_nullable
as LatLng?,placeId: freezed == placeId ? _self.placeId : placeId // ignore: cast_nullable_to_non_nullable
as String?,cid: freezed == cid ? _self.cid : cid // ignore: cast_nullable_to_non_nullable
as String?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _MapsQuery implements MapsQuery {
  const _MapsQuery({@JsonKey(name: 'q') required this.query, @JsonKey(name: 'hl') this.languageCode, @JsonKey(name: 'll')@LatLngConverter() this.latLng, this.placeId, this.cid, this.page});
  factory _MapsQuery.fromJson(Map<String, dynamic> json) => _$MapsQueryFromJson(json);

/// {@macro flutter_serper.queries.queryString}
@override@JsonKey(name: 'q') final  String query;
/// {@macro flutter_serper.queries.languageCodeEnum}
@override@JsonKey(name: 'hl') final  LanguageCode? languageCode;
/// {@template flutter_serper.queries.latLngClass}
/// Optional latitude and longitude, as a [LatLng] object.
///
/// Serialized as "latitude,longitude" for the 'll' parameter.
/// {@endtemplate}
@override@JsonKey(name: 'll')@LatLngConverter() final  LatLng? latLng;
/// {@template flutter_serper.queries.placeId}
/// Optional Google Place ID.
///
/// This can be used to specify a particular place for the search.
/// {@endtemplate}
@override final  String? placeId;
/// {@template flutter_serper.queries.cid}
/// Optional Google CID (Customer ID).
///
/// This can be used to identify a specific business or entity.
/// {@endtemplate}
@override final  String? cid;
/// {@macro flutter_serper.queries.page}
@override final  int? page;

/// Create a copy of MapsQuery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MapsQueryCopyWith<_MapsQuery> get copyWith => __$MapsQueryCopyWithImpl<_MapsQuery>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MapsQueryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MapsQuery&&(identical(other.query, query) || other.query == query)&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode)&&(identical(other.latLng, latLng) || other.latLng == latLng)&&(identical(other.placeId, placeId) || other.placeId == placeId)&&(identical(other.cid, cid) || other.cid == cid)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query,languageCode,latLng,placeId,cid,page);

@override
String toString() {
  return 'MapsQuery(query: $query, languageCode: $languageCode, latLng: $latLng, placeId: $placeId, cid: $cid, page: $page)';
}


}

/// @nodoc
abstract mixin class _$MapsQueryCopyWith<$Res> implements $MapsQueryCopyWith<$Res> {
  factory _$MapsQueryCopyWith(_MapsQuery value, $Res Function(_MapsQuery) _then) = __$MapsQueryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'q') String query,@JsonKey(name: 'hl') LanguageCode? languageCode,@JsonKey(name: 'll')@LatLngConverter() LatLng? latLng, String? placeId, String? cid, int? page
});




}
/// @nodoc
class __$MapsQueryCopyWithImpl<$Res>
    implements _$MapsQueryCopyWith<$Res> {
  __$MapsQueryCopyWithImpl(this._self, this._then);

  final _MapsQuery _self;
  final $Res Function(_MapsQuery) _then;

/// Create a copy of MapsQuery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,Object? languageCode = freezed,Object? latLng = freezed,Object? placeId = freezed,Object? cid = freezed,Object? page = freezed,}) {
  return _then(_MapsQuery(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,languageCode: freezed == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as LanguageCode?,latLng: freezed == latLng ? _self.latLng : latLng // ignore: cast_nullable_to_non_nullable
as LatLng?,placeId: freezed == placeId ? _self.placeId : placeId // ignore: cast_nullable_to_non_nullable
as String?,cid: freezed == cid ? _self.cid : cid // ignore: cast_nullable_to_non_nullable
as String?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

ReviewsQuery _$ReviewsQueryFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'withCid':
          return ReviewsQueryCid.fromJson(
            json
          );
                case 'withFid':
          return ReviewsQueryFid.fromJson(
            json
          );
                case 'withPlaceId':
          return ReviewsQueryPlaceId.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'ReviewsQuery',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$ReviewsQuery {

/// {@macro flutter_serper.queries.countryCodeEnum}
@JsonKey(name: 'gl') CountryCode? get countryCode;/// {@macro flutter_serper.queries.languageCodeEnum}
@JsonKey(name: 'hl') LanguageCode? get languageCode;/// {@template flutter_serper.queries.sortByEnum}
/// Optional parameter to sort results, as a [SortByValue] enum.
///
/// Serialized to the 'sortBy' parameter for the API.
/// {@endtemplate}
 SortByValue? get sortBy;/// Optional topic ID to filter reviews by topic
 String? get topicId;/// Optional token for pagination
 String? get nextPageToken;/// {@macro flutter_serper.queries.queryString}
@JsonKey(name: 'q') String? get query;
/// Create a copy of ReviewsQuery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewsQueryCopyWith<ReviewsQuery> get copyWith => _$ReviewsQueryCopyWithImpl<ReviewsQuery>(this as ReviewsQuery, _$identity);

  /// Serializes this ReviewsQuery to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewsQuery&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.topicId, topicId) || other.topicId == topicId)&&(identical(other.nextPageToken, nextPageToken) || other.nextPageToken == nextPageToken)&&(identical(other.query, query) || other.query == query));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,countryCode,languageCode,sortBy,topicId,nextPageToken,query);

@override
String toString() {
  return 'ReviewsQuery(countryCode: $countryCode, languageCode: $languageCode, sortBy: $sortBy, topicId: $topicId, nextPageToken: $nextPageToken, query: $query)';
}


}

/// @nodoc
abstract mixin class $ReviewsQueryCopyWith<$Res>  {
  factory $ReviewsQueryCopyWith(ReviewsQuery value, $Res Function(ReviewsQuery) _then) = _$ReviewsQueryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'gl') CountryCode? countryCode,@JsonKey(name: 'hl') LanguageCode? languageCode, SortByValue? sortBy, String? topicId, String? nextPageToken,@JsonKey(name: 'q') String? query
});




}
/// @nodoc
class _$ReviewsQueryCopyWithImpl<$Res>
    implements $ReviewsQueryCopyWith<$Res> {
  _$ReviewsQueryCopyWithImpl(this._self, this._then);

  final ReviewsQuery _self;
  final $Res Function(ReviewsQuery) _then;

/// Create a copy of ReviewsQuery
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? countryCode = freezed,Object? languageCode = freezed,Object? sortBy = freezed,Object? topicId = freezed,Object? nextPageToken = freezed,Object? query = freezed,}) {
  return _then(_self.copyWith(
countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as CountryCode?,languageCode: freezed == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as LanguageCode?,sortBy: freezed == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as SortByValue?,topicId: freezed == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String?,nextPageToken: freezed == nextPageToken ? _self.nextPageToken : nextPageToken // ignore: cast_nullable_to_non_nullable
as String?,query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class ReviewsQueryCid implements ReviewsQuery {
  const ReviewsQueryCid({required this.cid, @JsonKey(name: 'gl') this.countryCode, @JsonKey(name: 'hl') this.languageCode, this.sortBy, this.topicId, this.nextPageToken, @JsonKey(name: 'q') this.query, final  String? $type}): $type = $type ?? 'withCid';
  factory ReviewsQueryCid.fromJson(Map<String, dynamic> json) => _$ReviewsQueryCidFromJson(json);

/// {@macro flutter_serper.queries.cid}
 final  String cid;
/// {@macro flutter_serper.queries.countryCodeEnum}
@override@JsonKey(name: 'gl') final  CountryCode? countryCode;
/// {@macro flutter_serper.queries.languageCodeEnum}
@override@JsonKey(name: 'hl') final  LanguageCode? languageCode;
/// {@template flutter_serper.queries.sortByEnum}
/// Optional parameter to sort results, as a [SortByValue] enum.
///
/// Serialized to the 'sortBy' parameter for the API.
/// {@endtemplate}
@override final  SortByValue? sortBy;
/// Optional topic ID to filter reviews by topic
@override final  String? topicId;
/// Optional token for pagination
@override final  String? nextPageToken;
/// {@macro flutter_serper.queries.queryString}
@override@JsonKey(name: 'q') final  String? query;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ReviewsQuery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewsQueryCidCopyWith<ReviewsQueryCid> get copyWith => _$ReviewsQueryCidCopyWithImpl<ReviewsQueryCid>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewsQueryCidToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewsQueryCid&&(identical(other.cid, cid) || other.cid == cid)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.topicId, topicId) || other.topicId == topicId)&&(identical(other.nextPageToken, nextPageToken) || other.nextPageToken == nextPageToken)&&(identical(other.query, query) || other.query == query));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cid,countryCode,languageCode,sortBy,topicId,nextPageToken,query);

@override
String toString() {
  return 'ReviewsQuery.withCid(cid: $cid, countryCode: $countryCode, languageCode: $languageCode, sortBy: $sortBy, topicId: $topicId, nextPageToken: $nextPageToken, query: $query)';
}


}

/// @nodoc
abstract mixin class $ReviewsQueryCidCopyWith<$Res> implements $ReviewsQueryCopyWith<$Res> {
  factory $ReviewsQueryCidCopyWith(ReviewsQueryCid value, $Res Function(ReviewsQueryCid) _then) = _$ReviewsQueryCidCopyWithImpl;
@override @useResult
$Res call({
 String cid,@JsonKey(name: 'gl') CountryCode? countryCode,@JsonKey(name: 'hl') LanguageCode? languageCode, SortByValue? sortBy, String? topicId, String? nextPageToken,@JsonKey(name: 'q') String? query
});




}
/// @nodoc
class _$ReviewsQueryCidCopyWithImpl<$Res>
    implements $ReviewsQueryCidCopyWith<$Res> {
  _$ReviewsQueryCidCopyWithImpl(this._self, this._then);

  final ReviewsQueryCid _self;
  final $Res Function(ReviewsQueryCid) _then;

/// Create a copy of ReviewsQuery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cid = null,Object? countryCode = freezed,Object? languageCode = freezed,Object? sortBy = freezed,Object? topicId = freezed,Object? nextPageToken = freezed,Object? query = freezed,}) {
  return _then(ReviewsQueryCid(
cid: null == cid ? _self.cid : cid // ignore: cast_nullable_to_non_nullable
as String,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as CountryCode?,languageCode: freezed == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as LanguageCode?,sortBy: freezed == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as SortByValue?,topicId: freezed == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String?,nextPageToken: freezed == nextPageToken ? _self.nextPageToken : nextPageToken // ignore: cast_nullable_to_non_nullable
as String?,query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class ReviewsQueryFid implements ReviewsQuery {
  const ReviewsQueryFid({required this.fid, @JsonKey(name: 'gl') this.countryCode, @JsonKey(name: 'hl') this.languageCode, this.sortBy, this.topicId, this.nextPageToken, @JsonKey(name: 'q') this.query, final  String? $type}): $type = $type ?? 'withFid';
  factory ReviewsQueryFid.fromJson(Map<String, dynamic> json) => _$ReviewsQueryFidFromJson(json);

/// {@template flutter_serper.queries.fid}
/// Optional Google Feature ID.
///
/// This can be used to identify a specific feature for the search.
/// {@endtemplate}
 final  String fid;
/// {@macro flutter_serper.queries.countryCodeEnum}
@override@JsonKey(name: 'gl') final  CountryCode? countryCode;
/// {@macro flutter_serper.queries.languageCodeEnum}
@override@JsonKey(name: 'hl') final  LanguageCode? languageCode;
/// {@macro flutter_serper.queries.sortByEnum}
@override final  SortByValue? sortBy;
/// Optional topic ID to filter reviews by topic
@override final  String? topicId;
/// Optional token for pagination
@override final  String? nextPageToken;
/// {@macro flutter_serper.queries.queryString}
@override@JsonKey(name: 'q') final  String? query;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ReviewsQuery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewsQueryFidCopyWith<ReviewsQueryFid> get copyWith => _$ReviewsQueryFidCopyWithImpl<ReviewsQueryFid>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewsQueryFidToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewsQueryFid&&(identical(other.fid, fid) || other.fid == fid)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.topicId, topicId) || other.topicId == topicId)&&(identical(other.nextPageToken, nextPageToken) || other.nextPageToken == nextPageToken)&&(identical(other.query, query) || other.query == query));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fid,countryCode,languageCode,sortBy,topicId,nextPageToken,query);

@override
String toString() {
  return 'ReviewsQuery.withFid(fid: $fid, countryCode: $countryCode, languageCode: $languageCode, sortBy: $sortBy, topicId: $topicId, nextPageToken: $nextPageToken, query: $query)';
}


}

/// @nodoc
abstract mixin class $ReviewsQueryFidCopyWith<$Res> implements $ReviewsQueryCopyWith<$Res> {
  factory $ReviewsQueryFidCopyWith(ReviewsQueryFid value, $Res Function(ReviewsQueryFid) _then) = _$ReviewsQueryFidCopyWithImpl;
@override @useResult
$Res call({
 String fid,@JsonKey(name: 'gl') CountryCode? countryCode,@JsonKey(name: 'hl') LanguageCode? languageCode, SortByValue? sortBy, String? topicId, String? nextPageToken,@JsonKey(name: 'q') String? query
});




}
/// @nodoc
class _$ReviewsQueryFidCopyWithImpl<$Res>
    implements $ReviewsQueryFidCopyWith<$Res> {
  _$ReviewsQueryFidCopyWithImpl(this._self, this._then);

  final ReviewsQueryFid _self;
  final $Res Function(ReviewsQueryFid) _then;

/// Create a copy of ReviewsQuery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fid = null,Object? countryCode = freezed,Object? languageCode = freezed,Object? sortBy = freezed,Object? topicId = freezed,Object? nextPageToken = freezed,Object? query = freezed,}) {
  return _then(ReviewsQueryFid(
fid: null == fid ? _self.fid : fid // ignore: cast_nullable_to_non_nullable
as String,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as CountryCode?,languageCode: freezed == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as LanguageCode?,sortBy: freezed == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as SortByValue?,topicId: freezed == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String?,nextPageToken: freezed == nextPageToken ? _self.nextPageToken : nextPageToken // ignore: cast_nullable_to_non_nullable
as String?,query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class ReviewsQueryPlaceId implements ReviewsQuery {
  const ReviewsQueryPlaceId({required this.placeId, @JsonKey(name: 'gl') this.countryCode, @JsonKey(name: 'hl') this.languageCode, this.sortBy, this.topicId, this.nextPageToken, @JsonKey(name: 'q') this.query, final  String? $type}): $type = $type ?? 'withPlaceId';
  factory ReviewsQueryPlaceId.fromJson(Map<String, dynamic> json) => _$ReviewsQueryPlaceIdFromJson(json);

/// {@macro flutter_serper.queries.placeId}
 final  String placeId;
/// {@macro flutter_serper.queries.countryCodeEnum}
@override@JsonKey(name: 'gl') final  CountryCode? countryCode;
/// {@macro flutter_serper.queries.languageCodeEnum}
@override@JsonKey(name: 'hl') final  LanguageCode? languageCode;
/// {@macro flutter_serper.queries.sortByEnum}
@override final  SortByValue? sortBy;
/// Optional topic ID to filter reviews by topic
@override final  String? topicId;
/// Optional token for pagination
@override final  String? nextPageToken;
/// {@macro flutter_serper.queries.queryString}
@override@JsonKey(name: 'q') final  String? query;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ReviewsQuery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewsQueryPlaceIdCopyWith<ReviewsQueryPlaceId> get copyWith => _$ReviewsQueryPlaceIdCopyWithImpl<ReviewsQueryPlaceId>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewsQueryPlaceIdToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewsQueryPlaceId&&(identical(other.placeId, placeId) || other.placeId == placeId)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.topicId, topicId) || other.topicId == topicId)&&(identical(other.nextPageToken, nextPageToken) || other.nextPageToken == nextPageToken)&&(identical(other.query, query) || other.query == query));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,placeId,countryCode,languageCode,sortBy,topicId,nextPageToken,query);

@override
String toString() {
  return 'ReviewsQuery.withPlaceId(placeId: $placeId, countryCode: $countryCode, languageCode: $languageCode, sortBy: $sortBy, topicId: $topicId, nextPageToken: $nextPageToken, query: $query)';
}


}

/// @nodoc
abstract mixin class $ReviewsQueryPlaceIdCopyWith<$Res> implements $ReviewsQueryCopyWith<$Res> {
  factory $ReviewsQueryPlaceIdCopyWith(ReviewsQueryPlaceId value, $Res Function(ReviewsQueryPlaceId) _then) = _$ReviewsQueryPlaceIdCopyWithImpl;
@override @useResult
$Res call({
 String placeId,@JsonKey(name: 'gl') CountryCode? countryCode,@JsonKey(name: 'hl') LanguageCode? languageCode, SortByValue? sortBy, String? topicId, String? nextPageToken,@JsonKey(name: 'q') String? query
});




}
/// @nodoc
class _$ReviewsQueryPlaceIdCopyWithImpl<$Res>
    implements $ReviewsQueryPlaceIdCopyWith<$Res> {
  _$ReviewsQueryPlaceIdCopyWithImpl(this._self, this._then);

  final ReviewsQueryPlaceId _self;
  final $Res Function(ReviewsQueryPlaceId) _then;

/// Create a copy of ReviewsQuery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? placeId = null,Object? countryCode = freezed,Object? languageCode = freezed,Object? sortBy = freezed,Object? topicId = freezed,Object? nextPageToken = freezed,Object? query = freezed,}) {
  return _then(ReviewsQueryPlaceId(
placeId: null == placeId ? _self.placeId : placeId // ignore: cast_nullable_to_non_nullable
as String,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as CountryCode?,languageCode: freezed == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as LanguageCode?,sortBy: freezed == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as SortByValue?,topicId: freezed == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String?,nextPageToken: freezed == nextPageToken ? _self.nextPageToken : nextPageToken // ignore: cast_nullable_to_non_nullable
as String?,query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$NewsQuery {

/// {@macro flutter_serper.queries.queryString}
@JsonKey(name: 'q') String get query;/// {@macro flutter_serper.queries.location}
 String? get location;/// {@macro flutter_serper.queries.countryCodeEnum}
@JsonKey(name: 'gl') CountryCode? get countryCode;/// {@macro flutter_serper.queries.languageCodeEnum}
@JsonKey(name: 'hl') LanguageCode? get languageCode;/// {@macro flutter_serper.queries.num}
 int? get num;/// {@macro flutter_serper.queries.autocorrect}
 bool? get autocorrect;/// {@macro flutter_serper.queries.tbsEnum}
 TbsValue? get tbs;/// {@macro flutter_serper.queries.page}
 int? get page;
/// Create a copy of NewsQuery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewsQueryCopyWith<NewsQuery> get copyWith => _$NewsQueryCopyWithImpl<NewsQuery>(this as NewsQuery, _$identity);

  /// Serializes this NewsQuery to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewsQuery&&(identical(other.query, query) || other.query == query)&&(identical(other.location, location) || other.location == location)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode)&&(identical(other.num, num) || other.num == num)&&(identical(other.autocorrect, autocorrect) || other.autocorrect == autocorrect)&&(identical(other.tbs, tbs) || other.tbs == tbs)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query,location,countryCode,languageCode,num,autocorrect,tbs,page);

@override
String toString() {
  return 'NewsQuery(query: $query, location: $location, countryCode: $countryCode, languageCode: $languageCode, num: $num, autocorrect: $autocorrect, tbs: $tbs, page: $page)';
}


}

/// @nodoc
abstract mixin class $NewsQueryCopyWith<$Res>  {
  factory $NewsQueryCopyWith(NewsQuery value, $Res Function(NewsQuery) _then) = _$NewsQueryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'q') String query, String? location,@JsonKey(name: 'gl') CountryCode? countryCode,@JsonKey(name: 'hl') LanguageCode? languageCode, int? num, bool? autocorrect, TbsValue? tbs, int? page
});




}
/// @nodoc
class _$NewsQueryCopyWithImpl<$Res>
    implements $NewsQueryCopyWith<$Res> {
  _$NewsQueryCopyWithImpl(this._self, this._then);

  final NewsQuery _self;
  final $Res Function(NewsQuery) _then;

/// Create a copy of NewsQuery
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? location = freezed,Object? countryCode = freezed,Object? languageCode = freezed,Object? num = freezed,Object? autocorrect = freezed,Object? tbs = freezed,Object? page = freezed,}) {
  return _then(_self.copyWith(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as CountryCode?,languageCode: freezed == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as LanguageCode?,num: freezed == num ? _self.num : num // ignore: cast_nullable_to_non_nullable
as int?,autocorrect: freezed == autocorrect ? _self.autocorrect : autocorrect // ignore: cast_nullable_to_non_nullable
as bool?,tbs: freezed == tbs ? _self.tbs : tbs // ignore: cast_nullable_to_non_nullable
as TbsValue?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _NewsQuery implements NewsQuery {
  const _NewsQuery({@JsonKey(name: 'q') required this.query, this.location, @JsonKey(name: 'gl') this.countryCode, @JsonKey(name: 'hl') this.languageCode, this.num, this.autocorrect, this.tbs, this.page});
  factory _NewsQuery.fromJson(Map<String, dynamic> json) => _$NewsQueryFromJson(json);

/// {@macro flutter_serper.queries.queryString}
@override@JsonKey(name: 'q') final  String query;
/// {@macro flutter_serper.queries.location}
@override final  String? location;
/// {@macro flutter_serper.queries.countryCodeEnum}
@override@JsonKey(name: 'gl') final  CountryCode? countryCode;
/// {@macro flutter_serper.queries.languageCodeEnum}
@override@JsonKey(name: 'hl') final  LanguageCode? languageCode;
/// {@macro flutter_serper.queries.num}
@override final  int? num;
/// {@macro flutter_serper.queries.autocorrect}
@override final  bool? autocorrect;
/// {@macro flutter_serper.queries.tbsEnum}
@override final  TbsValue? tbs;
/// {@macro flutter_serper.queries.page}
@override final  int? page;

/// Create a copy of NewsQuery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NewsQueryCopyWith<_NewsQuery> get copyWith => __$NewsQueryCopyWithImpl<_NewsQuery>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NewsQueryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewsQuery&&(identical(other.query, query) || other.query == query)&&(identical(other.location, location) || other.location == location)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode)&&(identical(other.num, num) || other.num == num)&&(identical(other.autocorrect, autocorrect) || other.autocorrect == autocorrect)&&(identical(other.tbs, tbs) || other.tbs == tbs)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query,location,countryCode,languageCode,num,autocorrect,tbs,page);

@override
String toString() {
  return 'NewsQuery(query: $query, location: $location, countryCode: $countryCode, languageCode: $languageCode, num: $num, autocorrect: $autocorrect, tbs: $tbs, page: $page)';
}


}

/// @nodoc
abstract mixin class _$NewsQueryCopyWith<$Res> implements $NewsQueryCopyWith<$Res> {
  factory _$NewsQueryCopyWith(_NewsQuery value, $Res Function(_NewsQuery) _then) = __$NewsQueryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'q') String query, String? location,@JsonKey(name: 'gl') CountryCode? countryCode,@JsonKey(name: 'hl') LanguageCode? languageCode, int? num, bool? autocorrect, TbsValue? tbs, int? page
});




}
/// @nodoc
class __$NewsQueryCopyWithImpl<$Res>
    implements _$NewsQueryCopyWith<$Res> {
  __$NewsQueryCopyWithImpl(this._self, this._then);

  final _NewsQuery _self;
  final $Res Function(_NewsQuery) _then;

/// Create a copy of NewsQuery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,Object? location = freezed,Object? countryCode = freezed,Object? languageCode = freezed,Object? num = freezed,Object? autocorrect = freezed,Object? tbs = freezed,Object? page = freezed,}) {
  return _then(_NewsQuery(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as CountryCode?,languageCode: freezed == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as LanguageCode?,num: freezed == num ? _self.num : num // ignore: cast_nullable_to_non_nullable
as int?,autocorrect: freezed == autocorrect ? _self.autocorrect : autocorrect // ignore: cast_nullable_to_non_nullable
as bool?,tbs: freezed == tbs ? _self.tbs : tbs // ignore: cast_nullable_to_non_nullable
as TbsValue?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$ShoppingQuery {

/// {@macro flutter_serper.queries.queryString}
@JsonKey(name: 'q') String get query;/// {@macro flutter_serper.queries.location}
 String? get location;/// {@macro flutter_serper.queries.countryCodeEnum}
@JsonKey(name: 'gl') CountryCode? get countryCode;/// {@macro flutter_serper.queries.languageCodeEnum}
@JsonKey(name: 'hl') LanguageCode? get languageCode;/// {@macro flutter_serper.queries.autocorrect}
 bool? get autocorrect;/// {@macro flutter_serper.queries.tbsEnum}
 TbsValue? get tbs;/// {@macro flutter_serper.queries.page}
 int? get page;
/// Create a copy of ShoppingQuery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShoppingQueryCopyWith<ShoppingQuery> get copyWith => _$ShoppingQueryCopyWithImpl<ShoppingQuery>(this as ShoppingQuery, _$identity);

  /// Serializes this ShoppingQuery to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShoppingQuery&&(identical(other.query, query) || other.query == query)&&(identical(other.location, location) || other.location == location)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode)&&(identical(other.autocorrect, autocorrect) || other.autocorrect == autocorrect)&&(identical(other.tbs, tbs) || other.tbs == tbs)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query,location,countryCode,languageCode,autocorrect,tbs,page);

@override
String toString() {
  return 'ShoppingQuery(query: $query, location: $location, countryCode: $countryCode, languageCode: $languageCode, autocorrect: $autocorrect, tbs: $tbs, page: $page)';
}


}

/// @nodoc
abstract mixin class $ShoppingQueryCopyWith<$Res>  {
  factory $ShoppingQueryCopyWith(ShoppingQuery value, $Res Function(ShoppingQuery) _then) = _$ShoppingQueryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'q') String query, String? location,@JsonKey(name: 'gl') CountryCode? countryCode,@JsonKey(name: 'hl') LanguageCode? languageCode, bool? autocorrect, TbsValue? tbs, int? page
});




}
/// @nodoc
class _$ShoppingQueryCopyWithImpl<$Res>
    implements $ShoppingQueryCopyWith<$Res> {
  _$ShoppingQueryCopyWithImpl(this._self, this._then);

  final ShoppingQuery _self;
  final $Res Function(ShoppingQuery) _then;

/// Create a copy of ShoppingQuery
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? location = freezed,Object? countryCode = freezed,Object? languageCode = freezed,Object? autocorrect = freezed,Object? tbs = freezed,Object? page = freezed,}) {
  return _then(_self.copyWith(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as CountryCode?,languageCode: freezed == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as LanguageCode?,autocorrect: freezed == autocorrect ? _self.autocorrect : autocorrect // ignore: cast_nullable_to_non_nullable
as bool?,tbs: freezed == tbs ? _self.tbs : tbs // ignore: cast_nullable_to_non_nullable
as TbsValue?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ShoppingQuery implements ShoppingQuery {
  const _ShoppingQuery({@JsonKey(name: 'q') required this.query, this.location, @JsonKey(name: 'gl') this.countryCode, @JsonKey(name: 'hl') this.languageCode, this.autocorrect, this.tbs, this.page});
  factory _ShoppingQuery.fromJson(Map<String, dynamic> json) => _$ShoppingQueryFromJson(json);

/// {@macro flutter_serper.queries.queryString}
@override@JsonKey(name: 'q') final  String query;
/// {@macro flutter_serper.queries.location}
@override final  String? location;
/// {@macro flutter_serper.queries.countryCodeEnum}
@override@JsonKey(name: 'gl') final  CountryCode? countryCode;
/// {@macro flutter_serper.queries.languageCodeEnum}
@override@JsonKey(name: 'hl') final  LanguageCode? languageCode;
/// {@macro flutter_serper.queries.autocorrect}
@override final  bool? autocorrect;
/// {@macro flutter_serper.queries.tbsEnum}
@override final  TbsValue? tbs;
/// {@macro flutter_serper.queries.page}
@override final  int? page;

/// Create a copy of ShoppingQuery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShoppingQueryCopyWith<_ShoppingQuery> get copyWith => __$ShoppingQueryCopyWithImpl<_ShoppingQuery>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShoppingQueryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShoppingQuery&&(identical(other.query, query) || other.query == query)&&(identical(other.location, location) || other.location == location)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode)&&(identical(other.autocorrect, autocorrect) || other.autocorrect == autocorrect)&&(identical(other.tbs, tbs) || other.tbs == tbs)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query,location,countryCode,languageCode,autocorrect,tbs,page);

@override
String toString() {
  return 'ShoppingQuery(query: $query, location: $location, countryCode: $countryCode, languageCode: $languageCode, autocorrect: $autocorrect, tbs: $tbs, page: $page)';
}


}

/// @nodoc
abstract mixin class _$ShoppingQueryCopyWith<$Res> implements $ShoppingQueryCopyWith<$Res> {
  factory _$ShoppingQueryCopyWith(_ShoppingQuery value, $Res Function(_ShoppingQuery) _then) = __$ShoppingQueryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'q') String query, String? location,@JsonKey(name: 'gl') CountryCode? countryCode,@JsonKey(name: 'hl') LanguageCode? languageCode, bool? autocorrect, TbsValue? tbs, int? page
});




}
/// @nodoc
class __$ShoppingQueryCopyWithImpl<$Res>
    implements _$ShoppingQueryCopyWith<$Res> {
  __$ShoppingQueryCopyWithImpl(this._self, this._then);

  final _ShoppingQuery _self;
  final $Res Function(_ShoppingQuery) _then;

/// Create a copy of ShoppingQuery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,Object? location = freezed,Object? countryCode = freezed,Object? languageCode = freezed,Object? autocorrect = freezed,Object? tbs = freezed,Object? page = freezed,}) {
  return _then(_ShoppingQuery(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as CountryCode?,languageCode: freezed == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as LanguageCode?,autocorrect: freezed == autocorrect ? _self.autocorrect : autocorrect // ignore: cast_nullable_to_non_nullable
as bool?,tbs: freezed == tbs ? _self.tbs : tbs // ignore: cast_nullable_to_non_nullable
as TbsValue?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$LensQuery {

/// {@macro flutter_serper.queries.url}
 String get url;/// {@macro flutter_serper.queries.location}
 String? get location;/// {@macro flutter_serper.queries.countryCodeEnum}
@JsonKey(name: 'gl') CountryCode? get countryCode;/// {@macro flutter_serper.queries.languageCodeEnum}
@JsonKey(name: 'hl') LanguageCode? get languageCode;/// {@macro flutter_serper.queries.tbsEnum}
 TbsValue? get tbs;/// Optional query string to refine the image search
@JsonKey(name: 'q') String? get query;
/// Create a copy of LensQuery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LensQueryCopyWith<LensQuery> get copyWith => _$LensQueryCopyWithImpl<LensQuery>(this as LensQuery, _$identity);

  /// Serializes this LensQuery to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LensQuery&&(identical(other.url, url) || other.url == url)&&(identical(other.location, location) || other.location == location)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode)&&(identical(other.tbs, tbs) || other.tbs == tbs)&&(identical(other.query, query) || other.query == query));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,location,countryCode,languageCode,tbs,query);

@override
String toString() {
  return 'LensQuery(url: $url, location: $location, countryCode: $countryCode, languageCode: $languageCode, tbs: $tbs, query: $query)';
}


}

/// @nodoc
abstract mixin class $LensQueryCopyWith<$Res>  {
  factory $LensQueryCopyWith(LensQuery value, $Res Function(LensQuery) _then) = _$LensQueryCopyWithImpl;
@useResult
$Res call({
 String url, String? location,@JsonKey(name: 'gl') CountryCode? countryCode,@JsonKey(name: 'hl') LanguageCode? languageCode, TbsValue? tbs,@JsonKey(name: 'q') String? query
});




}
/// @nodoc
class _$LensQueryCopyWithImpl<$Res>
    implements $LensQueryCopyWith<$Res> {
  _$LensQueryCopyWithImpl(this._self, this._then);

  final LensQuery _self;
  final $Res Function(LensQuery) _then;

/// Create a copy of LensQuery
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,Object? location = freezed,Object? countryCode = freezed,Object? languageCode = freezed,Object? tbs = freezed,Object? query = freezed,}) {
  return _then(_self.copyWith(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as CountryCode?,languageCode: freezed == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as LanguageCode?,tbs: freezed == tbs ? _self.tbs : tbs // ignore: cast_nullable_to_non_nullable
as TbsValue?,query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _LensQuery implements LensQuery {
  const _LensQuery({required this.url, this.location, @JsonKey(name: 'gl') this.countryCode, @JsonKey(name: 'hl') this.languageCode, this.tbs, @JsonKey(name: 'q') this.query});
  factory _LensQuery.fromJson(Map<String, dynamic> json) => _$LensQueryFromJson(json);

/// {@macro flutter_serper.queries.url}
@override final  String url;
/// {@macro flutter_serper.queries.location}
@override final  String? location;
/// {@macro flutter_serper.queries.countryCodeEnum}
@override@JsonKey(name: 'gl') final  CountryCode? countryCode;
/// {@macro flutter_serper.queries.languageCodeEnum}
@override@JsonKey(name: 'hl') final  LanguageCode? languageCode;
/// {@macro flutter_serper.queries.tbsEnum}
@override final  TbsValue? tbs;
/// Optional query string to refine the image search
@override@JsonKey(name: 'q') final  String? query;

/// Create a copy of LensQuery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LensQueryCopyWith<_LensQuery> get copyWith => __$LensQueryCopyWithImpl<_LensQuery>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LensQueryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LensQuery&&(identical(other.url, url) || other.url == url)&&(identical(other.location, location) || other.location == location)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode)&&(identical(other.tbs, tbs) || other.tbs == tbs)&&(identical(other.query, query) || other.query == query));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,location,countryCode,languageCode,tbs,query);

@override
String toString() {
  return 'LensQuery(url: $url, location: $location, countryCode: $countryCode, languageCode: $languageCode, tbs: $tbs, query: $query)';
}


}

/// @nodoc
abstract mixin class _$LensQueryCopyWith<$Res> implements $LensQueryCopyWith<$Res> {
  factory _$LensQueryCopyWith(_LensQuery value, $Res Function(_LensQuery) _then) = __$LensQueryCopyWithImpl;
@override @useResult
$Res call({
 String url, String? location,@JsonKey(name: 'gl') CountryCode? countryCode,@JsonKey(name: 'hl') LanguageCode? languageCode, TbsValue? tbs,@JsonKey(name: 'q') String? query
});




}
/// @nodoc
class __$LensQueryCopyWithImpl<$Res>
    implements _$LensQueryCopyWith<$Res> {
  __$LensQueryCopyWithImpl(this._self, this._then);

  final _LensQuery _self;
  final $Res Function(_LensQuery) _then;

/// Create a copy of LensQuery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,Object? location = freezed,Object? countryCode = freezed,Object? languageCode = freezed,Object? tbs = freezed,Object? query = freezed,}) {
  return _then(_LensQuery(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as CountryCode?,languageCode: freezed == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as LanguageCode?,tbs: freezed == tbs ? _self.tbs : tbs // ignore: cast_nullable_to_non_nullable
as TbsValue?,query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ScholarQuery {

/// {@macro flutter_serper.queries.queryString}
@JsonKey(name: 'q') String get query;/// {@macro flutter_serper.queries.location}
 String? get location;/// {@macro flutter_serper.queries.countryCodeEnum}
@JsonKey(name: 'gl') CountryCode? get countryCode;/// {@macro flutter_serper.queries.languageCodeEnum}
@JsonKey(name: 'hl') LanguageCode? get languageCode;/// {@macro flutter_serper.queries.autocorrect}
 bool? get autocorrect;/// {@macro flutter_serper.queries.tbsEnum}
 TbsValue? get tbs;/// {@macro flutter_serper.queries.page}
 int? get page;
/// Create a copy of ScholarQuery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScholarQueryCopyWith<ScholarQuery> get copyWith => _$ScholarQueryCopyWithImpl<ScholarQuery>(this as ScholarQuery, _$identity);

  /// Serializes this ScholarQuery to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScholarQuery&&(identical(other.query, query) || other.query == query)&&(identical(other.location, location) || other.location == location)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode)&&(identical(other.autocorrect, autocorrect) || other.autocorrect == autocorrect)&&(identical(other.tbs, tbs) || other.tbs == tbs)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query,location,countryCode,languageCode,autocorrect,tbs,page);

@override
String toString() {
  return 'ScholarQuery(query: $query, location: $location, countryCode: $countryCode, languageCode: $languageCode, autocorrect: $autocorrect, tbs: $tbs, page: $page)';
}


}

/// @nodoc
abstract mixin class $ScholarQueryCopyWith<$Res>  {
  factory $ScholarQueryCopyWith(ScholarQuery value, $Res Function(ScholarQuery) _then) = _$ScholarQueryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'q') String query, String? location,@JsonKey(name: 'gl') CountryCode? countryCode,@JsonKey(name: 'hl') LanguageCode? languageCode, bool? autocorrect, TbsValue? tbs, int? page
});




}
/// @nodoc
class _$ScholarQueryCopyWithImpl<$Res>
    implements $ScholarQueryCopyWith<$Res> {
  _$ScholarQueryCopyWithImpl(this._self, this._then);

  final ScholarQuery _self;
  final $Res Function(ScholarQuery) _then;

/// Create a copy of ScholarQuery
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? location = freezed,Object? countryCode = freezed,Object? languageCode = freezed,Object? autocorrect = freezed,Object? tbs = freezed,Object? page = freezed,}) {
  return _then(_self.copyWith(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as CountryCode?,languageCode: freezed == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as LanguageCode?,autocorrect: freezed == autocorrect ? _self.autocorrect : autocorrect // ignore: cast_nullable_to_non_nullable
as bool?,tbs: freezed == tbs ? _self.tbs : tbs // ignore: cast_nullable_to_non_nullable
as TbsValue?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ScholarQuery implements ScholarQuery {
  const _ScholarQuery({@JsonKey(name: 'q') required this.query, this.location, @JsonKey(name: 'gl') this.countryCode, @JsonKey(name: 'hl') this.languageCode, this.autocorrect, this.tbs, this.page});
  factory _ScholarQuery.fromJson(Map<String, dynamic> json) => _$ScholarQueryFromJson(json);

/// {@macro flutter_serper.queries.queryString}
@override@JsonKey(name: 'q') final  String query;
/// {@macro flutter_serper.queries.location}
@override final  String? location;
/// {@macro flutter_serper.queries.countryCodeEnum}
@override@JsonKey(name: 'gl') final  CountryCode? countryCode;
/// {@macro flutter_serper.queries.languageCodeEnum}
@override@JsonKey(name: 'hl') final  LanguageCode? languageCode;
/// {@macro flutter_serper.queries.autocorrect}
@override final  bool? autocorrect;
/// {@macro flutter_serper.queries.tbsEnum}
@override final  TbsValue? tbs;
/// {@macro flutter_serper.queries.page}
@override final  int? page;

/// Create a copy of ScholarQuery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScholarQueryCopyWith<_ScholarQuery> get copyWith => __$ScholarQueryCopyWithImpl<_ScholarQuery>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScholarQueryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScholarQuery&&(identical(other.query, query) || other.query == query)&&(identical(other.location, location) || other.location == location)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode)&&(identical(other.autocorrect, autocorrect) || other.autocorrect == autocorrect)&&(identical(other.tbs, tbs) || other.tbs == tbs)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query,location,countryCode,languageCode,autocorrect,tbs,page);

@override
String toString() {
  return 'ScholarQuery(query: $query, location: $location, countryCode: $countryCode, languageCode: $languageCode, autocorrect: $autocorrect, tbs: $tbs, page: $page)';
}


}

/// @nodoc
abstract mixin class _$ScholarQueryCopyWith<$Res> implements $ScholarQueryCopyWith<$Res> {
  factory _$ScholarQueryCopyWith(_ScholarQuery value, $Res Function(_ScholarQuery) _then) = __$ScholarQueryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'q') String query, String? location,@JsonKey(name: 'gl') CountryCode? countryCode,@JsonKey(name: 'hl') LanguageCode? languageCode, bool? autocorrect, TbsValue? tbs, int? page
});




}
/// @nodoc
class __$ScholarQueryCopyWithImpl<$Res>
    implements _$ScholarQueryCopyWith<$Res> {
  __$ScholarQueryCopyWithImpl(this._self, this._then);

  final _ScholarQuery _self;
  final $Res Function(_ScholarQuery) _then;

/// Create a copy of ScholarQuery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,Object? location = freezed,Object? countryCode = freezed,Object? languageCode = freezed,Object? autocorrect = freezed,Object? tbs = freezed,Object? page = freezed,}) {
  return _then(_ScholarQuery(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as CountryCode?,languageCode: freezed == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as LanguageCode?,autocorrect: freezed == autocorrect ? _self.autocorrect : autocorrect // ignore: cast_nullable_to_non_nullable
as bool?,tbs: freezed == tbs ? _self.tbs : tbs // ignore: cast_nullable_to_non_nullable
as TbsValue?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$PatentsQuery {

/// {@macro flutter_serper.queries.queryString}
@JsonKey(name: 'q') String get query;// /// {@macro flutter_serper.queries.countryCodeEnum}
// @JsonKey(name: 'gl') CountryCode? countryCode,
// /// {@macro flutter_serper.queries.languageCodeEnum}
// @JsonKey(name: 'hl') LanguageCode? languageCode,
/// {@macro flutter_serper.queries.num}
 int get num;// /// {@macro flutter_serper.queries.autocorrect}
// bool? autocorrect,
// /// {@macro flutter_serper.queries.tbsEnum}
// TbsValue? tbs,
/// {@macro flutter_serper.queries.page}
 int? get page;
/// Create a copy of PatentsQuery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatentsQueryCopyWith<PatentsQuery> get copyWith => _$PatentsQueryCopyWithImpl<PatentsQuery>(this as PatentsQuery, _$identity);

  /// Serializes this PatentsQuery to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatentsQuery&&(identical(other.query, query) || other.query == query)&&(identical(other.num, num) || other.num == num)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query,num,page);

@override
String toString() {
  return 'PatentsQuery(query: $query, num: $num, page: $page)';
}


}

/// @nodoc
abstract mixin class $PatentsQueryCopyWith<$Res>  {
  factory $PatentsQueryCopyWith(PatentsQuery value, $Res Function(PatentsQuery) _then) = _$PatentsQueryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'q') String query, int num, int? page
});




}
/// @nodoc
class _$PatentsQueryCopyWithImpl<$Res>
    implements $PatentsQueryCopyWith<$Res> {
  _$PatentsQueryCopyWithImpl(this._self, this._then);

  final PatentsQuery _self;
  final $Res Function(PatentsQuery) _then;

/// Create a copy of PatentsQuery
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? num = null,Object? page = freezed,}) {
  return _then(_self.copyWith(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,num: null == num ? _self.num : num // ignore: cast_nullable_to_non_nullable
as int,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PatentsQuery implements PatentsQuery {
  const _PatentsQuery({@JsonKey(name: 'q') required this.query, this.num = 10, this.page});
  factory _PatentsQuery.fromJson(Map<String, dynamic> json) => _$PatentsQueryFromJson(json);

/// {@macro flutter_serper.queries.queryString}
@override@JsonKey(name: 'q') final  String query;
// /// {@macro flutter_serper.queries.countryCodeEnum}
// @JsonKey(name: 'gl') CountryCode? countryCode,
// /// {@macro flutter_serper.queries.languageCodeEnum}
// @JsonKey(name: 'hl') LanguageCode? languageCode,
/// {@macro flutter_serper.queries.num}
@override@JsonKey() final  int num;
// /// {@macro flutter_serper.queries.autocorrect}
// bool? autocorrect,
// /// {@macro flutter_serper.queries.tbsEnum}
// TbsValue? tbs,
/// {@macro flutter_serper.queries.page}
@override final  int? page;

/// Create a copy of PatentsQuery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatentsQueryCopyWith<_PatentsQuery> get copyWith => __$PatentsQueryCopyWithImpl<_PatentsQuery>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PatentsQueryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatentsQuery&&(identical(other.query, query) || other.query == query)&&(identical(other.num, num) || other.num == num)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query,num,page);

@override
String toString() {
  return 'PatentsQuery(query: $query, num: $num, page: $page)';
}


}

/// @nodoc
abstract mixin class _$PatentsQueryCopyWith<$Res> implements $PatentsQueryCopyWith<$Res> {
  factory _$PatentsQueryCopyWith(_PatentsQuery value, $Res Function(_PatentsQuery) _then) = __$PatentsQueryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'q') String query, int num, int? page
});




}
/// @nodoc
class __$PatentsQueryCopyWithImpl<$Res>
    implements _$PatentsQueryCopyWith<$Res> {
  __$PatentsQueryCopyWithImpl(this._self, this._then);

  final _PatentsQuery _self;
  final $Res Function(_PatentsQuery) _then;

/// Create a copy of PatentsQuery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,Object? num = null,Object? page = freezed,}) {
  return _then(_PatentsQuery(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,num: null == num ? _self.num : num // ignore: cast_nullable_to_non_nullable
as int,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$SearchQuery {

/// {@macro flutter_serper.queries.queryString}
@JsonKey(name: 'q') String get query;/// {@macro flutter_serper.queries.location}
 String? get location;/// {@macro flutter_serper.queries.countryCodeEnum}
@JsonKey(name: 'gl') CountryCode? get countryCode;/// {@macro flutter_serper.queries.languageCodeEnum}
@JsonKey(name: 'hl') LanguageCode? get languageCode;/// {@macro flutter_serper.queries.num}
 int? get num;/// {@macro flutter_serper.queries.autocorrect}
 bool? get autocorrect;/// {@macro flutter_serper.queries.tbsEnum}
 TbsValue? get tbs;/// {@macro flutter_serper.queries.page}
 int? get page;
/// Create a copy of SearchQuery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchQueryCopyWith<SearchQuery> get copyWith => _$SearchQueryCopyWithImpl<SearchQuery>(this as SearchQuery, _$identity);

  /// Serializes this SearchQuery to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchQuery&&(identical(other.query, query) || other.query == query)&&(identical(other.location, location) || other.location == location)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode)&&(identical(other.num, num) || other.num == num)&&(identical(other.autocorrect, autocorrect) || other.autocorrect == autocorrect)&&(identical(other.tbs, tbs) || other.tbs == tbs)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query,location,countryCode,languageCode,num,autocorrect,tbs,page);

@override
String toString() {
  return 'SearchQuery(query: $query, location: $location, countryCode: $countryCode, languageCode: $languageCode, num: $num, autocorrect: $autocorrect, tbs: $tbs, page: $page)';
}


}

/// @nodoc
abstract mixin class $SearchQueryCopyWith<$Res>  {
  factory $SearchQueryCopyWith(SearchQuery value, $Res Function(SearchQuery) _then) = _$SearchQueryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'q') String query, String? location,@JsonKey(name: 'gl') CountryCode? countryCode,@JsonKey(name: 'hl') LanguageCode? languageCode, int? num, bool? autocorrect, TbsValue? tbs, int? page
});




}
/// @nodoc
class _$SearchQueryCopyWithImpl<$Res>
    implements $SearchQueryCopyWith<$Res> {
  _$SearchQueryCopyWithImpl(this._self, this._then);

  final SearchQuery _self;
  final $Res Function(SearchQuery) _then;

/// Create a copy of SearchQuery
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? location = freezed,Object? countryCode = freezed,Object? languageCode = freezed,Object? num = freezed,Object? autocorrect = freezed,Object? tbs = freezed,Object? page = freezed,}) {
  return _then(_self.copyWith(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as CountryCode?,languageCode: freezed == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as LanguageCode?,num: freezed == num ? _self.num : num // ignore: cast_nullable_to_non_nullable
as int?,autocorrect: freezed == autocorrect ? _self.autocorrect : autocorrect // ignore: cast_nullable_to_non_nullable
as bool?,tbs: freezed == tbs ? _self.tbs : tbs // ignore: cast_nullable_to_non_nullable
as TbsValue?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SearchQuery implements SearchQuery {
  const _SearchQuery({@JsonKey(name: 'q') required this.query, this.location, @JsonKey(name: 'gl') this.countryCode, @JsonKey(name: 'hl') this.languageCode, this.num, this.autocorrect, this.tbs, this.page});
  factory _SearchQuery.fromJson(Map<String, dynamic> json) => _$SearchQueryFromJson(json);

/// {@macro flutter_serper.queries.queryString}
@override@JsonKey(name: 'q') final  String query;
/// {@macro flutter_serper.queries.location}
@override final  String? location;
/// {@macro flutter_serper.queries.countryCodeEnum}
@override@JsonKey(name: 'gl') final  CountryCode? countryCode;
/// {@macro flutter_serper.queries.languageCodeEnum}
@override@JsonKey(name: 'hl') final  LanguageCode? languageCode;
/// {@macro flutter_serper.queries.num}
@override final  int? num;
/// {@macro flutter_serper.queries.autocorrect}
@override final  bool? autocorrect;
/// {@macro flutter_serper.queries.tbsEnum}
@override final  TbsValue? tbs;
/// {@macro flutter_serper.queries.page}
@override final  int? page;

/// Create a copy of SearchQuery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchQueryCopyWith<_SearchQuery> get copyWith => __$SearchQueryCopyWithImpl<_SearchQuery>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchQueryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchQuery&&(identical(other.query, query) || other.query == query)&&(identical(other.location, location) || other.location == location)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode)&&(identical(other.num, num) || other.num == num)&&(identical(other.autocorrect, autocorrect) || other.autocorrect == autocorrect)&&(identical(other.tbs, tbs) || other.tbs == tbs)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query,location,countryCode,languageCode,num,autocorrect,tbs,page);

@override
String toString() {
  return 'SearchQuery(query: $query, location: $location, countryCode: $countryCode, languageCode: $languageCode, num: $num, autocorrect: $autocorrect, tbs: $tbs, page: $page)';
}


}

/// @nodoc
abstract mixin class _$SearchQueryCopyWith<$Res> implements $SearchQueryCopyWith<$Res> {
  factory _$SearchQueryCopyWith(_SearchQuery value, $Res Function(_SearchQuery) _then) = __$SearchQueryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'q') String query, String? location,@JsonKey(name: 'gl') CountryCode? countryCode,@JsonKey(name: 'hl') LanguageCode? languageCode, int? num, bool? autocorrect, TbsValue? tbs, int? page
});




}
/// @nodoc
class __$SearchQueryCopyWithImpl<$Res>
    implements _$SearchQueryCopyWith<$Res> {
  __$SearchQueryCopyWithImpl(this._self, this._then);

  final _SearchQuery _self;
  final $Res Function(_SearchQuery) _then;

/// Create a copy of SearchQuery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,Object? location = freezed,Object? countryCode = freezed,Object? languageCode = freezed,Object? num = freezed,Object? autocorrect = freezed,Object? tbs = freezed,Object? page = freezed,}) {
  return _then(_SearchQuery(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as CountryCode?,languageCode: freezed == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as LanguageCode?,num: freezed == num ? _self.num : num // ignore: cast_nullable_to_non_nullable
as int?,autocorrect: freezed == autocorrect ? _self.autocorrect : autocorrect // ignore: cast_nullable_to_non_nullable
as bool?,tbs: freezed == tbs ? _self.tbs : tbs // ignore: cast_nullable_to_non_nullable
as TbsValue?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$WebpageQuery {

/// {@template flutter_serper.queries.url}
/// The URL of the page to process.
///
/// This is a required parameter.
/// {@endtemplate}
 String get url;/// Whether to include markdown in the response
///
/// When true, the API will return a markdown version of the webpage content.
 bool get includeMarkdown;
/// Create a copy of WebpageQuery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WebpageQueryCopyWith<WebpageQuery> get copyWith => _$WebpageQueryCopyWithImpl<WebpageQuery>(this as WebpageQuery, _$identity);

  /// Serializes this WebpageQuery to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WebpageQuery&&(identical(other.url, url) || other.url == url)&&(identical(other.includeMarkdown, includeMarkdown) || other.includeMarkdown == includeMarkdown));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,includeMarkdown);

@override
String toString() {
  return 'WebpageQuery(url: $url, includeMarkdown: $includeMarkdown)';
}


}

/// @nodoc
abstract mixin class $WebpageQueryCopyWith<$Res>  {
  factory $WebpageQueryCopyWith(WebpageQuery value, $Res Function(WebpageQuery) _then) = _$WebpageQueryCopyWithImpl;
@useResult
$Res call({
 String url, bool includeMarkdown
});




}
/// @nodoc
class _$WebpageQueryCopyWithImpl<$Res>
    implements $WebpageQueryCopyWith<$Res> {
  _$WebpageQueryCopyWithImpl(this._self, this._then);

  final WebpageQuery _self;
  final $Res Function(WebpageQuery) _then;

/// Create a copy of WebpageQuery
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,Object? includeMarkdown = null,}) {
  return _then(_self.copyWith(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,includeMarkdown: null == includeMarkdown ? _self.includeMarkdown : includeMarkdown // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _WebpageQuery implements WebpageQuery {
  const _WebpageQuery({required this.url, this.includeMarkdown = true});
  factory _WebpageQuery.fromJson(Map<String, dynamic> json) => _$WebpageQueryFromJson(json);

/// {@template flutter_serper.queries.url}
/// The URL of the page to process.
///
/// This is a required parameter.
/// {@endtemplate}
@override final  String url;
/// Whether to include markdown in the response
///
/// When true, the API will return a markdown version of the webpage content.
@override@JsonKey() final  bool includeMarkdown;

/// Create a copy of WebpageQuery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WebpageQueryCopyWith<_WebpageQuery> get copyWith => __$WebpageQueryCopyWithImpl<_WebpageQuery>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WebpageQueryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WebpageQuery&&(identical(other.url, url) || other.url == url)&&(identical(other.includeMarkdown, includeMarkdown) || other.includeMarkdown == includeMarkdown));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,includeMarkdown);

@override
String toString() {
  return 'WebpageQuery(url: $url, includeMarkdown: $includeMarkdown)';
}


}

/// @nodoc
abstract mixin class _$WebpageQueryCopyWith<$Res> implements $WebpageQueryCopyWith<$Res> {
  factory _$WebpageQueryCopyWith(_WebpageQuery value, $Res Function(_WebpageQuery) _then) = __$WebpageQueryCopyWithImpl;
@override @useResult
$Res call({
 String url, bool includeMarkdown
});




}
/// @nodoc
class __$WebpageQueryCopyWithImpl<$Res>
    implements _$WebpageQueryCopyWith<$Res> {
  __$WebpageQueryCopyWithImpl(this._self, this._then);

  final _WebpageQuery _self;
  final $Res Function(_WebpageQuery) _then;

/// Create a copy of WebpageQuery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,Object? includeMarkdown = null,}) {
  return _then(_WebpageQuery(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,includeMarkdown: null == includeMarkdown ? _self.includeMarkdown : includeMarkdown // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
