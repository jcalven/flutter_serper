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

/// {@macro QueryDocTemplates.queryStringDoc}
 String get q;/// {@macro QueryDocTemplates.locationDoc}
 String? get location;/// {@macro QueryDocTemplates.glDoc}
 String? get gl;/// {@macro QueryDocTemplates.hlDoc}
 String? get hl;
/// Create a copy of AutocompleteQuery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AutocompleteQueryCopyWith<AutocompleteQuery> get copyWith => _$AutocompleteQueryCopyWithImpl<AutocompleteQuery>(this as AutocompleteQuery, _$identity);

  /// Serializes this AutocompleteQuery to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AutocompleteQuery&&(identical(other.q, q) || other.q == q)&&(identical(other.location, location) || other.location == location)&&(identical(other.gl, gl) || other.gl == gl)&&(identical(other.hl, hl) || other.hl == hl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,q,location,gl,hl);

@override
String toString() {
  return 'AutocompleteQuery(q: $q, location: $location, gl: $gl, hl: $hl)';
}


}

/// @nodoc
abstract mixin class $AutocompleteQueryCopyWith<$Res>  {
  factory $AutocompleteQueryCopyWith(AutocompleteQuery value, $Res Function(AutocompleteQuery) _then) = _$AutocompleteQueryCopyWithImpl;
@useResult
$Res call({
 String q, String? location, String? gl, String? hl
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
@pragma('vm:prefer-inline') @override $Res call({Object? q = null,Object? location = freezed,Object? gl = freezed,Object? hl = freezed,}) {
  return _then(_self.copyWith(
q: null == q ? _self.q : q // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,gl: freezed == gl ? _self.gl : gl // ignore: cast_nullable_to_non_nullable
as String?,hl: freezed == hl ? _self.hl : hl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AutocompleteQuery implements AutocompleteQuery {
  const _AutocompleteQuery({required this.q, this.location, this.gl, this.hl});
  factory _AutocompleteQuery.fromJson(Map<String, dynamic> json) => _$AutocompleteQueryFromJson(json);

/// {@macro QueryDocTemplates.queryStringDoc}
@override final  String q;
/// {@macro QueryDocTemplates.locationDoc}
@override final  String? location;
/// {@macro QueryDocTemplates.glDoc}
@override final  String? gl;
/// {@macro QueryDocTemplates.hlDoc}
@override final  String? hl;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AutocompleteQuery&&(identical(other.q, q) || other.q == q)&&(identical(other.location, location) || other.location == location)&&(identical(other.gl, gl) || other.gl == gl)&&(identical(other.hl, hl) || other.hl == hl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,q,location,gl,hl);

@override
String toString() {
  return 'AutocompleteQuery(q: $q, location: $location, gl: $gl, hl: $hl)';
}


}

/// @nodoc
abstract mixin class _$AutocompleteQueryCopyWith<$Res> implements $AutocompleteQueryCopyWith<$Res> {
  factory _$AutocompleteQueryCopyWith(_AutocompleteQuery value, $Res Function(_AutocompleteQuery) _then) = __$AutocompleteQueryCopyWithImpl;
@override @useResult
$Res call({
 String q, String? location, String? gl, String? hl
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
@override @pragma('vm:prefer-inline') $Res call({Object? q = null,Object? location = freezed,Object? gl = freezed,Object? hl = freezed,}) {
  return _then(_AutocompleteQuery(
q: null == q ? _self.q : q // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,gl: freezed == gl ? _self.gl : gl // ignore: cast_nullable_to_non_nullable
as String?,hl: freezed == hl ? _self.hl : hl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ImagesQuery {

/// {@macro QueryDocTemplates.queryStringDoc}
 String get q;/// {@macro QueryDocTemplates.locationDoc}
 String? get location;/// {@macro QueryDocTemplates.glDoc}
 String? get gl;/// {@macro QueryDocTemplates.hlDoc}
 String? get hl;/// {@macro QueryDocTemplates.numDoc}
 int? get num;/// {@macro QueryDocTemplates.autocorrectDoc}
 bool? get autocorrect;/// {@macro QueryDocTemplates.tbsDoc}
 String? get tbs;/// {@macro QueryDocTemplates.pageDoc}
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImagesQuery&&(identical(other.q, q) || other.q == q)&&(identical(other.location, location) || other.location == location)&&(identical(other.gl, gl) || other.gl == gl)&&(identical(other.hl, hl) || other.hl == hl)&&(identical(other.num, num) || other.num == num)&&(identical(other.autocorrect, autocorrect) || other.autocorrect == autocorrect)&&(identical(other.tbs, tbs) || other.tbs == tbs)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,q,location,gl,hl,num,autocorrect,tbs,page);

@override
String toString() {
  return 'ImagesQuery(q: $q, location: $location, gl: $gl, hl: $hl, num: $num, autocorrect: $autocorrect, tbs: $tbs, page: $page)';
}


}

/// @nodoc
abstract mixin class $ImagesQueryCopyWith<$Res>  {
  factory $ImagesQueryCopyWith(ImagesQuery value, $Res Function(ImagesQuery) _then) = _$ImagesQueryCopyWithImpl;
@useResult
$Res call({
 String q, String? location, String? gl, String? hl, int? num, bool? autocorrect, String? tbs, int? page
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
@pragma('vm:prefer-inline') @override $Res call({Object? q = null,Object? location = freezed,Object? gl = freezed,Object? hl = freezed,Object? num = freezed,Object? autocorrect = freezed,Object? tbs = freezed,Object? page = freezed,}) {
  return _then(_self.copyWith(
q: null == q ? _self.q : q // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,gl: freezed == gl ? _self.gl : gl // ignore: cast_nullable_to_non_nullable
as String?,hl: freezed == hl ? _self.hl : hl // ignore: cast_nullable_to_non_nullable
as String?,num: freezed == num ? _self.num : num // ignore: cast_nullable_to_non_nullable
as int?,autocorrect: freezed == autocorrect ? _self.autocorrect : autocorrect // ignore: cast_nullable_to_non_nullable
as bool?,tbs: freezed == tbs ? _self.tbs : tbs // ignore: cast_nullable_to_non_nullable
as String?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ImagesQuery implements ImagesQuery {
  const _ImagesQuery({required this.q, this.location, this.gl, this.hl, this.num, this.autocorrect, this.tbs, this.page});
  factory _ImagesQuery.fromJson(Map<String, dynamic> json) => _$ImagesQueryFromJson(json);

/// {@macro QueryDocTemplates.queryStringDoc}
@override final  String q;
/// {@macro QueryDocTemplates.locationDoc}
@override final  String? location;
/// {@macro QueryDocTemplates.glDoc}
@override final  String? gl;
/// {@macro QueryDocTemplates.hlDoc}
@override final  String? hl;
/// {@macro QueryDocTemplates.numDoc}
@override final  int? num;
/// {@macro QueryDocTemplates.autocorrectDoc}
@override final  bool? autocorrect;
/// {@macro QueryDocTemplates.tbsDoc}
@override final  String? tbs;
/// {@macro QueryDocTemplates.pageDoc}
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImagesQuery&&(identical(other.q, q) || other.q == q)&&(identical(other.location, location) || other.location == location)&&(identical(other.gl, gl) || other.gl == gl)&&(identical(other.hl, hl) || other.hl == hl)&&(identical(other.num, num) || other.num == num)&&(identical(other.autocorrect, autocorrect) || other.autocorrect == autocorrect)&&(identical(other.tbs, tbs) || other.tbs == tbs)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,q,location,gl,hl,num,autocorrect,tbs,page);

@override
String toString() {
  return 'ImagesQuery(q: $q, location: $location, gl: $gl, hl: $hl, num: $num, autocorrect: $autocorrect, tbs: $tbs, page: $page)';
}


}

/// @nodoc
abstract mixin class _$ImagesQueryCopyWith<$Res> implements $ImagesQueryCopyWith<$Res> {
  factory _$ImagesQueryCopyWith(_ImagesQuery value, $Res Function(_ImagesQuery) _then) = __$ImagesQueryCopyWithImpl;
@override @useResult
$Res call({
 String q, String? location, String? gl, String? hl, int? num, bool? autocorrect, String? tbs, int? page
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
@override @pragma('vm:prefer-inline') $Res call({Object? q = null,Object? location = freezed,Object? gl = freezed,Object? hl = freezed,Object? num = freezed,Object? autocorrect = freezed,Object? tbs = freezed,Object? page = freezed,}) {
  return _then(_ImagesQuery(
q: null == q ? _self.q : q // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,gl: freezed == gl ? _self.gl : gl // ignore: cast_nullable_to_non_nullable
as String?,hl: freezed == hl ? _self.hl : hl // ignore: cast_nullable_to_non_nullable
as String?,num: freezed == num ? _self.num : num // ignore: cast_nullable_to_non_nullable
as int?,autocorrect: freezed == autocorrect ? _self.autocorrect : autocorrect // ignore: cast_nullable_to_non_nullable
as bool?,tbs: freezed == tbs ? _self.tbs : tbs // ignore: cast_nullable_to_non_nullable
as String?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$PlacesQuery {

/// {@macro QueryDocTemplates.queryStringDoc}
 String get q;/// {@macro QueryDocTemplates.locationDoc}
 String? get location;/// {@macro QueryDocTemplates.glDoc}
 String? get gl;/// {@macro QueryDocTemplates.hlDoc}
 String? get hl;/// {@macro QueryDocTemplates.autocorrectDoc}
 bool? get autocorrect;/// {@macro QueryDocTemplates.tbsDoc}
 String? get tbs;/// {@macro QueryDocTemplates.pageDoc}
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlacesQuery&&(identical(other.q, q) || other.q == q)&&(identical(other.location, location) || other.location == location)&&(identical(other.gl, gl) || other.gl == gl)&&(identical(other.hl, hl) || other.hl == hl)&&(identical(other.autocorrect, autocorrect) || other.autocorrect == autocorrect)&&(identical(other.tbs, tbs) || other.tbs == tbs)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,q,location,gl,hl,autocorrect,tbs,page);

@override
String toString() {
  return 'PlacesQuery(q: $q, location: $location, gl: $gl, hl: $hl, autocorrect: $autocorrect, tbs: $tbs, page: $page)';
}


}

/// @nodoc
abstract mixin class $PlacesQueryCopyWith<$Res>  {
  factory $PlacesQueryCopyWith(PlacesQuery value, $Res Function(PlacesQuery) _then) = _$PlacesQueryCopyWithImpl;
@useResult
$Res call({
 String q, String? location, String? gl, String? hl, bool? autocorrect, String? tbs, int? page
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
@pragma('vm:prefer-inline') @override $Res call({Object? q = null,Object? location = freezed,Object? gl = freezed,Object? hl = freezed,Object? autocorrect = freezed,Object? tbs = freezed,Object? page = freezed,}) {
  return _then(_self.copyWith(
q: null == q ? _self.q : q // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,gl: freezed == gl ? _self.gl : gl // ignore: cast_nullable_to_non_nullable
as String?,hl: freezed == hl ? _self.hl : hl // ignore: cast_nullable_to_non_nullable
as String?,autocorrect: freezed == autocorrect ? _self.autocorrect : autocorrect // ignore: cast_nullable_to_non_nullable
as bool?,tbs: freezed == tbs ? _self.tbs : tbs // ignore: cast_nullable_to_non_nullable
as String?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PlacesQuery implements PlacesQuery {
  const _PlacesQuery({required this.q, this.location, this.gl, this.hl, this.autocorrect, this.tbs, this.page});
  factory _PlacesQuery.fromJson(Map<String, dynamic> json) => _$PlacesQueryFromJson(json);

/// {@macro QueryDocTemplates.queryStringDoc}
@override final  String q;
/// {@macro QueryDocTemplates.locationDoc}
@override final  String? location;
/// {@macro QueryDocTemplates.glDoc}
@override final  String? gl;
/// {@macro QueryDocTemplates.hlDoc}
@override final  String? hl;
/// {@macro QueryDocTemplates.autocorrectDoc}
@override final  bool? autocorrect;
/// {@macro QueryDocTemplates.tbsDoc}
@override final  String? tbs;
/// {@macro QueryDocTemplates.pageDoc}
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlacesQuery&&(identical(other.q, q) || other.q == q)&&(identical(other.location, location) || other.location == location)&&(identical(other.gl, gl) || other.gl == gl)&&(identical(other.hl, hl) || other.hl == hl)&&(identical(other.autocorrect, autocorrect) || other.autocorrect == autocorrect)&&(identical(other.tbs, tbs) || other.tbs == tbs)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,q,location,gl,hl,autocorrect,tbs,page);

@override
String toString() {
  return 'PlacesQuery(q: $q, location: $location, gl: $gl, hl: $hl, autocorrect: $autocorrect, tbs: $tbs, page: $page)';
}


}

/// @nodoc
abstract mixin class _$PlacesQueryCopyWith<$Res> implements $PlacesQueryCopyWith<$Res> {
  factory _$PlacesQueryCopyWith(_PlacesQuery value, $Res Function(_PlacesQuery) _then) = __$PlacesQueryCopyWithImpl;
@override @useResult
$Res call({
 String q, String? location, String? gl, String? hl, bool? autocorrect, String? tbs, int? page
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
@override @pragma('vm:prefer-inline') $Res call({Object? q = null,Object? location = freezed,Object? gl = freezed,Object? hl = freezed,Object? autocorrect = freezed,Object? tbs = freezed,Object? page = freezed,}) {
  return _then(_PlacesQuery(
q: null == q ? _self.q : q // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,gl: freezed == gl ? _self.gl : gl // ignore: cast_nullable_to_non_nullable
as String?,hl: freezed == hl ? _self.hl : hl // ignore: cast_nullable_to_non_nullable
as String?,autocorrect: freezed == autocorrect ? _self.autocorrect : autocorrect // ignore: cast_nullable_to_non_nullable
as bool?,tbs: freezed == tbs ? _self.tbs : tbs // ignore: cast_nullable_to_non_nullable
as String?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$VideosQuery {

/// {@macro QueryDocTemplates.queryStringDoc}
 String get q;/// {@macro QueryDocTemplates.locationDoc}
 String? get location;/// {@macro QueryDocTemplates.glDoc}
 String? get gl;/// {@macro QueryDocTemplates.hlDoc}
 String? get hl;/// {@macro QueryDocTemplates.numDoc}
 int? get num;/// {@macro QueryDocTemplates.autocorrectDoc}
 bool? get autocorrect;/// {@macro QueryDocTemplates.tbsDoc}
 String? get tbs;/// {@macro QueryDocTemplates.pageDoc}
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideosQuery&&(identical(other.q, q) || other.q == q)&&(identical(other.location, location) || other.location == location)&&(identical(other.gl, gl) || other.gl == gl)&&(identical(other.hl, hl) || other.hl == hl)&&(identical(other.num, num) || other.num == num)&&(identical(other.autocorrect, autocorrect) || other.autocorrect == autocorrect)&&(identical(other.tbs, tbs) || other.tbs == tbs)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,q,location,gl,hl,num,autocorrect,tbs,page);

@override
String toString() {
  return 'VideosQuery(q: $q, location: $location, gl: $gl, hl: $hl, num: $num, autocorrect: $autocorrect, tbs: $tbs, page: $page)';
}


}

/// @nodoc
abstract mixin class $VideosQueryCopyWith<$Res>  {
  factory $VideosQueryCopyWith(VideosQuery value, $Res Function(VideosQuery) _then) = _$VideosQueryCopyWithImpl;
@useResult
$Res call({
 String q, String? location, String? gl, String? hl, int? num, bool? autocorrect, String? tbs, int? page
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
@pragma('vm:prefer-inline') @override $Res call({Object? q = null,Object? location = freezed,Object? gl = freezed,Object? hl = freezed,Object? num = freezed,Object? autocorrect = freezed,Object? tbs = freezed,Object? page = freezed,}) {
  return _then(_self.copyWith(
q: null == q ? _self.q : q // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,gl: freezed == gl ? _self.gl : gl // ignore: cast_nullable_to_non_nullable
as String?,hl: freezed == hl ? _self.hl : hl // ignore: cast_nullable_to_non_nullable
as String?,num: freezed == num ? _self.num : num // ignore: cast_nullable_to_non_nullable
as int?,autocorrect: freezed == autocorrect ? _self.autocorrect : autocorrect // ignore: cast_nullable_to_non_nullable
as bool?,tbs: freezed == tbs ? _self.tbs : tbs // ignore: cast_nullable_to_non_nullable
as String?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _VideosQuery implements VideosQuery {
  const _VideosQuery({required this.q, this.location, this.gl, this.hl, this.num, this.autocorrect, this.tbs, this.page});
  factory _VideosQuery.fromJson(Map<String, dynamic> json) => _$VideosQueryFromJson(json);

/// {@macro QueryDocTemplates.queryStringDoc}
@override final  String q;
/// {@macro QueryDocTemplates.locationDoc}
@override final  String? location;
/// {@macro QueryDocTemplates.glDoc}
@override final  String? gl;
/// {@macro QueryDocTemplates.hlDoc}
@override final  String? hl;
/// {@macro QueryDocTemplates.numDoc}
@override final  int? num;
/// {@macro QueryDocTemplates.autocorrectDoc}
@override final  bool? autocorrect;
/// {@macro QueryDocTemplates.tbsDoc}
@override final  String? tbs;
/// {@macro QueryDocTemplates.pageDoc}
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideosQuery&&(identical(other.q, q) || other.q == q)&&(identical(other.location, location) || other.location == location)&&(identical(other.gl, gl) || other.gl == gl)&&(identical(other.hl, hl) || other.hl == hl)&&(identical(other.num, num) || other.num == num)&&(identical(other.autocorrect, autocorrect) || other.autocorrect == autocorrect)&&(identical(other.tbs, tbs) || other.tbs == tbs)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,q,location,gl,hl,num,autocorrect,tbs,page);

@override
String toString() {
  return 'VideosQuery(q: $q, location: $location, gl: $gl, hl: $hl, num: $num, autocorrect: $autocorrect, tbs: $tbs, page: $page)';
}


}

/// @nodoc
abstract mixin class _$VideosQueryCopyWith<$Res> implements $VideosQueryCopyWith<$Res> {
  factory _$VideosQueryCopyWith(_VideosQuery value, $Res Function(_VideosQuery) _then) = __$VideosQueryCopyWithImpl;
@override @useResult
$Res call({
 String q, String? location, String? gl, String? hl, int? num, bool? autocorrect, String? tbs, int? page
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
@override @pragma('vm:prefer-inline') $Res call({Object? q = null,Object? location = freezed,Object? gl = freezed,Object? hl = freezed,Object? num = freezed,Object? autocorrect = freezed,Object? tbs = freezed,Object? page = freezed,}) {
  return _then(_VideosQuery(
q: null == q ? _self.q : q // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,gl: freezed == gl ? _self.gl : gl // ignore: cast_nullable_to_non_nullable
as String?,hl: freezed == hl ? _self.hl : hl // ignore: cast_nullable_to_non_nullable
as String?,num: freezed == num ? _self.num : num // ignore: cast_nullable_to_non_nullable
as int?,autocorrect: freezed == autocorrect ? _self.autocorrect : autocorrect // ignore: cast_nullable_to_non_nullable
as bool?,tbs: freezed == tbs ? _self.tbs : tbs // ignore: cast_nullable_to_non_nullable
as String?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$MapsQuery {

/// {@macro QueryDocTemplates.queryStringDoc}
 String get q;/// {@macro QueryDocTemplates.hlDoc}
 String? get hl;/// Optional latitude and longitude parameter
///
/// Format: "latitude,longitude"
 String? get ll;/// Optional Google Maps place ID parameter
 String? get placeId;/// Optional Google Maps CID parameter
 String? get cid;/// {@macro QueryDocTemplates.pageDoc}
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MapsQuery&&(identical(other.q, q) || other.q == q)&&(identical(other.hl, hl) || other.hl == hl)&&(identical(other.ll, ll) || other.ll == ll)&&(identical(other.placeId, placeId) || other.placeId == placeId)&&(identical(other.cid, cid) || other.cid == cid)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,q,hl,ll,placeId,cid,page);

@override
String toString() {
  return 'MapsQuery(q: $q, hl: $hl, ll: $ll, placeId: $placeId, cid: $cid, page: $page)';
}


}

/// @nodoc
abstract mixin class $MapsQueryCopyWith<$Res>  {
  factory $MapsQueryCopyWith(MapsQuery value, $Res Function(MapsQuery) _then) = _$MapsQueryCopyWithImpl;
@useResult
$Res call({
 String q, String? hl, String? ll, String? placeId, String? cid, int? page
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
@pragma('vm:prefer-inline') @override $Res call({Object? q = null,Object? hl = freezed,Object? ll = freezed,Object? placeId = freezed,Object? cid = freezed,Object? page = freezed,}) {
  return _then(_self.copyWith(
q: null == q ? _self.q : q // ignore: cast_nullable_to_non_nullable
as String,hl: freezed == hl ? _self.hl : hl // ignore: cast_nullable_to_non_nullable
as String?,ll: freezed == ll ? _self.ll : ll // ignore: cast_nullable_to_non_nullable
as String?,placeId: freezed == placeId ? _self.placeId : placeId // ignore: cast_nullable_to_non_nullable
as String?,cid: freezed == cid ? _self.cid : cid // ignore: cast_nullable_to_non_nullable
as String?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _MapsQuery implements MapsQuery {
  const _MapsQuery({required this.q, this.hl, this.ll, this.placeId, this.cid, this.page});
  factory _MapsQuery.fromJson(Map<String, dynamic> json) => _$MapsQueryFromJson(json);

/// {@macro QueryDocTemplates.queryStringDoc}
@override final  String q;
/// {@macro QueryDocTemplates.hlDoc}
@override final  String? hl;
/// Optional latitude and longitude parameter
///
/// Format: "latitude,longitude"
@override final  String? ll;
/// Optional Google Maps place ID parameter
@override final  String? placeId;
/// Optional Google Maps CID parameter
@override final  String? cid;
/// {@macro QueryDocTemplates.pageDoc}
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MapsQuery&&(identical(other.q, q) || other.q == q)&&(identical(other.hl, hl) || other.hl == hl)&&(identical(other.ll, ll) || other.ll == ll)&&(identical(other.placeId, placeId) || other.placeId == placeId)&&(identical(other.cid, cid) || other.cid == cid)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,q,hl,ll,placeId,cid,page);

@override
String toString() {
  return 'MapsQuery(q: $q, hl: $hl, ll: $ll, placeId: $placeId, cid: $cid, page: $page)';
}


}

/// @nodoc
abstract mixin class _$MapsQueryCopyWith<$Res> implements $MapsQueryCopyWith<$Res> {
  factory _$MapsQueryCopyWith(_MapsQuery value, $Res Function(_MapsQuery) _then) = __$MapsQueryCopyWithImpl;
@override @useResult
$Res call({
 String q, String? hl, String? ll, String? placeId, String? cid, int? page
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
@override @pragma('vm:prefer-inline') $Res call({Object? q = null,Object? hl = freezed,Object? ll = freezed,Object? placeId = freezed,Object? cid = freezed,Object? page = freezed,}) {
  return _then(_MapsQuery(
q: null == q ? _self.q : q // ignore: cast_nullable_to_non_nullable
as String,hl: freezed == hl ? _self.hl : hl // ignore: cast_nullable_to_non_nullable
as String?,ll: freezed == ll ? _self.ll : ll // ignore: cast_nullable_to_non_nullable
as String?,placeId: freezed == placeId ? _self.placeId : placeId // ignore: cast_nullable_to_non_nullable
as String?,cid: freezed == cid ? _self.cid : cid // ignore: cast_nullable_to_non_nullable
as String?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$ReviewsQuery {

/// Required Google CID parameter for the place
 String get cid;/// Required FID parameter for the place
 String get fid;/// Required Google Maps Place ID
 String get placeId;/// {@macro QueryDocTemplates.glDoc}
 String? get gl;/// {@macro QueryDocTemplates.hlDoc}
 String? get hl;/// Optional parameter to sort reviews
///
/// Possible values: 'newest', 'highest_rating', 'lowest_rating', 'relevant'
 String? get sortBy;/// Optional topic ID to filter reviews by topic
 String? get topicId;/// Optional token for pagination
 String? get nextPageToken;/// Optional query string to filter reviews
 String? get q;
/// Create a copy of ReviewsQuery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewsQueryCopyWith<ReviewsQuery> get copyWith => _$ReviewsQueryCopyWithImpl<ReviewsQuery>(this as ReviewsQuery, _$identity);

  /// Serializes this ReviewsQuery to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewsQuery&&(identical(other.cid, cid) || other.cid == cid)&&(identical(other.fid, fid) || other.fid == fid)&&(identical(other.placeId, placeId) || other.placeId == placeId)&&(identical(other.gl, gl) || other.gl == gl)&&(identical(other.hl, hl) || other.hl == hl)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.topicId, topicId) || other.topicId == topicId)&&(identical(other.nextPageToken, nextPageToken) || other.nextPageToken == nextPageToken)&&(identical(other.q, q) || other.q == q));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cid,fid,placeId,gl,hl,sortBy,topicId,nextPageToken,q);

@override
String toString() {
  return 'ReviewsQuery(cid: $cid, fid: $fid, placeId: $placeId, gl: $gl, hl: $hl, sortBy: $sortBy, topicId: $topicId, nextPageToken: $nextPageToken, q: $q)';
}


}

/// @nodoc
abstract mixin class $ReviewsQueryCopyWith<$Res>  {
  factory $ReviewsQueryCopyWith(ReviewsQuery value, $Res Function(ReviewsQuery) _then) = _$ReviewsQueryCopyWithImpl;
@useResult
$Res call({
 String cid, String fid, String placeId, String? gl, String? hl, String? sortBy, String? topicId, String? nextPageToken, String? q
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
@pragma('vm:prefer-inline') @override $Res call({Object? cid = null,Object? fid = null,Object? placeId = null,Object? gl = freezed,Object? hl = freezed,Object? sortBy = freezed,Object? topicId = freezed,Object? nextPageToken = freezed,Object? q = freezed,}) {
  return _then(_self.copyWith(
cid: null == cid ? _self.cid : cid // ignore: cast_nullable_to_non_nullable
as String,fid: null == fid ? _self.fid : fid // ignore: cast_nullable_to_non_nullable
as String,placeId: null == placeId ? _self.placeId : placeId // ignore: cast_nullable_to_non_nullable
as String,gl: freezed == gl ? _self.gl : gl // ignore: cast_nullable_to_non_nullable
as String?,hl: freezed == hl ? _self.hl : hl // ignore: cast_nullable_to_non_nullable
as String?,sortBy: freezed == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String?,topicId: freezed == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String?,nextPageToken: freezed == nextPageToken ? _self.nextPageToken : nextPageToken // ignore: cast_nullable_to_non_nullable
as String?,q: freezed == q ? _self.q : q // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ReviewsQuery implements ReviewsQuery {
  const _ReviewsQuery({required this.cid, required this.fid, required this.placeId, this.gl, this.hl, this.sortBy, this.topicId, this.nextPageToken, this.q});
  factory _ReviewsQuery.fromJson(Map<String, dynamic> json) => _$ReviewsQueryFromJson(json);

/// Required Google CID parameter for the place
@override final  String cid;
/// Required FID parameter for the place
@override final  String fid;
/// Required Google Maps Place ID
@override final  String placeId;
/// {@macro QueryDocTemplates.glDoc}
@override final  String? gl;
/// {@macro QueryDocTemplates.hlDoc}
@override final  String? hl;
/// Optional parameter to sort reviews
///
/// Possible values: 'newest', 'highest_rating', 'lowest_rating', 'relevant'
@override final  String? sortBy;
/// Optional topic ID to filter reviews by topic
@override final  String? topicId;
/// Optional token for pagination
@override final  String? nextPageToken;
/// Optional query string to filter reviews
@override final  String? q;

/// Create a copy of ReviewsQuery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewsQueryCopyWith<_ReviewsQuery> get copyWith => __$ReviewsQueryCopyWithImpl<_ReviewsQuery>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewsQueryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewsQuery&&(identical(other.cid, cid) || other.cid == cid)&&(identical(other.fid, fid) || other.fid == fid)&&(identical(other.placeId, placeId) || other.placeId == placeId)&&(identical(other.gl, gl) || other.gl == gl)&&(identical(other.hl, hl) || other.hl == hl)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.topicId, topicId) || other.topicId == topicId)&&(identical(other.nextPageToken, nextPageToken) || other.nextPageToken == nextPageToken)&&(identical(other.q, q) || other.q == q));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cid,fid,placeId,gl,hl,sortBy,topicId,nextPageToken,q);

@override
String toString() {
  return 'ReviewsQuery(cid: $cid, fid: $fid, placeId: $placeId, gl: $gl, hl: $hl, sortBy: $sortBy, topicId: $topicId, nextPageToken: $nextPageToken, q: $q)';
}


}

/// @nodoc
abstract mixin class _$ReviewsQueryCopyWith<$Res> implements $ReviewsQueryCopyWith<$Res> {
  factory _$ReviewsQueryCopyWith(_ReviewsQuery value, $Res Function(_ReviewsQuery) _then) = __$ReviewsQueryCopyWithImpl;
@override @useResult
$Res call({
 String cid, String fid, String placeId, String? gl, String? hl, String? sortBy, String? topicId, String? nextPageToken, String? q
});




}
/// @nodoc
class __$ReviewsQueryCopyWithImpl<$Res>
    implements _$ReviewsQueryCopyWith<$Res> {
  __$ReviewsQueryCopyWithImpl(this._self, this._then);

  final _ReviewsQuery _self;
  final $Res Function(_ReviewsQuery) _then;

/// Create a copy of ReviewsQuery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cid = null,Object? fid = null,Object? placeId = null,Object? gl = freezed,Object? hl = freezed,Object? sortBy = freezed,Object? topicId = freezed,Object? nextPageToken = freezed,Object? q = freezed,}) {
  return _then(_ReviewsQuery(
cid: null == cid ? _self.cid : cid // ignore: cast_nullable_to_non_nullable
as String,fid: null == fid ? _self.fid : fid // ignore: cast_nullable_to_non_nullable
as String,placeId: null == placeId ? _self.placeId : placeId // ignore: cast_nullable_to_non_nullable
as String,gl: freezed == gl ? _self.gl : gl // ignore: cast_nullable_to_non_nullable
as String?,hl: freezed == hl ? _self.hl : hl // ignore: cast_nullable_to_non_nullable
as String?,sortBy: freezed == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String?,topicId: freezed == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String?,nextPageToken: freezed == nextPageToken ? _self.nextPageToken : nextPageToken // ignore: cast_nullable_to_non_nullable
as String?,q: freezed == q ? _self.q : q // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$NewsQuery {

/// {@macro QueryDocTemplates.queryStringDoc}
 String get q;/// {@macro QueryDocTemplates.locationDoc}
 String? get location;/// {@macro QueryDocTemplates.glDoc}
 String? get gl;/// {@macro QueryDocTemplates.hlDoc}
 String? get hl;/// {@macro QueryDocTemplates.numDoc}
 int? get num;/// {@macro QueryDocTemplates.autocorrectDoc}
 bool? get autocorrect;/// {@macro QueryDocTemplates.tbsDoc}
 String? get tbs;/// {@macro QueryDocTemplates.pageDoc}
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewsQuery&&(identical(other.q, q) || other.q == q)&&(identical(other.location, location) || other.location == location)&&(identical(other.gl, gl) || other.gl == gl)&&(identical(other.hl, hl) || other.hl == hl)&&(identical(other.num, num) || other.num == num)&&(identical(other.autocorrect, autocorrect) || other.autocorrect == autocorrect)&&(identical(other.tbs, tbs) || other.tbs == tbs)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,q,location,gl,hl,num,autocorrect,tbs,page);

@override
String toString() {
  return 'NewsQuery(q: $q, location: $location, gl: $gl, hl: $hl, num: $num, autocorrect: $autocorrect, tbs: $tbs, page: $page)';
}


}

/// @nodoc
abstract mixin class $NewsQueryCopyWith<$Res>  {
  factory $NewsQueryCopyWith(NewsQuery value, $Res Function(NewsQuery) _then) = _$NewsQueryCopyWithImpl;
@useResult
$Res call({
 String q, String? location, String? gl, String? hl, int? num, bool? autocorrect, String? tbs, int? page
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
@pragma('vm:prefer-inline') @override $Res call({Object? q = null,Object? location = freezed,Object? gl = freezed,Object? hl = freezed,Object? num = freezed,Object? autocorrect = freezed,Object? tbs = freezed,Object? page = freezed,}) {
  return _then(_self.copyWith(
q: null == q ? _self.q : q // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,gl: freezed == gl ? _self.gl : gl // ignore: cast_nullable_to_non_nullable
as String?,hl: freezed == hl ? _self.hl : hl // ignore: cast_nullable_to_non_nullable
as String?,num: freezed == num ? _self.num : num // ignore: cast_nullable_to_non_nullable
as int?,autocorrect: freezed == autocorrect ? _self.autocorrect : autocorrect // ignore: cast_nullable_to_non_nullable
as bool?,tbs: freezed == tbs ? _self.tbs : tbs // ignore: cast_nullable_to_non_nullable
as String?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _NewsQuery implements NewsQuery {
  const _NewsQuery({required this.q, this.location, this.gl, this.hl, this.num, this.autocorrect, this.tbs, this.page});
  factory _NewsQuery.fromJson(Map<String, dynamic> json) => _$NewsQueryFromJson(json);

/// {@macro QueryDocTemplates.queryStringDoc}
@override final  String q;
/// {@macro QueryDocTemplates.locationDoc}
@override final  String? location;
/// {@macro QueryDocTemplates.glDoc}
@override final  String? gl;
/// {@macro QueryDocTemplates.hlDoc}
@override final  String? hl;
/// {@macro QueryDocTemplates.numDoc}
@override final  int? num;
/// {@macro QueryDocTemplates.autocorrectDoc}
@override final  bool? autocorrect;
/// {@macro QueryDocTemplates.tbsDoc}
@override final  String? tbs;
/// {@macro QueryDocTemplates.pageDoc}
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewsQuery&&(identical(other.q, q) || other.q == q)&&(identical(other.location, location) || other.location == location)&&(identical(other.gl, gl) || other.gl == gl)&&(identical(other.hl, hl) || other.hl == hl)&&(identical(other.num, num) || other.num == num)&&(identical(other.autocorrect, autocorrect) || other.autocorrect == autocorrect)&&(identical(other.tbs, tbs) || other.tbs == tbs)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,q,location,gl,hl,num,autocorrect,tbs,page);

@override
String toString() {
  return 'NewsQuery(q: $q, location: $location, gl: $gl, hl: $hl, num: $num, autocorrect: $autocorrect, tbs: $tbs, page: $page)';
}


}

/// @nodoc
abstract mixin class _$NewsQueryCopyWith<$Res> implements $NewsQueryCopyWith<$Res> {
  factory _$NewsQueryCopyWith(_NewsQuery value, $Res Function(_NewsQuery) _then) = __$NewsQueryCopyWithImpl;
@override @useResult
$Res call({
 String q, String? location, String? gl, String? hl, int? num, bool? autocorrect, String? tbs, int? page
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
@override @pragma('vm:prefer-inline') $Res call({Object? q = null,Object? location = freezed,Object? gl = freezed,Object? hl = freezed,Object? num = freezed,Object? autocorrect = freezed,Object? tbs = freezed,Object? page = freezed,}) {
  return _then(_NewsQuery(
q: null == q ? _self.q : q // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,gl: freezed == gl ? _self.gl : gl // ignore: cast_nullable_to_non_nullable
as String?,hl: freezed == hl ? _self.hl : hl // ignore: cast_nullable_to_non_nullable
as String?,num: freezed == num ? _self.num : num // ignore: cast_nullable_to_non_nullable
as int?,autocorrect: freezed == autocorrect ? _self.autocorrect : autocorrect // ignore: cast_nullable_to_non_nullable
as bool?,tbs: freezed == tbs ? _self.tbs : tbs // ignore: cast_nullable_to_non_nullable
as String?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$ShoppingQuery {

/// {@macro QueryDocTemplates.queryStringDoc}
 String get q;/// {@macro QueryDocTemplates.locationDoc}
 String? get location;/// {@macro QueryDocTemplates.glDoc}
 String? get gl;/// {@macro QueryDocTemplates.hlDoc}
 String? get hl;/// {@macro QueryDocTemplates.autocorrectDoc}
 bool? get autocorrect;/// {@macro QueryDocTemplates.tbsDoc}
 String? get tbs;/// {@macro QueryDocTemplates.pageDoc}
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShoppingQuery&&(identical(other.q, q) || other.q == q)&&(identical(other.location, location) || other.location == location)&&(identical(other.gl, gl) || other.gl == gl)&&(identical(other.hl, hl) || other.hl == hl)&&(identical(other.autocorrect, autocorrect) || other.autocorrect == autocorrect)&&(identical(other.tbs, tbs) || other.tbs == tbs)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,q,location,gl,hl,autocorrect,tbs,page);

@override
String toString() {
  return 'ShoppingQuery(q: $q, location: $location, gl: $gl, hl: $hl, autocorrect: $autocorrect, tbs: $tbs, page: $page)';
}


}

/// @nodoc
abstract mixin class $ShoppingQueryCopyWith<$Res>  {
  factory $ShoppingQueryCopyWith(ShoppingQuery value, $Res Function(ShoppingQuery) _then) = _$ShoppingQueryCopyWithImpl;
@useResult
$Res call({
 String q, String? location, String? gl, String? hl, bool? autocorrect, String? tbs, int? page
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
@pragma('vm:prefer-inline') @override $Res call({Object? q = null,Object? location = freezed,Object? gl = freezed,Object? hl = freezed,Object? autocorrect = freezed,Object? tbs = freezed,Object? page = freezed,}) {
  return _then(_self.copyWith(
q: null == q ? _self.q : q // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,gl: freezed == gl ? _self.gl : gl // ignore: cast_nullable_to_non_nullable
as String?,hl: freezed == hl ? _self.hl : hl // ignore: cast_nullable_to_non_nullable
as String?,autocorrect: freezed == autocorrect ? _self.autocorrect : autocorrect // ignore: cast_nullable_to_non_nullable
as bool?,tbs: freezed == tbs ? _self.tbs : tbs // ignore: cast_nullable_to_non_nullable
as String?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ShoppingQuery implements ShoppingQuery {
  const _ShoppingQuery({required this.q, this.location, this.gl, this.hl, this.autocorrect, this.tbs, this.page});
  factory _ShoppingQuery.fromJson(Map<String, dynamic> json) => _$ShoppingQueryFromJson(json);

/// {@macro QueryDocTemplates.queryStringDoc}
@override final  String q;
/// {@macro QueryDocTemplates.locationDoc}
@override final  String? location;
/// {@macro QueryDocTemplates.glDoc}
@override final  String? gl;
/// {@macro QueryDocTemplates.hlDoc}
@override final  String? hl;
/// {@macro QueryDocTemplates.autocorrectDoc}
@override final  bool? autocorrect;
/// {@macro QueryDocTemplates.tbsDoc}
@override final  String? tbs;
/// {@macro QueryDocTemplates.pageDoc}
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShoppingQuery&&(identical(other.q, q) || other.q == q)&&(identical(other.location, location) || other.location == location)&&(identical(other.gl, gl) || other.gl == gl)&&(identical(other.hl, hl) || other.hl == hl)&&(identical(other.autocorrect, autocorrect) || other.autocorrect == autocorrect)&&(identical(other.tbs, tbs) || other.tbs == tbs)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,q,location,gl,hl,autocorrect,tbs,page);

@override
String toString() {
  return 'ShoppingQuery(q: $q, location: $location, gl: $gl, hl: $hl, autocorrect: $autocorrect, tbs: $tbs, page: $page)';
}


}

/// @nodoc
abstract mixin class _$ShoppingQueryCopyWith<$Res> implements $ShoppingQueryCopyWith<$Res> {
  factory _$ShoppingQueryCopyWith(_ShoppingQuery value, $Res Function(_ShoppingQuery) _then) = __$ShoppingQueryCopyWithImpl;
@override @useResult
$Res call({
 String q, String? location, String? gl, String? hl, bool? autocorrect, String? tbs, int? page
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
@override @pragma('vm:prefer-inline') $Res call({Object? q = null,Object? location = freezed,Object? gl = freezed,Object? hl = freezed,Object? autocorrect = freezed,Object? tbs = freezed,Object? page = freezed,}) {
  return _then(_ShoppingQuery(
q: null == q ? _self.q : q // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,gl: freezed == gl ? _self.gl : gl // ignore: cast_nullable_to_non_nullable
as String?,hl: freezed == hl ? _self.hl : hl // ignore: cast_nullable_to_non_nullable
as String?,autocorrect: freezed == autocorrect ? _self.autocorrect : autocorrect // ignore: cast_nullable_to_non_nullable
as bool?,tbs: freezed == tbs ? _self.tbs : tbs // ignore: cast_nullable_to_non_nullable
as String?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$LensQuery {

/// {@macro QueryDocTemplates.urlDoc}
 String get url;/// {@macro QueryDocTemplates.locationDoc}
 String? get location;/// {@macro QueryDocTemplates.glDoc}
 String? get gl;/// {@macro QueryDocTemplates.hlDoc}
 String? get hl;/// {@macro QueryDocTemplates.tbsDoc}
 String? get tbs;/// Optional query string to refine the image search
 String? get q;
/// Create a copy of LensQuery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LensQueryCopyWith<LensQuery> get copyWith => _$LensQueryCopyWithImpl<LensQuery>(this as LensQuery, _$identity);

  /// Serializes this LensQuery to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LensQuery&&(identical(other.url, url) || other.url == url)&&(identical(other.location, location) || other.location == location)&&(identical(other.gl, gl) || other.gl == gl)&&(identical(other.hl, hl) || other.hl == hl)&&(identical(other.tbs, tbs) || other.tbs == tbs)&&(identical(other.q, q) || other.q == q));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,location,gl,hl,tbs,q);

@override
String toString() {
  return 'LensQuery(url: $url, location: $location, gl: $gl, hl: $hl, tbs: $tbs, q: $q)';
}


}

/// @nodoc
abstract mixin class $LensQueryCopyWith<$Res>  {
  factory $LensQueryCopyWith(LensQuery value, $Res Function(LensQuery) _then) = _$LensQueryCopyWithImpl;
@useResult
$Res call({
 String url, String? location, String? gl, String? hl, String? tbs, String? q
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
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,Object? location = freezed,Object? gl = freezed,Object? hl = freezed,Object? tbs = freezed,Object? q = freezed,}) {
  return _then(_self.copyWith(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,gl: freezed == gl ? _self.gl : gl // ignore: cast_nullable_to_non_nullable
as String?,hl: freezed == hl ? _self.hl : hl // ignore: cast_nullable_to_non_nullable
as String?,tbs: freezed == tbs ? _self.tbs : tbs // ignore: cast_nullable_to_non_nullable
as String?,q: freezed == q ? _self.q : q // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _LensQuery implements LensQuery {
  const _LensQuery({required this.url, this.location, this.gl, this.hl, this.tbs, this.q});
  factory _LensQuery.fromJson(Map<String, dynamic> json) => _$LensQueryFromJson(json);

/// {@macro QueryDocTemplates.urlDoc}
@override final  String url;
/// {@macro QueryDocTemplates.locationDoc}
@override final  String? location;
/// {@macro QueryDocTemplates.glDoc}
@override final  String? gl;
/// {@macro QueryDocTemplates.hlDoc}
@override final  String? hl;
/// {@macro QueryDocTemplates.tbsDoc}
@override final  String? tbs;
/// Optional query string to refine the image search
@override final  String? q;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LensQuery&&(identical(other.url, url) || other.url == url)&&(identical(other.location, location) || other.location == location)&&(identical(other.gl, gl) || other.gl == gl)&&(identical(other.hl, hl) || other.hl == hl)&&(identical(other.tbs, tbs) || other.tbs == tbs)&&(identical(other.q, q) || other.q == q));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,location,gl,hl,tbs,q);

@override
String toString() {
  return 'LensQuery(url: $url, location: $location, gl: $gl, hl: $hl, tbs: $tbs, q: $q)';
}


}

/// @nodoc
abstract mixin class _$LensQueryCopyWith<$Res> implements $LensQueryCopyWith<$Res> {
  factory _$LensQueryCopyWith(_LensQuery value, $Res Function(_LensQuery) _then) = __$LensQueryCopyWithImpl;
@override @useResult
$Res call({
 String url, String? location, String? gl, String? hl, String? tbs, String? q
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
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,Object? location = freezed,Object? gl = freezed,Object? hl = freezed,Object? tbs = freezed,Object? q = freezed,}) {
  return _then(_LensQuery(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,gl: freezed == gl ? _self.gl : gl // ignore: cast_nullable_to_non_nullable
as String?,hl: freezed == hl ? _self.hl : hl // ignore: cast_nullable_to_non_nullable
as String?,tbs: freezed == tbs ? _self.tbs : tbs // ignore: cast_nullable_to_non_nullable
as String?,q: freezed == q ? _self.q : q // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ScholarQuery {

/// {@macro QueryDocTemplates.queryStringDoc}
 String get q;/// {@macro QueryDocTemplates.locationDoc}
 String? get location;/// {@macro QueryDocTemplates.glDoc}
 String? get gl;/// {@macro QueryDocTemplates.hlDoc}
 String? get hl;/// {@macro QueryDocTemplates.autocorrectDoc}
 bool? get autocorrect;/// {@macro QueryDocTemplates.tbsDoc}
 String? get tbs;/// {@macro QueryDocTemplates.pageDoc}
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScholarQuery&&(identical(other.q, q) || other.q == q)&&(identical(other.location, location) || other.location == location)&&(identical(other.gl, gl) || other.gl == gl)&&(identical(other.hl, hl) || other.hl == hl)&&(identical(other.autocorrect, autocorrect) || other.autocorrect == autocorrect)&&(identical(other.tbs, tbs) || other.tbs == tbs)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,q,location,gl,hl,autocorrect,tbs,page);

@override
String toString() {
  return 'ScholarQuery(q: $q, location: $location, gl: $gl, hl: $hl, autocorrect: $autocorrect, tbs: $tbs, page: $page)';
}


}

/// @nodoc
abstract mixin class $ScholarQueryCopyWith<$Res>  {
  factory $ScholarQueryCopyWith(ScholarQuery value, $Res Function(ScholarQuery) _then) = _$ScholarQueryCopyWithImpl;
@useResult
$Res call({
 String q, String? location, String? gl, String? hl, bool? autocorrect, String? tbs, int? page
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
@pragma('vm:prefer-inline') @override $Res call({Object? q = null,Object? location = freezed,Object? gl = freezed,Object? hl = freezed,Object? autocorrect = freezed,Object? tbs = freezed,Object? page = freezed,}) {
  return _then(_self.copyWith(
q: null == q ? _self.q : q // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,gl: freezed == gl ? _self.gl : gl // ignore: cast_nullable_to_non_nullable
as String?,hl: freezed == hl ? _self.hl : hl // ignore: cast_nullable_to_non_nullable
as String?,autocorrect: freezed == autocorrect ? _self.autocorrect : autocorrect // ignore: cast_nullable_to_non_nullable
as bool?,tbs: freezed == tbs ? _self.tbs : tbs // ignore: cast_nullable_to_non_nullable
as String?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ScholarQuery implements ScholarQuery {
  const _ScholarQuery({required this.q, this.location, this.gl, this.hl, this.autocorrect, this.tbs, this.page});
  factory _ScholarQuery.fromJson(Map<String, dynamic> json) => _$ScholarQueryFromJson(json);

/// {@macro QueryDocTemplates.queryStringDoc}
@override final  String q;
/// {@macro QueryDocTemplates.locationDoc}
@override final  String? location;
/// {@macro QueryDocTemplates.glDoc}
@override final  String? gl;
/// {@macro QueryDocTemplates.hlDoc}
@override final  String? hl;
/// {@macro QueryDocTemplates.autocorrectDoc}
@override final  bool? autocorrect;
/// {@macro QueryDocTemplates.tbsDoc}
@override final  String? tbs;
/// {@macro QueryDocTemplates.pageDoc}
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScholarQuery&&(identical(other.q, q) || other.q == q)&&(identical(other.location, location) || other.location == location)&&(identical(other.gl, gl) || other.gl == gl)&&(identical(other.hl, hl) || other.hl == hl)&&(identical(other.autocorrect, autocorrect) || other.autocorrect == autocorrect)&&(identical(other.tbs, tbs) || other.tbs == tbs)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,q,location,gl,hl,autocorrect,tbs,page);

@override
String toString() {
  return 'ScholarQuery(q: $q, location: $location, gl: $gl, hl: $hl, autocorrect: $autocorrect, tbs: $tbs, page: $page)';
}


}

/// @nodoc
abstract mixin class _$ScholarQueryCopyWith<$Res> implements $ScholarQueryCopyWith<$Res> {
  factory _$ScholarQueryCopyWith(_ScholarQuery value, $Res Function(_ScholarQuery) _then) = __$ScholarQueryCopyWithImpl;
@override @useResult
$Res call({
 String q, String? location, String? gl, String? hl, bool? autocorrect, String? tbs, int? page
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
@override @pragma('vm:prefer-inline') $Res call({Object? q = null,Object? location = freezed,Object? gl = freezed,Object? hl = freezed,Object? autocorrect = freezed,Object? tbs = freezed,Object? page = freezed,}) {
  return _then(_ScholarQuery(
q: null == q ? _self.q : q // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,gl: freezed == gl ? _self.gl : gl // ignore: cast_nullable_to_non_nullable
as String?,hl: freezed == hl ? _self.hl : hl // ignore: cast_nullable_to_non_nullable
as String?,autocorrect: freezed == autocorrect ? _self.autocorrect : autocorrect // ignore: cast_nullable_to_non_nullable
as bool?,tbs: freezed == tbs ? _self.tbs : tbs // ignore: cast_nullable_to_non_nullable
as String?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$PatentsQuery {

/// {@macro QueryDocTemplates.queryStringDoc}
 String get q;/// {@macro QueryDocTemplates.locationDoc}
 String? get location;/// {@macro QueryDocTemplates.glDoc}
 String? get gl;/// {@macro QueryDocTemplates.hlDoc}
 String? get hl;/// {@macro QueryDocTemplates.numDoc}
 int? get num;/// {@macro QueryDocTemplates.autocorrectDoc}
 bool? get autocorrect;/// {@macro QueryDocTemplates.tbsDoc}
 String? get tbs;/// {@macro QueryDocTemplates.pageDoc}
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatentsQuery&&(identical(other.q, q) || other.q == q)&&(identical(other.location, location) || other.location == location)&&(identical(other.gl, gl) || other.gl == gl)&&(identical(other.hl, hl) || other.hl == hl)&&(identical(other.num, num) || other.num == num)&&(identical(other.autocorrect, autocorrect) || other.autocorrect == autocorrect)&&(identical(other.tbs, tbs) || other.tbs == tbs)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,q,location,gl,hl,num,autocorrect,tbs,page);

@override
String toString() {
  return 'PatentsQuery(q: $q, location: $location, gl: $gl, hl: $hl, num: $num, autocorrect: $autocorrect, tbs: $tbs, page: $page)';
}


}

/// @nodoc
abstract mixin class $PatentsQueryCopyWith<$Res>  {
  factory $PatentsQueryCopyWith(PatentsQuery value, $Res Function(PatentsQuery) _then) = _$PatentsQueryCopyWithImpl;
@useResult
$Res call({
 String q, String? location, String? gl, String? hl, int? num, bool? autocorrect, String? tbs, int? page
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
@pragma('vm:prefer-inline') @override $Res call({Object? q = null,Object? location = freezed,Object? gl = freezed,Object? hl = freezed,Object? num = freezed,Object? autocorrect = freezed,Object? tbs = freezed,Object? page = freezed,}) {
  return _then(_self.copyWith(
q: null == q ? _self.q : q // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,gl: freezed == gl ? _self.gl : gl // ignore: cast_nullable_to_non_nullable
as String?,hl: freezed == hl ? _self.hl : hl // ignore: cast_nullable_to_non_nullable
as String?,num: freezed == num ? _self.num : num // ignore: cast_nullable_to_non_nullable
as int?,autocorrect: freezed == autocorrect ? _self.autocorrect : autocorrect // ignore: cast_nullable_to_non_nullable
as bool?,tbs: freezed == tbs ? _self.tbs : tbs // ignore: cast_nullable_to_non_nullable
as String?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PatentsQuery implements PatentsQuery {
  const _PatentsQuery({required this.q, this.location, this.gl, this.hl, this.num, this.autocorrect, this.tbs, this.page});
  factory _PatentsQuery.fromJson(Map<String, dynamic> json) => _$PatentsQueryFromJson(json);

/// {@macro QueryDocTemplates.queryStringDoc}
@override final  String q;
/// {@macro QueryDocTemplates.locationDoc}
@override final  String? location;
/// {@macro QueryDocTemplates.glDoc}
@override final  String? gl;
/// {@macro QueryDocTemplates.hlDoc}
@override final  String? hl;
/// {@macro QueryDocTemplates.numDoc}
@override final  int? num;
/// {@macro QueryDocTemplates.autocorrectDoc}
@override final  bool? autocorrect;
/// {@macro QueryDocTemplates.tbsDoc}
@override final  String? tbs;
/// {@macro QueryDocTemplates.pageDoc}
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatentsQuery&&(identical(other.q, q) || other.q == q)&&(identical(other.location, location) || other.location == location)&&(identical(other.gl, gl) || other.gl == gl)&&(identical(other.hl, hl) || other.hl == hl)&&(identical(other.num, num) || other.num == num)&&(identical(other.autocorrect, autocorrect) || other.autocorrect == autocorrect)&&(identical(other.tbs, tbs) || other.tbs == tbs)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,q,location,gl,hl,num,autocorrect,tbs,page);

@override
String toString() {
  return 'PatentsQuery(q: $q, location: $location, gl: $gl, hl: $hl, num: $num, autocorrect: $autocorrect, tbs: $tbs, page: $page)';
}


}

/// @nodoc
abstract mixin class _$PatentsQueryCopyWith<$Res> implements $PatentsQueryCopyWith<$Res> {
  factory _$PatentsQueryCopyWith(_PatentsQuery value, $Res Function(_PatentsQuery) _then) = __$PatentsQueryCopyWithImpl;
@override @useResult
$Res call({
 String q, String? location, String? gl, String? hl, int? num, bool? autocorrect, String? tbs, int? page
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
@override @pragma('vm:prefer-inline') $Res call({Object? q = null,Object? location = freezed,Object? gl = freezed,Object? hl = freezed,Object? num = freezed,Object? autocorrect = freezed,Object? tbs = freezed,Object? page = freezed,}) {
  return _then(_PatentsQuery(
q: null == q ? _self.q : q // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,gl: freezed == gl ? _self.gl : gl // ignore: cast_nullable_to_non_nullable
as String?,hl: freezed == hl ? _self.hl : hl // ignore: cast_nullable_to_non_nullable
as String?,num: freezed == num ? _self.num : num // ignore: cast_nullable_to_non_nullable
as int?,autocorrect: freezed == autocorrect ? _self.autocorrect : autocorrect // ignore: cast_nullable_to_non_nullable
as bool?,tbs: freezed == tbs ? _self.tbs : tbs // ignore: cast_nullable_to_non_nullable
as String?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$SearchQuery {

/// {@macro QueryDocTemplates.queryStringDoc}
 String get q;/// {@macro QueryDocTemplates.locationDoc}
 String? get location;/// {@macro QueryDocTemplates.glDoc}
 String? get gl;/// {@macro QueryDocTemplates.hlDoc}
 String? get hl;/// {@macro QueryDocTemplates.numDoc}
 int? get num;/// {@macro QueryDocTemplates.autocorrectDoc}
 bool? get autocorrect;/// {@macro QueryDocTemplates.tbsDoc}
 String? get tbs;/// {@macro QueryDocTemplates.pageDoc}
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchQuery&&(identical(other.q, q) || other.q == q)&&(identical(other.location, location) || other.location == location)&&(identical(other.gl, gl) || other.gl == gl)&&(identical(other.hl, hl) || other.hl == hl)&&(identical(other.num, num) || other.num == num)&&(identical(other.autocorrect, autocorrect) || other.autocorrect == autocorrect)&&(identical(other.tbs, tbs) || other.tbs == tbs)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,q,location,gl,hl,num,autocorrect,tbs,page);

@override
String toString() {
  return 'SearchQuery(q: $q, location: $location, gl: $gl, hl: $hl, num: $num, autocorrect: $autocorrect, tbs: $tbs, page: $page)';
}


}

/// @nodoc
abstract mixin class $SearchQueryCopyWith<$Res>  {
  factory $SearchQueryCopyWith(SearchQuery value, $Res Function(SearchQuery) _then) = _$SearchQueryCopyWithImpl;
@useResult
$Res call({
 String q, String? location, String? gl, String? hl, int? num, bool? autocorrect, String? tbs, int? page
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
@pragma('vm:prefer-inline') @override $Res call({Object? q = null,Object? location = freezed,Object? gl = freezed,Object? hl = freezed,Object? num = freezed,Object? autocorrect = freezed,Object? tbs = freezed,Object? page = freezed,}) {
  return _then(_self.copyWith(
q: null == q ? _self.q : q // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,gl: freezed == gl ? _self.gl : gl // ignore: cast_nullable_to_non_nullable
as String?,hl: freezed == hl ? _self.hl : hl // ignore: cast_nullable_to_non_nullable
as String?,num: freezed == num ? _self.num : num // ignore: cast_nullable_to_non_nullable
as int?,autocorrect: freezed == autocorrect ? _self.autocorrect : autocorrect // ignore: cast_nullable_to_non_nullable
as bool?,tbs: freezed == tbs ? _self.tbs : tbs // ignore: cast_nullable_to_non_nullable
as String?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SearchQuery implements SearchQuery {
  const _SearchQuery({required this.q, this.location, this.gl, this.hl, this.num, this.autocorrect, this.tbs, this.page});
  factory _SearchQuery.fromJson(Map<String, dynamic> json) => _$SearchQueryFromJson(json);

/// {@macro QueryDocTemplates.queryStringDoc}
@override final  String q;
/// {@macro QueryDocTemplates.locationDoc}
@override final  String? location;
/// {@macro QueryDocTemplates.glDoc}
@override final  String? gl;
/// {@macro QueryDocTemplates.hlDoc}
@override final  String? hl;
/// {@macro QueryDocTemplates.numDoc}
@override final  int? num;
/// {@macro QueryDocTemplates.autocorrectDoc}
@override final  bool? autocorrect;
/// {@macro QueryDocTemplates.tbsDoc}
@override final  String? tbs;
/// {@macro QueryDocTemplates.pageDoc}
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchQuery&&(identical(other.q, q) || other.q == q)&&(identical(other.location, location) || other.location == location)&&(identical(other.gl, gl) || other.gl == gl)&&(identical(other.hl, hl) || other.hl == hl)&&(identical(other.num, num) || other.num == num)&&(identical(other.autocorrect, autocorrect) || other.autocorrect == autocorrect)&&(identical(other.tbs, tbs) || other.tbs == tbs)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,q,location,gl,hl,num,autocorrect,tbs,page);

@override
String toString() {
  return 'SearchQuery(q: $q, location: $location, gl: $gl, hl: $hl, num: $num, autocorrect: $autocorrect, tbs: $tbs, page: $page)';
}


}

/// @nodoc
abstract mixin class _$SearchQueryCopyWith<$Res> implements $SearchQueryCopyWith<$Res> {
  factory _$SearchQueryCopyWith(_SearchQuery value, $Res Function(_SearchQuery) _then) = __$SearchQueryCopyWithImpl;
@override @useResult
$Res call({
 String q, String? location, String? gl, String? hl, int? num, bool? autocorrect, String? tbs, int? page
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
@override @pragma('vm:prefer-inline') $Res call({Object? q = null,Object? location = freezed,Object? gl = freezed,Object? hl = freezed,Object? num = freezed,Object? autocorrect = freezed,Object? tbs = freezed,Object? page = freezed,}) {
  return _then(_SearchQuery(
q: null == q ? _self.q : q // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,gl: freezed == gl ? _self.gl : gl // ignore: cast_nullable_to_non_nullable
as String?,hl: freezed == hl ? _self.hl : hl // ignore: cast_nullable_to_non_nullable
as String?,num: freezed == num ? _self.num : num // ignore: cast_nullable_to_non_nullable
as int?,autocorrect: freezed == autocorrect ? _self.autocorrect : autocorrect // ignore: cast_nullable_to_non_nullable
as bool?,tbs: freezed == tbs ? _self.tbs : tbs // ignore: cast_nullable_to_non_nullable
as String?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$WebpageQuery {

/// {@macro QueryDocTemplates.urlDoc}
 String get url;/// Whether to include markdown in the response
///
/// When true, the API will return a markdown version of the webpage content.
 bool? get includeMarkdown;/// Optional query string to search within the webpage
///
/// When provided, the API will return content relevant to this query.
 String? get q;
/// Create a copy of WebpageQuery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WebpageQueryCopyWith<WebpageQuery> get copyWith => _$WebpageQueryCopyWithImpl<WebpageQuery>(this as WebpageQuery, _$identity);

  /// Serializes this WebpageQuery to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WebpageQuery&&(identical(other.url, url) || other.url == url)&&(identical(other.includeMarkdown, includeMarkdown) || other.includeMarkdown == includeMarkdown)&&(identical(other.q, q) || other.q == q));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,includeMarkdown,q);

@override
String toString() {
  return 'WebpageQuery(url: $url, includeMarkdown: $includeMarkdown, q: $q)';
}


}

/// @nodoc
abstract mixin class $WebpageQueryCopyWith<$Res>  {
  factory $WebpageQueryCopyWith(WebpageQuery value, $Res Function(WebpageQuery) _then) = _$WebpageQueryCopyWithImpl;
@useResult
$Res call({
 String url, bool? includeMarkdown, String? q
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
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,Object? includeMarkdown = freezed,Object? q = freezed,}) {
  return _then(_self.copyWith(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,includeMarkdown: freezed == includeMarkdown ? _self.includeMarkdown : includeMarkdown // ignore: cast_nullable_to_non_nullable
as bool?,q: freezed == q ? _self.q : q // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _WebpageQuery implements WebpageQuery {
  const _WebpageQuery({required this.url, this.includeMarkdown, this.q});
  factory _WebpageQuery.fromJson(Map<String, dynamic> json) => _$WebpageQueryFromJson(json);

/// {@macro QueryDocTemplates.urlDoc}
@override final  String url;
/// Whether to include markdown in the response
///
/// When true, the API will return a markdown version of the webpage content.
@override final  bool? includeMarkdown;
/// Optional query string to search within the webpage
///
/// When provided, the API will return content relevant to this query.
@override final  String? q;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WebpageQuery&&(identical(other.url, url) || other.url == url)&&(identical(other.includeMarkdown, includeMarkdown) || other.includeMarkdown == includeMarkdown)&&(identical(other.q, q) || other.q == q));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,includeMarkdown,q);

@override
String toString() {
  return 'WebpageQuery(url: $url, includeMarkdown: $includeMarkdown, q: $q)';
}


}

/// @nodoc
abstract mixin class _$WebpageQueryCopyWith<$Res> implements $WebpageQueryCopyWith<$Res> {
  factory _$WebpageQueryCopyWith(_WebpageQuery value, $Res Function(_WebpageQuery) _then) = __$WebpageQueryCopyWithImpl;
@override @useResult
$Res call({
 String url, bool? includeMarkdown, String? q
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
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,Object? includeMarkdown = freezed,Object? q = freezed,}) {
  return _then(_WebpageQuery(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,includeMarkdown: freezed == includeMarkdown ? _self.includeMarkdown : includeMarkdown // ignore: cast_nullable_to_non_nullable
as bool?,q: freezed == q ? _self.q : q // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
