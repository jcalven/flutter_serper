// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AutocompleteQuery _$AutocompleteQueryFromJson(Map<String, dynamic> json) {
  return _AutocompleteQuery.fromJson(json);
}

/// @nodoc
mixin _$AutocompleteQuery {
  String get q => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get gl => throw _privateConstructorUsedError;
  String? get hl => throw _privateConstructorUsedError;

  /// Serializes this AutocompleteQuery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AutocompleteQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AutocompleteQueryCopyWith<AutocompleteQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutocompleteQueryCopyWith<$Res> {
  factory $AutocompleteQueryCopyWith(
    AutocompleteQuery value,
    $Res Function(AutocompleteQuery) then,
  ) = _$AutocompleteQueryCopyWithImpl<$Res, AutocompleteQuery>;
  @useResult
  $Res call({String q, String? location, String? gl, String? hl});
}

/// @nodoc
class _$AutocompleteQueryCopyWithImpl<$Res, $Val extends AutocompleteQuery>
    implements $AutocompleteQueryCopyWith<$Res> {
  _$AutocompleteQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AutocompleteQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? q = null,
    Object? location = freezed,
    Object? gl = freezed,
    Object? hl = freezed,
  }) {
    return _then(
      _value.copyWith(
            q:
                null == q
                    ? _value.q
                    : q // ignore: cast_nullable_to_non_nullable
                        as String,
            location:
                freezed == location
                    ? _value.location
                    : location // ignore: cast_nullable_to_non_nullable
                        as String?,
            gl:
                freezed == gl
                    ? _value.gl
                    : gl // ignore: cast_nullable_to_non_nullable
                        as String?,
            hl:
                freezed == hl
                    ? _value.hl
                    : hl // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AutocompleteQueryImplCopyWith<$Res>
    implements $AutocompleteQueryCopyWith<$Res> {
  factory _$$AutocompleteQueryImplCopyWith(
    _$AutocompleteQueryImpl value,
    $Res Function(_$AutocompleteQueryImpl) then,
  ) = __$$AutocompleteQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String q, String? location, String? gl, String? hl});
}

/// @nodoc
class __$$AutocompleteQueryImplCopyWithImpl<$Res>
    extends _$AutocompleteQueryCopyWithImpl<$Res, _$AutocompleteQueryImpl>
    implements _$$AutocompleteQueryImplCopyWith<$Res> {
  __$$AutocompleteQueryImplCopyWithImpl(
    _$AutocompleteQueryImpl _value,
    $Res Function(_$AutocompleteQueryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AutocompleteQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? q = null,
    Object? location = freezed,
    Object? gl = freezed,
    Object? hl = freezed,
  }) {
    return _then(
      _$AutocompleteQueryImpl(
        q:
            null == q
                ? _value.q
                : q // ignore: cast_nullable_to_non_nullable
                    as String,
        location:
            freezed == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                    as String?,
        gl:
            freezed == gl
                ? _value.gl
                : gl // ignore: cast_nullable_to_non_nullable
                    as String?,
        hl:
            freezed == hl
                ? _value.hl
                : hl // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AutocompleteQueryImpl implements _AutocompleteQuery {
  const _$AutocompleteQueryImpl({
    required this.q,
    this.location,
    this.gl,
    this.hl,
  });

  factory _$AutocompleteQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$AutocompleteQueryImplFromJson(json);

  @override
  final String q;
  @override
  final String? location;
  @override
  final String? gl;
  @override
  final String? hl;

  @override
  String toString() {
    return 'AutocompleteQuery(q: $q, location: $location, gl: $gl, hl: $hl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutocompleteQueryImpl &&
            (identical(other.q, q) || other.q == q) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.gl, gl) || other.gl == gl) &&
            (identical(other.hl, hl) || other.hl == hl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, q, location, gl, hl);

  /// Create a copy of AutocompleteQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AutocompleteQueryImplCopyWith<_$AutocompleteQueryImpl> get copyWith =>
      __$$AutocompleteQueryImplCopyWithImpl<_$AutocompleteQueryImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AutocompleteQueryImplToJson(this);
  }
}

abstract class _AutocompleteQuery implements AutocompleteQuery {
  const factory _AutocompleteQuery({
    required final String q,
    final String? location,
    final String? gl,
    final String? hl,
  }) = _$AutocompleteQueryImpl;

  factory _AutocompleteQuery.fromJson(Map<String, dynamic> json) =
      _$AutocompleteQueryImpl.fromJson;

  @override
  String get q;
  @override
  String? get location;
  @override
  String? get gl;
  @override
  String? get hl;

  /// Create a copy of AutocompleteQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AutocompleteQueryImplCopyWith<_$AutocompleteQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImagesQuery _$ImagesQueryFromJson(Map<String, dynamic> json) {
  return _ImagesQuery.fromJson(json);
}

/// @nodoc
mixin _$ImagesQuery {
  String get q => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get gl => throw _privateConstructorUsedError;
  String? get hl => throw _privateConstructorUsedError;
  int? get num => throw _privateConstructorUsedError;
  bool? get autocorrect => throw _privateConstructorUsedError;
  String? get tbs => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;

  /// Serializes this ImagesQuery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImagesQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImagesQueryCopyWith<ImagesQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesQueryCopyWith<$Res> {
  factory $ImagesQueryCopyWith(
    ImagesQuery value,
    $Res Function(ImagesQuery) then,
  ) = _$ImagesQueryCopyWithImpl<$Res, ImagesQuery>;
  @useResult
  $Res call({
    String q,
    String? location,
    String? gl,
    String? hl,
    int? num,
    bool? autocorrect,
    String? tbs,
    int? page,
  });
}

/// @nodoc
class _$ImagesQueryCopyWithImpl<$Res, $Val extends ImagesQuery>
    implements $ImagesQueryCopyWith<$Res> {
  _$ImagesQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImagesQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? q = null,
    Object? location = freezed,
    Object? gl = freezed,
    Object? hl = freezed,
    Object? num = freezed,
    Object? autocorrect = freezed,
    Object? tbs = freezed,
    Object? page = freezed,
  }) {
    return _then(
      _value.copyWith(
            q:
                null == q
                    ? _value.q
                    : q // ignore: cast_nullable_to_non_nullable
                        as String,
            location:
                freezed == location
                    ? _value.location
                    : location // ignore: cast_nullable_to_non_nullable
                        as String?,
            gl:
                freezed == gl
                    ? _value.gl
                    : gl // ignore: cast_nullable_to_non_nullable
                        as String?,
            hl:
                freezed == hl
                    ? _value.hl
                    : hl // ignore: cast_nullable_to_non_nullable
                        as String?,
            num:
                freezed == num
                    ? _value.num
                    : num // ignore: cast_nullable_to_non_nullable
                        as int?,
            autocorrect:
                freezed == autocorrect
                    ? _value.autocorrect
                    : autocorrect // ignore: cast_nullable_to_non_nullable
                        as bool?,
            tbs:
                freezed == tbs
                    ? _value.tbs
                    : tbs // ignore: cast_nullable_to_non_nullable
                        as String?,
            page:
                freezed == page
                    ? _value.page
                    : page // ignore: cast_nullable_to_non_nullable
                        as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ImagesQueryImplCopyWith<$Res>
    implements $ImagesQueryCopyWith<$Res> {
  factory _$$ImagesQueryImplCopyWith(
    _$ImagesQueryImpl value,
    $Res Function(_$ImagesQueryImpl) then,
  ) = __$$ImagesQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String q,
    String? location,
    String? gl,
    String? hl,
    int? num,
    bool? autocorrect,
    String? tbs,
    int? page,
  });
}

/// @nodoc
class __$$ImagesQueryImplCopyWithImpl<$Res>
    extends _$ImagesQueryCopyWithImpl<$Res, _$ImagesQueryImpl>
    implements _$$ImagesQueryImplCopyWith<$Res> {
  __$$ImagesQueryImplCopyWithImpl(
    _$ImagesQueryImpl _value,
    $Res Function(_$ImagesQueryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ImagesQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? q = null,
    Object? location = freezed,
    Object? gl = freezed,
    Object? hl = freezed,
    Object? num = freezed,
    Object? autocorrect = freezed,
    Object? tbs = freezed,
    Object? page = freezed,
  }) {
    return _then(
      _$ImagesQueryImpl(
        q:
            null == q
                ? _value.q
                : q // ignore: cast_nullable_to_non_nullable
                    as String,
        location:
            freezed == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                    as String?,
        gl:
            freezed == gl
                ? _value.gl
                : gl // ignore: cast_nullable_to_non_nullable
                    as String?,
        hl:
            freezed == hl
                ? _value.hl
                : hl // ignore: cast_nullable_to_non_nullable
                    as String?,
        num:
            freezed == num
                ? _value.num
                : num // ignore: cast_nullable_to_non_nullable
                    as int?,
        autocorrect:
            freezed == autocorrect
                ? _value.autocorrect
                : autocorrect // ignore: cast_nullable_to_non_nullable
                    as bool?,
        tbs:
            freezed == tbs
                ? _value.tbs
                : tbs // ignore: cast_nullable_to_non_nullable
                    as String?,
        page:
            freezed == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ImagesQueryImpl implements _ImagesQuery {
  const _$ImagesQueryImpl({
    required this.q,
    this.location,
    this.gl,
    this.hl,
    this.num,
    this.autocorrect,
    this.tbs,
    this.page,
  });

  factory _$ImagesQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImagesQueryImplFromJson(json);

  @override
  final String q;
  @override
  final String? location;
  @override
  final String? gl;
  @override
  final String? hl;
  @override
  final int? num;
  @override
  final bool? autocorrect;
  @override
  final String? tbs;
  @override
  final int? page;

  @override
  String toString() {
    return 'ImagesQuery(q: $q, location: $location, gl: $gl, hl: $hl, num: $num, autocorrect: $autocorrect, tbs: $tbs, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagesQueryImpl &&
            (identical(other.q, q) || other.q == q) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.gl, gl) || other.gl == gl) &&
            (identical(other.hl, hl) || other.hl == hl) &&
            (identical(other.num, num) || other.num == num) &&
            (identical(other.autocorrect, autocorrect) ||
                other.autocorrect == autocorrect) &&
            (identical(other.tbs, tbs) || other.tbs == tbs) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    q,
    location,
    gl,
    hl,
    num,
    autocorrect,
    tbs,
    page,
  );

  /// Create a copy of ImagesQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImagesQueryImplCopyWith<_$ImagesQueryImpl> get copyWith =>
      __$$ImagesQueryImplCopyWithImpl<_$ImagesQueryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImagesQueryImplToJson(this);
  }
}

abstract class _ImagesQuery implements ImagesQuery {
  const factory _ImagesQuery({
    required final String q,
    final String? location,
    final String? gl,
    final String? hl,
    final int? num,
    final bool? autocorrect,
    final String? tbs,
    final int? page,
  }) = _$ImagesQueryImpl;

  factory _ImagesQuery.fromJson(Map<String, dynamic> json) =
      _$ImagesQueryImpl.fromJson;

  @override
  String get q;
  @override
  String? get location;
  @override
  String? get gl;
  @override
  String? get hl;
  @override
  int? get num;
  @override
  bool? get autocorrect;
  @override
  String? get tbs;
  @override
  int? get page;

  /// Create a copy of ImagesQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImagesQueryImplCopyWith<_$ImagesQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlacesQuery _$PlacesQueryFromJson(Map<String, dynamic> json) {
  return _PlacesQuery.fromJson(json);
}

/// @nodoc
mixin _$PlacesQuery {
  String get q => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get gl => throw _privateConstructorUsedError;
  String? get hl => throw _privateConstructorUsedError;
  bool? get autocorrect => throw _privateConstructorUsedError;
  String? get tbs => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;

  /// Serializes this PlacesQuery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlacesQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlacesQueryCopyWith<PlacesQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacesQueryCopyWith<$Res> {
  factory $PlacesQueryCopyWith(
    PlacesQuery value,
    $Res Function(PlacesQuery) then,
  ) = _$PlacesQueryCopyWithImpl<$Res, PlacesQuery>;
  @useResult
  $Res call({
    String q,
    String? location,
    String? gl,
    String? hl,
    bool? autocorrect,
    String? tbs,
    int? page,
  });
}

/// @nodoc
class _$PlacesQueryCopyWithImpl<$Res, $Val extends PlacesQuery>
    implements $PlacesQueryCopyWith<$Res> {
  _$PlacesQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlacesQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? q = null,
    Object? location = freezed,
    Object? gl = freezed,
    Object? hl = freezed,
    Object? autocorrect = freezed,
    Object? tbs = freezed,
    Object? page = freezed,
  }) {
    return _then(
      _value.copyWith(
            q:
                null == q
                    ? _value.q
                    : q // ignore: cast_nullable_to_non_nullable
                        as String,
            location:
                freezed == location
                    ? _value.location
                    : location // ignore: cast_nullable_to_non_nullable
                        as String?,
            gl:
                freezed == gl
                    ? _value.gl
                    : gl // ignore: cast_nullable_to_non_nullable
                        as String?,
            hl:
                freezed == hl
                    ? _value.hl
                    : hl // ignore: cast_nullable_to_non_nullable
                        as String?,
            autocorrect:
                freezed == autocorrect
                    ? _value.autocorrect
                    : autocorrect // ignore: cast_nullable_to_non_nullable
                        as bool?,
            tbs:
                freezed == tbs
                    ? _value.tbs
                    : tbs // ignore: cast_nullable_to_non_nullable
                        as String?,
            page:
                freezed == page
                    ? _value.page
                    : page // ignore: cast_nullable_to_non_nullable
                        as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PlacesQueryImplCopyWith<$Res>
    implements $PlacesQueryCopyWith<$Res> {
  factory _$$PlacesQueryImplCopyWith(
    _$PlacesQueryImpl value,
    $Res Function(_$PlacesQueryImpl) then,
  ) = __$$PlacesQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String q,
    String? location,
    String? gl,
    String? hl,
    bool? autocorrect,
    String? tbs,
    int? page,
  });
}

/// @nodoc
class __$$PlacesQueryImplCopyWithImpl<$Res>
    extends _$PlacesQueryCopyWithImpl<$Res, _$PlacesQueryImpl>
    implements _$$PlacesQueryImplCopyWith<$Res> {
  __$$PlacesQueryImplCopyWithImpl(
    _$PlacesQueryImpl _value,
    $Res Function(_$PlacesQueryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlacesQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? q = null,
    Object? location = freezed,
    Object? gl = freezed,
    Object? hl = freezed,
    Object? autocorrect = freezed,
    Object? tbs = freezed,
    Object? page = freezed,
  }) {
    return _then(
      _$PlacesQueryImpl(
        q:
            null == q
                ? _value.q
                : q // ignore: cast_nullable_to_non_nullable
                    as String,
        location:
            freezed == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                    as String?,
        gl:
            freezed == gl
                ? _value.gl
                : gl // ignore: cast_nullable_to_non_nullable
                    as String?,
        hl:
            freezed == hl
                ? _value.hl
                : hl // ignore: cast_nullable_to_non_nullable
                    as String?,
        autocorrect:
            freezed == autocorrect
                ? _value.autocorrect
                : autocorrect // ignore: cast_nullable_to_non_nullable
                    as bool?,
        tbs:
            freezed == tbs
                ? _value.tbs
                : tbs // ignore: cast_nullable_to_non_nullable
                    as String?,
        page:
            freezed == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PlacesQueryImpl implements _PlacesQuery {
  const _$PlacesQueryImpl({
    required this.q,
    this.location,
    this.gl,
    this.hl,
    this.autocorrect,
    this.tbs,
    this.page,
  });

  factory _$PlacesQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlacesQueryImplFromJson(json);

  @override
  final String q;
  @override
  final String? location;
  @override
  final String? gl;
  @override
  final String? hl;
  @override
  final bool? autocorrect;
  @override
  final String? tbs;
  @override
  final int? page;

  @override
  String toString() {
    return 'PlacesQuery(q: $q, location: $location, gl: $gl, hl: $hl, autocorrect: $autocorrect, tbs: $tbs, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlacesQueryImpl &&
            (identical(other.q, q) || other.q == q) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.gl, gl) || other.gl == gl) &&
            (identical(other.hl, hl) || other.hl == hl) &&
            (identical(other.autocorrect, autocorrect) ||
                other.autocorrect == autocorrect) &&
            (identical(other.tbs, tbs) || other.tbs == tbs) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, q, location, gl, hl, autocorrect, tbs, page);

  /// Create a copy of PlacesQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlacesQueryImplCopyWith<_$PlacesQueryImpl> get copyWith =>
      __$$PlacesQueryImplCopyWithImpl<_$PlacesQueryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlacesQueryImplToJson(this);
  }
}

abstract class _PlacesQuery implements PlacesQuery {
  const factory _PlacesQuery({
    required final String q,
    final String? location,
    final String? gl,
    final String? hl,
    final bool? autocorrect,
    final String? tbs,
    final int? page,
  }) = _$PlacesQueryImpl;

  factory _PlacesQuery.fromJson(Map<String, dynamic> json) =
      _$PlacesQueryImpl.fromJson;

  @override
  String get q;
  @override
  String? get location;
  @override
  String? get gl;
  @override
  String? get hl;
  @override
  bool? get autocorrect;
  @override
  String? get tbs;
  @override
  int? get page;

  /// Create a copy of PlacesQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlacesQueryImplCopyWith<_$PlacesQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VideosQuery _$VideosQueryFromJson(Map<String, dynamic> json) {
  return _VideosQuery.fromJson(json);
}

/// @nodoc
mixin _$VideosQuery {
  String get q => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get gl => throw _privateConstructorUsedError;
  String? get hl => throw _privateConstructorUsedError;
  int? get num => throw _privateConstructorUsedError;
  bool? get autocorrect => throw _privateConstructorUsedError;
  String? get tbs => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;

  /// Serializes this VideosQuery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VideosQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideosQueryCopyWith<VideosQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideosQueryCopyWith<$Res> {
  factory $VideosQueryCopyWith(
    VideosQuery value,
    $Res Function(VideosQuery) then,
  ) = _$VideosQueryCopyWithImpl<$Res, VideosQuery>;
  @useResult
  $Res call({
    String q,
    String? location,
    String? gl,
    String? hl,
    int? num,
    bool? autocorrect,
    String? tbs,
    int? page,
  });
}

/// @nodoc
class _$VideosQueryCopyWithImpl<$Res, $Val extends VideosQuery>
    implements $VideosQueryCopyWith<$Res> {
  _$VideosQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideosQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? q = null,
    Object? location = freezed,
    Object? gl = freezed,
    Object? hl = freezed,
    Object? num = freezed,
    Object? autocorrect = freezed,
    Object? tbs = freezed,
    Object? page = freezed,
  }) {
    return _then(
      _value.copyWith(
            q:
                null == q
                    ? _value.q
                    : q // ignore: cast_nullable_to_non_nullable
                        as String,
            location:
                freezed == location
                    ? _value.location
                    : location // ignore: cast_nullable_to_non_nullable
                        as String?,
            gl:
                freezed == gl
                    ? _value.gl
                    : gl // ignore: cast_nullable_to_non_nullable
                        as String?,
            hl:
                freezed == hl
                    ? _value.hl
                    : hl // ignore: cast_nullable_to_non_nullable
                        as String?,
            num:
                freezed == num
                    ? _value.num
                    : num // ignore: cast_nullable_to_non_nullable
                        as int?,
            autocorrect:
                freezed == autocorrect
                    ? _value.autocorrect
                    : autocorrect // ignore: cast_nullable_to_non_nullable
                        as bool?,
            tbs:
                freezed == tbs
                    ? _value.tbs
                    : tbs // ignore: cast_nullable_to_non_nullable
                        as String?,
            page:
                freezed == page
                    ? _value.page
                    : page // ignore: cast_nullable_to_non_nullable
                        as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$VideosQueryImplCopyWith<$Res>
    implements $VideosQueryCopyWith<$Res> {
  factory _$$VideosQueryImplCopyWith(
    _$VideosQueryImpl value,
    $Res Function(_$VideosQueryImpl) then,
  ) = __$$VideosQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String q,
    String? location,
    String? gl,
    String? hl,
    int? num,
    bool? autocorrect,
    String? tbs,
    int? page,
  });
}

/// @nodoc
class __$$VideosQueryImplCopyWithImpl<$Res>
    extends _$VideosQueryCopyWithImpl<$Res, _$VideosQueryImpl>
    implements _$$VideosQueryImplCopyWith<$Res> {
  __$$VideosQueryImplCopyWithImpl(
    _$VideosQueryImpl _value,
    $Res Function(_$VideosQueryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VideosQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? q = null,
    Object? location = freezed,
    Object? gl = freezed,
    Object? hl = freezed,
    Object? num = freezed,
    Object? autocorrect = freezed,
    Object? tbs = freezed,
    Object? page = freezed,
  }) {
    return _then(
      _$VideosQueryImpl(
        q:
            null == q
                ? _value.q
                : q // ignore: cast_nullable_to_non_nullable
                    as String,
        location:
            freezed == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                    as String?,
        gl:
            freezed == gl
                ? _value.gl
                : gl // ignore: cast_nullable_to_non_nullable
                    as String?,
        hl:
            freezed == hl
                ? _value.hl
                : hl // ignore: cast_nullable_to_non_nullable
                    as String?,
        num:
            freezed == num
                ? _value.num
                : num // ignore: cast_nullable_to_non_nullable
                    as int?,
        autocorrect:
            freezed == autocorrect
                ? _value.autocorrect
                : autocorrect // ignore: cast_nullable_to_non_nullable
                    as bool?,
        tbs:
            freezed == tbs
                ? _value.tbs
                : tbs // ignore: cast_nullable_to_non_nullable
                    as String?,
        page:
            freezed == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$VideosQueryImpl implements _VideosQuery {
  const _$VideosQueryImpl({
    required this.q,
    this.location,
    this.gl,
    this.hl,
    this.num,
    this.autocorrect,
    this.tbs,
    this.page,
  });

  factory _$VideosQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideosQueryImplFromJson(json);

  @override
  final String q;
  @override
  final String? location;
  @override
  final String? gl;
  @override
  final String? hl;
  @override
  final int? num;
  @override
  final bool? autocorrect;
  @override
  final String? tbs;
  @override
  final int? page;

  @override
  String toString() {
    return 'VideosQuery(q: $q, location: $location, gl: $gl, hl: $hl, num: $num, autocorrect: $autocorrect, tbs: $tbs, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideosQueryImpl &&
            (identical(other.q, q) || other.q == q) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.gl, gl) || other.gl == gl) &&
            (identical(other.hl, hl) || other.hl == hl) &&
            (identical(other.num, num) || other.num == num) &&
            (identical(other.autocorrect, autocorrect) ||
                other.autocorrect == autocorrect) &&
            (identical(other.tbs, tbs) || other.tbs == tbs) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    q,
    location,
    gl,
    hl,
    num,
    autocorrect,
    tbs,
    page,
  );

  /// Create a copy of VideosQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideosQueryImplCopyWith<_$VideosQueryImpl> get copyWith =>
      __$$VideosQueryImplCopyWithImpl<_$VideosQueryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideosQueryImplToJson(this);
  }
}

abstract class _VideosQuery implements VideosQuery {
  const factory _VideosQuery({
    required final String q,
    final String? location,
    final String? gl,
    final String? hl,
    final int? num,
    final bool? autocorrect,
    final String? tbs,
    final int? page,
  }) = _$VideosQueryImpl;

  factory _VideosQuery.fromJson(Map<String, dynamic> json) =
      _$VideosQueryImpl.fromJson;

  @override
  String get q;
  @override
  String? get location;
  @override
  String? get gl;
  @override
  String? get hl;
  @override
  int? get num;
  @override
  bool? get autocorrect;
  @override
  String? get tbs;
  @override
  int? get page;

  /// Create a copy of VideosQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideosQueryImplCopyWith<_$VideosQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MapsQuery _$MapsQueryFromJson(Map<String, dynamic> json) {
  return _MapsQuery.fromJson(json);
}

/// @nodoc
mixin _$MapsQuery {
  String get q => throw _privateConstructorUsedError;
  String? get hl => throw _privateConstructorUsedError;
  String? get ll => throw _privateConstructorUsedError;
  String? get placeId => throw _privateConstructorUsedError;
  String? get cid => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;

  /// Serializes this MapsQuery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MapsQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MapsQueryCopyWith<MapsQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapsQueryCopyWith<$Res> {
  factory $MapsQueryCopyWith(MapsQuery value, $Res Function(MapsQuery) then) =
      _$MapsQueryCopyWithImpl<$Res, MapsQuery>;
  @useResult
  $Res call({
    String q,
    String? hl,
    String? ll,
    String? placeId,
    String? cid,
    int? page,
  });
}

/// @nodoc
class _$MapsQueryCopyWithImpl<$Res, $Val extends MapsQuery>
    implements $MapsQueryCopyWith<$Res> {
  _$MapsQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MapsQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? q = null,
    Object? hl = freezed,
    Object? ll = freezed,
    Object? placeId = freezed,
    Object? cid = freezed,
    Object? page = freezed,
  }) {
    return _then(
      _value.copyWith(
            q:
                null == q
                    ? _value.q
                    : q // ignore: cast_nullable_to_non_nullable
                        as String,
            hl:
                freezed == hl
                    ? _value.hl
                    : hl // ignore: cast_nullable_to_non_nullable
                        as String?,
            ll:
                freezed == ll
                    ? _value.ll
                    : ll // ignore: cast_nullable_to_non_nullable
                        as String?,
            placeId:
                freezed == placeId
                    ? _value.placeId
                    : placeId // ignore: cast_nullable_to_non_nullable
                        as String?,
            cid:
                freezed == cid
                    ? _value.cid
                    : cid // ignore: cast_nullable_to_non_nullable
                        as String?,
            page:
                freezed == page
                    ? _value.page
                    : page // ignore: cast_nullable_to_non_nullable
                        as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MapsQueryImplCopyWith<$Res>
    implements $MapsQueryCopyWith<$Res> {
  factory _$$MapsQueryImplCopyWith(
    _$MapsQueryImpl value,
    $Res Function(_$MapsQueryImpl) then,
  ) = __$$MapsQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String q,
    String? hl,
    String? ll,
    String? placeId,
    String? cid,
    int? page,
  });
}

/// @nodoc
class __$$MapsQueryImplCopyWithImpl<$Res>
    extends _$MapsQueryCopyWithImpl<$Res, _$MapsQueryImpl>
    implements _$$MapsQueryImplCopyWith<$Res> {
  __$$MapsQueryImplCopyWithImpl(
    _$MapsQueryImpl _value,
    $Res Function(_$MapsQueryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MapsQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? q = null,
    Object? hl = freezed,
    Object? ll = freezed,
    Object? placeId = freezed,
    Object? cid = freezed,
    Object? page = freezed,
  }) {
    return _then(
      _$MapsQueryImpl(
        q:
            null == q
                ? _value.q
                : q // ignore: cast_nullable_to_non_nullable
                    as String,
        hl:
            freezed == hl
                ? _value.hl
                : hl // ignore: cast_nullable_to_non_nullable
                    as String?,
        ll:
            freezed == ll
                ? _value.ll
                : ll // ignore: cast_nullable_to_non_nullable
                    as String?,
        placeId:
            freezed == placeId
                ? _value.placeId
                : placeId // ignore: cast_nullable_to_non_nullable
                    as String?,
        cid:
            freezed == cid
                ? _value.cid
                : cid // ignore: cast_nullable_to_non_nullable
                    as String?,
        page:
            freezed == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MapsQueryImpl implements _MapsQuery {
  const _$MapsQueryImpl({
    required this.q,
    this.hl,
    this.ll,
    this.placeId,
    this.cid,
    this.page,
  });

  factory _$MapsQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$MapsQueryImplFromJson(json);

  @override
  final String q;
  @override
  final String? hl;
  @override
  final String? ll;
  @override
  final String? placeId;
  @override
  final String? cid;
  @override
  final int? page;

  @override
  String toString() {
    return 'MapsQuery(q: $q, hl: $hl, ll: $ll, placeId: $placeId, cid: $cid, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapsQueryImpl &&
            (identical(other.q, q) || other.q == q) &&
            (identical(other.hl, hl) || other.hl == hl) &&
            (identical(other.ll, ll) || other.ll == ll) &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.cid, cid) || other.cid == cid) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, q, hl, ll, placeId, cid, page);

  /// Create a copy of MapsQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MapsQueryImplCopyWith<_$MapsQueryImpl> get copyWith =>
      __$$MapsQueryImplCopyWithImpl<_$MapsQueryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MapsQueryImplToJson(this);
  }
}

abstract class _MapsQuery implements MapsQuery {
  const factory _MapsQuery({
    required final String q,
    final String? hl,
    final String? ll,
    final String? placeId,
    final String? cid,
    final int? page,
  }) = _$MapsQueryImpl;

  factory _MapsQuery.fromJson(Map<String, dynamic> json) =
      _$MapsQueryImpl.fromJson;

  @override
  String get q;
  @override
  String? get hl;
  @override
  String? get ll;
  @override
  String? get placeId;
  @override
  String? get cid;
  @override
  int? get page;

  /// Create a copy of MapsQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MapsQueryImplCopyWith<_$MapsQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReviewsQuery _$ReviewsQueryFromJson(Map<String, dynamic> json) {
  return _ReviewsQuery.fromJson(json);
}

/// @nodoc
mixin _$ReviewsQuery {
  String get cid => throw _privateConstructorUsedError;
  String get fid => throw _privateConstructorUsedError;
  String get placeId => throw _privateConstructorUsedError;
  String? get gl => throw _privateConstructorUsedError;
  String? get hl => throw _privateConstructorUsedError;
  String? get sortBy => throw _privateConstructorUsedError;
  String? get topicId => throw _privateConstructorUsedError;
  String? get nextPageToken => throw _privateConstructorUsedError;
  String? get q => throw _privateConstructorUsedError;

  /// Serializes this ReviewsQuery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReviewsQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewsQueryCopyWith<ReviewsQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewsQueryCopyWith<$Res> {
  factory $ReviewsQueryCopyWith(
    ReviewsQuery value,
    $Res Function(ReviewsQuery) then,
  ) = _$ReviewsQueryCopyWithImpl<$Res, ReviewsQuery>;
  @useResult
  $Res call({
    String cid,
    String fid,
    String placeId,
    String? gl,
    String? hl,
    String? sortBy,
    String? topicId,
    String? nextPageToken,
    String? q,
  });
}

/// @nodoc
class _$ReviewsQueryCopyWithImpl<$Res, $Val extends ReviewsQuery>
    implements $ReviewsQueryCopyWith<$Res> {
  _$ReviewsQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewsQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cid = null,
    Object? fid = null,
    Object? placeId = null,
    Object? gl = freezed,
    Object? hl = freezed,
    Object? sortBy = freezed,
    Object? topicId = freezed,
    Object? nextPageToken = freezed,
    Object? q = freezed,
  }) {
    return _then(
      _value.copyWith(
            cid:
                null == cid
                    ? _value.cid
                    : cid // ignore: cast_nullable_to_non_nullable
                        as String,
            fid:
                null == fid
                    ? _value.fid
                    : fid // ignore: cast_nullable_to_non_nullable
                        as String,
            placeId:
                null == placeId
                    ? _value.placeId
                    : placeId // ignore: cast_nullable_to_non_nullable
                        as String,
            gl:
                freezed == gl
                    ? _value.gl
                    : gl // ignore: cast_nullable_to_non_nullable
                        as String?,
            hl:
                freezed == hl
                    ? _value.hl
                    : hl // ignore: cast_nullable_to_non_nullable
                        as String?,
            sortBy:
                freezed == sortBy
                    ? _value.sortBy
                    : sortBy // ignore: cast_nullable_to_non_nullable
                        as String?,
            topicId:
                freezed == topicId
                    ? _value.topicId
                    : topicId // ignore: cast_nullable_to_non_nullable
                        as String?,
            nextPageToken:
                freezed == nextPageToken
                    ? _value.nextPageToken
                    : nextPageToken // ignore: cast_nullable_to_non_nullable
                        as String?,
            q:
                freezed == q
                    ? _value.q
                    : q // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReviewsQueryImplCopyWith<$Res>
    implements $ReviewsQueryCopyWith<$Res> {
  factory _$$ReviewsQueryImplCopyWith(
    _$ReviewsQueryImpl value,
    $Res Function(_$ReviewsQueryImpl) then,
  ) = __$$ReviewsQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String cid,
    String fid,
    String placeId,
    String? gl,
    String? hl,
    String? sortBy,
    String? topicId,
    String? nextPageToken,
    String? q,
  });
}

/// @nodoc
class __$$ReviewsQueryImplCopyWithImpl<$Res>
    extends _$ReviewsQueryCopyWithImpl<$Res, _$ReviewsQueryImpl>
    implements _$$ReviewsQueryImplCopyWith<$Res> {
  __$$ReviewsQueryImplCopyWithImpl(
    _$ReviewsQueryImpl _value,
    $Res Function(_$ReviewsQueryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewsQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cid = null,
    Object? fid = null,
    Object? placeId = null,
    Object? gl = freezed,
    Object? hl = freezed,
    Object? sortBy = freezed,
    Object? topicId = freezed,
    Object? nextPageToken = freezed,
    Object? q = freezed,
  }) {
    return _then(
      _$ReviewsQueryImpl(
        cid:
            null == cid
                ? _value.cid
                : cid // ignore: cast_nullable_to_non_nullable
                    as String,
        fid:
            null == fid
                ? _value.fid
                : fid // ignore: cast_nullable_to_non_nullable
                    as String,
        placeId:
            null == placeId
                ? _value.placeId
                : placeId // ignore: cast_nullable_to_non_nullable
                    as String,
        gl:
            freezed == gl
                ? _value.gl
                : gl // ignore: cast_nullable_to_non_nullable
                    as String?,
        hl:
            freezed == hl
                ? _value.hl
                : hl // ignore: cast_nullable_to_non_nullable
                    as String?,
        sortBy:
            freezed == sortBy
                ? _value.sortBy
                : sortBy // ignore: cast_nullable_to_non_nullable
                    as String?,
        topicId:
            freezed == topicId
                ? _value.topicId
                : topicId // ignore: cast_nullable_to_non_nullable
                    as String?,
        nextPageToken:
            freezed == nextPageToken
                ? _value.nextPageToken
                : nextPageToken // ignore: cast_nullable_to_non_nullable
                    as String?,
        q:
            freezed == q
                ? _value.q
                : q // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewsQueryImpl implements _ReviewsQuery {
  const _$ReviewsQueryImpl({
    required this.cid,
    required this.fid,
    required this.placeId,
    this.gl,
    this.hl,
    this.sortBy,
    this.topicId,
    this.nextPageToken,
    this.q,
  });

  factory _$ReviewsQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewsQueryImplFromJson(json);

  @override
  final String cid;
  @override
  final String fid;
  @override
  final String placeId;
  @override
  final String? gl;
  @override
  final String? hl;
  @override
  final String? sortBy;
  @override
  final String? topicId;
  @override
  final String? nextPageToken;
  @override
  final String? q;

  @override
  String toString() {
    return 'ReviewsQuery(cid: $cid, fid: $fid, placeId: $placeId, gl: $gl, hl: $hl, sortBy: $sortBy, topicId: $topicId, nextPageToken: $nextPageToken, q: $q)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewsQueryImpl &&
            (identical(other.cid, cid) || other.cid == cid) &&
            (identical(other.fid, fid) || other.fid == fid) &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.gl, gl) || other.gl == gl) &&
            (identical(other.hl, hl) || other.hl == hl) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.topicId, topicId) || other.topicId == topicId) &&
            (identical(other.nextPageToken, nextPageToken) ||
                other.nextPageToken == nextPageToken) &&
            (identical(other.q, q) || other.q == q));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    cid,
    fid,
    placeId,
    gl,
    hl,
    sortBy,
    topicId,
    nextPageToken,
    q,
  );

  /// Create a copy of ReviewsQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewsQueryImplCopyWith<_$ReviewsQueryImpl> get copyWith =>
      __$$ReviewsQueryImplCopyWithImpl<_$ReviewsQueryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewsQueryImplToJson(this);
  }
}

abstract class _ReviewsQuery implements ReviewsQuery {
  const factory _ReviewsQuery({
    required final String cid,
    required final String fid,
    required final String placeId,
    final String? gl,
    final String? hl,
    final String? sortBy,
    final String? topicId,
    final String? nextPageToken,
    final String? q,
  }) = _$ReviewsQueryImpl;

  factory _ReviewsQuery.fromJson(Map<String, dynamic> json) =
      _$ReviewsQueryImpl.fromJson;

  @override
  String get cid;
  @override
  String get fid;
  @override
  String get placeId;
  @override
  String? get gl;
  @override
  String? get hl;
  @override
  String? get sortBy;
  @override
  String? get topicId;
  @override
  String? get nextPageToken;
  @override
  String? get q;

  /// Create a copy of ReviewsQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewsQueryImplCopyWith<_$ReviewsQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewsQuery _$NewsQueryFromJson(Map<String, dynamic> json) {
  return _NewsQuery.fromJson(json);
}

/// @nodoc
mixin _$NewsQuery {
  String get q => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get gl => throw _privateConstructorUsedError;
  String? get hl => throw _privateConstructorUsedError;
  int? get num => throw _privateConstructorUsedError;
  bool? get autocorrect => throw _privateConstructorUsedError;
  String? get tbs => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;

  /// Serializes this NewsQuery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewsQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsQueryCopyWith<NewsQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsQueryCopyWith<$Res> {
  factory $NewsQueryCopyWith(NewsQuery value, $Res Function(NewsQuery) then) =
      _$NewsQueryCopyWithImpl<$Res, NewsQuery>;
  @useResult
  $Res call({
    String q,
    String? location,
    String? gl,
    String? hl,
    int? num,
    bool? autocorrect,
    String? tbs,
    int? page,
  });
}

/// @nodoc
class _$NewsQueryCopyWithImpl<$Res, $Val extends NewsQuery>
    implements $NewsQueryCopyWith<$Res> {
  _$NewsQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? q = null,
    Object? location = freezed,
    Object? gl = freezed,
    Object? hl = freezed,
    Object? num = freezed,
    Object? autocorrect = freezed,
    Object? tbs = freezed,
    Object? page = freezed,
  }) {
    return _then(
      _value.copyWith(
            q:
                null == q
                    ? _value.q
                    : q // ignore: cast_nullable_to_non_nullable
                        as String,
            location:
                freezed == location
                    ? _value.location
                    : location // ignore: cast_nullable_to_non_nullable
                        as String?,
            gl:
                freezed == gl
                    ? _value.gl
                    : gl // ignore: cast_nullable_to_non_nullable
                        as String?,
            hl:
                freezed == hl
                    ? _value.hl
                    : hl // ignore: cast_nullable_to_non_nullable
                        as String?,
            num:
                freezed == num
                    ? _value.num
                    : num // ignore: cast_nullable_to_non_nullable
                        as int?,
            autocorrect:
                freezed == autocorrect
                    ? _value.autocorrect
                    : autocorrect // ignore: cast_nullable_to_non_nullable
                        as bool?,
            tbs:
                freezed == tbs
                    ? _value.tbs
                    : tbs // ignore: cast_nullable_to_non_nullable
                        as String?,
            page:
                freezed == page
                    ? _value.page
                    : page // ignore: cast_nullable_to_non_nullable
                        as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NewsQueryImplCopyWith<$Res>
    implements $NewsQueryCopyWith<$Res> {
  factory _$$NewsQueryImplCopyWith(
    _$NewsQueryImpl value,
    $Res Function(_$NewsQueryImpl) then,
  ) = __$$NewsQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String q,
    String? location,
    String? gl,
    String? hl,
    int? num,
    bool? autocorrect,
    String? tbs,
    int? page,
  });
}

/// @nodoc
class __$$NewsQueryImplCopyWithImpl<$Res>
    extends _$NewsQueryCopyWithImpl<$Res, _$NewsQueryImpl>
    implements _$$NewsQueryImplCopyWith<$Res> {
  __$$NewsQueryImplCopyWithImpl(
    _$NewsQueryImpl _value,
    $Res Function(_$NewsQueryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NewsQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? q = null,
    Object? location = freezed,
    Object? gl = freezed,
    Object? hl = freezed,
    Object? num = freezed,
    Object? autocorrect = freezed,
    Object? tbs = freezed,
    Object? page = freezed,
  }) {
    return _then(
      _$NewsQueryImpl(
        q:
            null == q
                ? _value.q
                : q // ignore: cast_nullable_to_non_nullable
                    as String,
        location:
            freezed == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                    as String?,
        gl:
            freezed == gl
                ? _value.gl
                : gl // ignore: cast_nullable_to_non_nullable
                    as String?,
        hl:
            freezed == hl
                ? _value.hl
                : hl // ignore: cast_nullable_to_non_nullable
                    as String?,
        num:
            freezed == num
                ? _value.num
                : num // ignore: cast_nullable_to_non_nullable
                    as int?,
        autocorrect:
            freezed == autocorrect
                ? _value.autocorrect
                : autocorrect // ignore: cast_nullable_to_non_nullable
                    as bool?,
        tbs:
            freezed == tbs
                ? _value.tbs
                : tbs // ignore: cast_nullable_to_non_nullable
                    as String?,
        page:
            freezed == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsQueryImpl implements _NewsQuery {
  const _$NewsQueryImpl({
    required this.q,
    this.location,
    this.gl,
    this.hl,
    this.num,
    this.autocorrect,
    this.tbs,
    this.page,
  });

  factory _$NewsQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsQueryImplFromJson(json);

  @override
  final String q;
  @override
  final String? location;
  @override
  final String? gl;
  @override
  final String? hl;
  @override
  final int? num;
  @override
  final bool? autocorrect;
  @override
  final String? tbs;
  @override
  final int? page;

  @override
  String toString() {
    return 'NewsQuery(q: $q, location: $location, gl: $gl, hl: $hl, num: $num, autocorrect: $autocorrect, tbs: $tbs, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsQueryImpl &&
            (identical(other.q, q) || other.q == q) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.gl, gl) || other.gl == gl) &&
            (identical(other.hl, hl) || other.hl == hl) &&
            (identical(other.num, num) || other.num == num) &&
            (identical(other.autocorrect, autocorrect) ||
                other.autocorrect == autocorrect) &&
            (identical(other.tbs, tbs) || other.tbs == tbs) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    q,
    location,
    gl,
    hl,
    num,
    autocorrect,
    tbs,
    page,
  );

  /// Create a copy of NewsQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsQueryImplCopyWith<_$NewsQueryImpl> get copyWith =>
      __$$NewsQueryImplCopyWithImpl<_$NewsQueryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsQueryImplToJson(this);
  }
}

abstract class _NewsQuery implements NewsQuery {
  const factory _NewsQuery({
    required final String q,
    final String? location,
    final String? gl,
    final String? hl,
    final int? num,
    final bool? autocorrect,
    final String? tbs,
    final int? page,
  }) = _$NewsQueryImpl;

  factory _NewsQuery.fromJson(Map<String, dynamic> json) =
      _$NewsQueryImpl.fromJson;

  @override
  String get q;
  @override
  String? get location;
  @override
  String? get gl;
  @override
  String? get hl;
  @override
  int? get num;
  @override
  bool? get autocorrect;
  @override
  String? get tbs;
  @override
  int? get page;

  /// Create a copy of NewsQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsQueryImplCopyWith<_$NewsQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShoppingQuery _$ShoppingQueryFromJson(Map<String, dynamic> json) {
  return _ShoppingQuery.fromJson(json);
}

/// @nodoc
mixin _$ShoppingQuery {
  String get q => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get gl => throw _privateConstructorUsedError;
  String? get hl => throw _privateConstructorUsedError;
  bool? get autocorrect => throw _privateConstructorUsedError;
  String? get tbs => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;

  /// Serializes this ShoppingQuery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShoppingQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShoppingQueryCopyWith<ShoppingQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingQueryCopyWith<$Res> {
  factory $ShoppingQueryCopyWith(
    ShoppingQuery value,
    $Res Function(ShoppingQuery) then,
  ) = _$ShoppingQueryCopyWithImpl<$Res, ShoppingQuery>;
  @useResult
  $Res call({
    String q,
    String? location,
    String? gl,
    String? hl,
    bool? autocorrect,
    String? tbs,
    int? page,
  });
}

/// @nodoc
class _$ShoppingQueryCopyWithImpl<$Res, $Val extends ShoppingQuery>
    implements $ShoppingQueryCopyWith<$Res> {
  _$ShoppingQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShoppingQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? q = null,
    Object? location = freezed,
    Object? gl = freezed,
    Object? hl = freezed,
    Object? autocorrect = freezed,
    Object? tbs = freezed,
    Object? page = freezed,
  }) {
    return _then(
      _value.copyWith(
            q:
                null == q
                    ? _value.q
                    : q // ignore: cast_nullable_to_non_nullable
                        as String,
            location:
                freezed == location
                    ? _value.location
                    : location // ignore: cast_nullable_to_non_nullable
                        as String?,
            gl:
                freezed == gl
                    ? _value.gl
                    : gl // ignore: cast_nullable_to_non_nullable
                        as String?,
            hl:
                freezed == hl
                    ? _value.hl
                    : hl // ignore: cast_nullable_to_non_nullable
                        as String?,
            autocorrect:
                freezed == autocorrect
                    ? _value.autocorrect
                    : autocorrect // ignore: cast_nullable_to_non_nullable
                        as bool?,
            tbs:
                freezed == tbs
                    ? _value.tbs
                    : tbs // ignore: cast_nullable_to_non_nullable
                        as String?,
            page:
                freezed == page
                    ? _value.page
                    : page // ignore: cast_nullable_to_non_nullable
                        as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ShoppingQueryImplCopyWith<$Res>
    implements $ShoppingQueryCopyWith<$Res> {
  factory _$$ShoppingQueryImplCopyWith(
    _$ShoppingQueryImpl value,
    $Res Function(_$ShoppingQueryImpl) then,
  ) = __$$ShoppingQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String q,
    String? location,
    String? gl,
    String? hl,
    bool? autocorrect,
    String? tbs,
    int? page,
  });
}

/// @nodoc
class __$$ShoppingQueryImplCopyWithImpl<$Res>
    extends _$ShoppingQueryCopyWithImpl<$Res, _$ShoppingQueryImpl>
    implements _$$ShoppingQueryImplCopyWith<$Res> {
  __$$ShoppingQueryImplCopyWithImpl(
    _$ShoppingQueryImpl _value,
    $Res Function(_$ShoppingQueryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ShoppingQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? q = null,
    Object? location = freezed,
    Object? gl = freezed,
    Object? hl = freezed,
    Object? autocorrect = freezed,
    Object? tbs = freezed,
    Object? page = freezed,
  }) {
    return _then(
      _$ShoppingQueryImpl(
        q:
            null == q
                ? _value.q
                : q // ignore: cast_nullable_to_non_nullable
                    as String,
        location:
            freezed == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                    as String?,
        gl:
            freezed == gl
                ? _value.gl
                : gl // ignore: cast_nullable_to_non_nullable
                    as String?,
        hl:
            freezed == hl
                ? _value.hl
                : hl // ignore: cast_nullable_to_non_nullable
                    as String?,
        autocorrect:
            freezed == autocorrect
                ? _value.autocorrect
                : autocorrect // ignore: cast_nullable_to_non_nullable
                    as bool?,
        tbs:
            freezed == tbs
                ? _value.tbs
                : tbs // ignore: cast_nullable_to_non_nullable
                    as String?,
        page:
            freezed == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ShoppingQueryImpl implements _ShoppingQuery {
  const _$ShoppingQueryImpl({
    required this.q,
    this.location,
    this.gl,
    this.hl,
    this.autocorrect,
    this.tbs,
    this.page,
  });

  factory _$ShoppingQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShoppingQueryImplFromJson(json);

  @override
  final String q;
  @override
  final String? location;
  @override
  final String? gl;
  @override
  final String? hl;
  @override
  final bool? autocorrect;
  @override
  final String? tbs;
  @override
  final int? page;

  @override
  String toString() {
    return 'ShoppingQuery(q: $q, location: $location, gl: $gl, hl: $hl, autocorrect: $autocorrect, tbs: $tbs, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShoppingQueryImpl &&
            (identical(other.q, q) || other.q == q) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.gl, gl) || other.gl == gl) &&
            (identical(other.hl, hl) || other.hl == hl) &&
            (identical(other.autocorrect, autocorrect) ||
                other.autocorrect == autocorrect) &&
            (identical(other.tbs, tbs) || other.tbs == tbs) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, q, location, gl, hl, autocorrect, tbs, page);

  /// Create a copy of ShoppingQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShoppingQueryImplCopyWith<_$ShoppingQueryImpl> get copyWith =>
      __$$ShoppingQueryImplCopyWithImpl<_$ShoppingQueryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShoppingQueryImplToJson(this);
  }
}

abstract class _ShoppingQuery implements ShoppingQuery {
  const factory _ShoppingQuery({
    required final String q,
    final String? location,
    final String? gl,
    final String? hl,
    final bool? autocorrect,
    final String? tbs,
    final int? page,
  }) = _$ShoppingQueryImpl;

  factory _ShoppingQuery.fromJson(Map<String, dynamic> json) =
      _$ShoppingQueryImpl.fromJson;

  @override
  String get q;
  @override
  String? get location;
  @override
  String? get gl;
  @override
  String? get hl;
  @override
  bool? get autocorrect;
  @override
  String? get tbs;
  @override
  int? get page;

  /// Create a copy of ShoppingQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShoppingQueryImplCopyWith<_$ShoppingQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LensQuery _$LensQueryFromJson(Map<String, dynamic> json) {
  return _LensQuery.fromJson(json);
}

/// @nodoc
mixin _$LensQuery {
  String get url => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get gl => throw _privateConstructorUsedError;
  String? get hl => throw _privateConstructorUsedError;
  String? get tbs => throw _privateConstructorUsedError;
  String? get q => throw _privateConstructorUsedError;

  /// Serializes this LensQuery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LensQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LensQueryCopyWith<LensQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LensQueryCopyWith<$Res> {
  factory $LensQueryCopyWith(LensQuery value, $Res Function(LensQuery) then) =
      _$LensQueryCopyWithImpl<$Res, LensQuery>;
  @useResult
  $Res call({
    String url,
    String? location,
    String? gl,
    String? hl,
    String? tbs,
    String? q,
  });
}

/// @nodoc
class _$LensQueryCopyWithImpl<$Res, $Val extends LensQuery>
    implements $LensQueryCopyWith<$Res> {
  _$LensQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LensQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? location = freezed,
    Object? gl = freezed,
    Object? hl = freezed,
    Object? tbs = freezed,
    Object? q = freezed,
  }) {
    return _then(
      _value.copyWith(
            url:
                null == url
                    ? _value.url
                    : url // ignore: cast_nullable_to_non_nullable
                        as String,
            location:
                freezed == location
                    ? _value.location
                    : location // ignore: cast_nullable_to_non_nullable
                        as String?,
            gl:
                freezed == gl
                    ? _value.gl
                    : gl // ignore: cast_nullable_to_non_nullable
                        as String?,
            hl:
                freezed == hl
                    ? _value.hl
                    : hl // ignore: cast_nullable_to_non_nullable
                        as String?,
            tbs:
                freezed == tbs
                    ? _value.tbs
                    : tbs // ignore: cast_nullable_to_non_nullable
                        as String?,
            q:
                freezed == q
                    ? _value.q
                    : q // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LensQueryImplCopyWith<$Res>
    implements $LensQueryCopyWith<$Res> {
  factory _$$LensQueryImplCopyWith(
    _$LensQueryImpl value,
    $Res Function(_$LensQueryImpl) then,
  ) = __$$LensQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String url,
    String? location,
    String? gl,
    String? hl,
    String? tbs,
    String? q,
  });
}

/// @nodoc
class __$$LensQueryImplCopyWithImpl<$Res>
    extends _$LensQueryCopyWithImpl<$Res, _$LensQueryImpl>
    implements _$$LensQueryImplCopyWith<$Res> {
  __$$LensQueryImplCopyWithImpl(
    _$LensQueryImpl _value,
    $Res Function(_$LensQueryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LensQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? location = freezed,
    Object? gl = freezed,
    Object? hl = freezed,
    Object? tbs = freezed,
    Object? q = freezed,
  }) {
    return _then(
      _$LensQueryImpl(
        url:
            null == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                    as String,
        location:
            freezed == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                    as String?,
        gl:
            freezed == gl
                ? _value.gl
                : gl // ignore: cast_nullable_to_non_nullable
                    as String?,
        hl:
            freezed == hl
                ? _value.hl
                : hl // ignore: cast_nullable_to_non_nullable
                    as String?,
        tbs:
            freezed == tbs
                ? _value.tbs
                : tbs // ignore: cast_nullable_to_non_nullable
                    as String?,
        q:
            freezed == q
                ? _value.q
                : q // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LensQueryImpl implements _LensQuery {
  const _$LensQueryImpl({
    required this.url,
    this.location,
    this.gl,
    this.hl,
    this.tbs,
    this.q,
  });

  factory _$LensQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$LensQueryImplFromJson(json);

  @override
  final String url;
  @override
  final String? location;
  @override
  final String? gl;
  @override
  final String? hl;
  @override
  final String? tbs;
  @override
  final String? q;

  @override
  String toString() {
    return 'LensQuery(url: $url, location: $location, gl: $gl, hl: $hl, tbs: $tbs, q: $q)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LensQueryImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.gl, gl) || other.gl == gl) &&
            (identical(other.hl, hl) || other.hl == hl) &&
            (identical(other.tbs, tbs) || other.tbs == tbs) &&
            (identical(other.q, q) || other.q == q));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, location, gl, hl, tbs, q);

  /// Create a copy of LensQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LensQueryImplCopyWith<_$LensQueryImpl> get copyWith =>
      __$$LensQueryImplCopyWithImpl<_$LensQueryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LensQueryImplToJson(this);
  }
}

abstract class _LensQuery implements LensQuery {
  const factory _LensQuery({
    required final String url,
    final String? location,
    final String? gl,
    final String? hl,
    final String? tbs,
    final String? q,
  }) = _$LensQueryImpl;

  factory _LensQuery.fromJson(Map<String, dynamic> json) =
      _$LensQueryImpl.fromJson;

  @override
  String get url;
  @override
  String? get location;
  @override
  String? get gl;
  @override
  String? get hl;
  @override
  String? get tbs;
  @override
  String? get q;

  /// Create a copy of LensQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LensQueryImplCopyWith<_$LensQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ScholarQuery _$ScholarQueryFromJson(Map<String, dynamic> json) {
  return _ScholarQuery.fromJson(json);
}

/// @nodoc
mixin _$ScholarQuery {
  String get q => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get gl => throw _privateConstructorUsedError;
  String? get hl => throw _privateConstructorUsedError;
  bool? get autocorrect => throw _privateConstructorUsedError;
  String? get tbs => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;

  /// Serializes this ScholarQuery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScholarQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScholarQueryCopyWith<ScholarQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScholarQueryCopyWith<$Res> {
  factory $ScholarQueryCopyWith(
    ScholarQuery value,
    $Res Function(ScholarQuery) then,
  ) = _$ScholarQueryCopyWithImpl<$Res, ScholarQuery>;
  @useResult
  $Res call({
    String q,
    String? location,
    String? gl,
    String? hl,
    bool? autocorrect,
    String? tbs,
    int? page,
  });
}

/// @nodoc
class _$ScholarQueryCopyWithImpl<$Res, $Val extends ScholarQuery>
    implements $ScholarQueryCopyWith<$Res> {
  _$ScholarQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScholarQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? q = null,
    Object? location = freezed,
    Object? gl = freezed,
    Object? hl = freezed,
    Object? autocorrect = freezed,
    Object? tbs = freezed,
    Object? page = freezed,
  }) {
    return _then(
      _value.copyWith(
            q:
                null == q
                    ? _value.q
                    : q // ignore: cast_nullable_to_non_nullable
                        as String,
            location:
                freezed == location
                    ? _value.location
                    : location // ignore: cast_nullable_to_non_nullable
                        as String?,
            gl:
                freezed == gl
                    ? _value.gl
                    : gl // ignore: cast_nullable_to_non_nullable
                        as String?,
            hl:
                freezed == hl
                    ? _value.hl
                    : hl // ignore: cast_nullable_to_non_nullable
                        as String?,
            autocorrect:
                freezed == autocorrect
                    ? _value.autocorrect
                    : autocorrect // ignore: cast_nullable_to_non_nullable
                        as bool?,
            tbs:
                freezed == tbs
                    ? _value.tbs
                    : tbs // ignore: cast_nullable_to_non_nullable
                        as String?,
            page:
                freezed == page
                    ? _value.page
                    : page // ignore: cast_nullable_to_non_nullable
                        as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ScholarQueryImplCopyWith<$Res>
    implements $ScholarQueryCopyWith<$Res> {
  factory _$$ScholarQueryImplCopyWith(
    _$ScholarQueryImpl value,
    $Res Function(_$ScholarQueryImpl) then,
  ) = __$$ScholarQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String q,
    String? location,
    String? gl,
    String? hl,
    bool? autocorrect,
    String? tbs,
    int? page,
  });
}

/// @nodoc
class __$$ScholarQueryImplCopyWithImpl<$Res>
    extends _$ScholarQueryCopyWithImpl<$Res, _$ScholarQueryImpl>
    implements _$$ScholarQueryImplCopyWith<$Res> {
  __$$ScholarQueryImplCopyWithImpl(
    _$ScholarQueryImpl _value,
    $Res Function(_$ScholarQueryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ScholarQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? q = null,
    Object? location = freezed,
    Object? gl = freezed,
    Object? hl = freezed,
    Object? autocorrect = freezed,
    Object? tbs = freezed,
    Object? page = freezed,
  }) {
    return _then(
      _$ScholarQueryImpl(
        q:
            null == q
                ? _value.q
                : q // ignore: cast_nullable_to_non_nullable
                    as String,
        location:
            freezed == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                    as String?,
        gl:
            freezed == gl
                ? _value.gl
                : gl // ignore: cast_nullable_to_non_nullable
                    as String?,
        hl:
            freezed == hl
                ? _value.hl
                : hl // ignore: cast_nullable_to_non_nullable
                    as String?,
        autocorrect:
            freezed == autocorrect
                ? _value.autocorrect
                : autocorrect // ignore: cast_nullable_to_non_nullable
                    as bool?,
        tbs:
            freezed == tbs
                ? _value.tbs
                : tbs // ignore: cast_nullable_to_non_nullable
                    as String?,
        page:
            freezed == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ScholarQueryImpl implements _ScholarQuery {
  const _$ScholarQueryImpl({
    required this.q,
    this.location,
    this.gl,
    this.hl,
    this.autocorrect,
    this.tbs,
    this.page,
  });

  factory _$ScholarQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScholarQueryImplFromJson(json);

  @override
  final String q;
  @override
  final String? location;
  @override
  final String? gl;
  @override
  final String? hl;
  @override
  final bool? autocorrect;
  @override
  final String? tbs;
  @override
  final int? page;

  @override
  String toString() {
    return 'ScholarQuery(q: $q, location: $location, gl: $gl, hl: $hl, autocorrect: $autocorrect, tbs: $tbs, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScholarQueryImpl &&
            (identical(other.q, q) || other.q == q) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.gl, gl) || other.gl == gl) &&
            (identical(other.hl, hl) || other.hl == hl) &&
            (identical(other.autocorrect, autocorrect) ||
                other.autocorrect == autocorrect) &&
            (identical(other.tbs, tbs) || other.tbs == tbs) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, q, location, gl, hl, autocorrect, tbs, page);

  /// Create a copy of ScholarQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScholarQueryImplCopyWith<_$ScholarQueryImpl> get copyWith =>
      __$$ScholarQueryImplCopyWithImpl<_$ScholarQueryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScholarQueryImplToJson(this);
  }
}

abstract class _ScholarQuery implements ScholarQuery {
  const factory _ScholarQuery({
    required final String q,
    final String? location,
    final String? gl,
    final String? hl,
    final bool? autocorrect,
    final String? tbs,
    final int? page,
  }) = _$ScholarQueryImpl;

  factory _ScholarQuery.fromJson(Map<String, dynamic> json) =
      _$ScholarQueryImpl.fromJson;

  @override
  String get q;
  @override
  String? get location;
  @override
  String? get gl;
  @override
  String? get hl;
  @override
  bool? get autocorrect;
  @override
  String? get tbs;
  @override
  int? get page;

  /// Create a copy of ScholarQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScholarQueryImplCopyWith<_$ScholarQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PatentsQuery _$PatentsQueryFromJson(Map<String, dynamic> json) {
  return _PatentsQuery.fromJson(json);
}

/// @nodoc
mixin _$PatentsQuery {
  String get q => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get gl => throw _privateConstructorUsedError;
  String? get hl => throw _privateConstructorUsedError;
  int? get num => throw _privateConstructorUsedError;
  bool? get autocorrect => throw _privateConstructorUsedError;
  String? get tbs => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;

  /// Serializes this PatentsQuery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PatentsQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PatentsQueryCopyWith<PatentsQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatentsQueryCopyWith<$Res> {
  factory $PatentsQueryCopyWith(
    PatentsQuery value,
    $Res Function(PatentsQuery) then,
  ) = _$PatentsQueryCopyWithImpl<$Res, PatentsQuery>;
  @useResult
  $Res call({
    String q,
    String? location,
    String? gl,
    String? hl,
    int? num,
    bool? autocorrect,
    String? tbs,
    int? page,
  });
}

/// @nodoc
class _$PatentsQueryCopyWithImpl<$Res, $Val extends PatentsQuery>
    implements $PatentsQueryCopyWith<$Res> {
  _$PatentsQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PatentsQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? q = null,
    Object? location = freezed,
    Object? gl = freezed,
    Object? hl = freezed,
    Object? num = freezed,
    Object? autocorrect = freezed,
    Object? tbs = freezed,
    Object? page = freezed,
  }) {
    return _then(
      _value.copyWith(
            q:
                null == q
                    ? _value.q
                    : q // ignore: cast_nullable_to_non_nullable
                        as String,
            location:
                freezed == location
                    ? _value.location
                    : location // ignore: cast_nullable_to_non_nullable
                        as String?,
            gl:
                freezed == gl
                    ? _value.gl
                    : gl // ignore: cast_nullable_to_non_nullable
                        as String?,
            hl:
                freezed == hl
                    ? _value.hl
                    : hl // ignore: cast_nullable_to_non_nullable
                        as String?,
            num:
                freezed == num
                    ? _value.num
                    : num // ignore: cast_nullable_to_non_nullable
                        as int?,
            autocorrect:
                freezed == autocorrect
                    ? _value.autocorrect
                    : autocorrect // ignore: cast_nullable_to_non_nullable
                        as bool?,
            tbs:
                freezed == tbs
                    ? _value.tbs
                    : tbs // ignore: cast_nullable_to_non_nullable
                        as String?,
            page:
                freezed == page
                    ? _value.page
                    : page // ignore: cast_nullable_to_non_nullable
                        as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PatentsQueryImplCopyWith<$Res>
    implements $PatentsQueryCopyWith<$Res> {
  factory _$$PatentsQueryImplCopyWith(
    _$PatentsQueryImpl value,
    $Res Function(_$PatentsQueryImpl) then,
  ) = __$$PatentsQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String q,
    String? location,
    String? gl,
    String? hl,
    int? num,
    bool? autocorrect,
    String? tbs,
    int? page,
  });
}

/// @nodoc
class __$$PatentsQueryImplCopyWithImpl<$Res>
    extends _$PatentsQueryCopyWithImpl<$Res, _$PatentsQueryImpl>
    implements _$$PatentsQueryImplCopyWith<$Res> {
  __$$PatentsQueryImplCopyWithImpl(
    _$PatentsQueryImpl _value,
    $Res Function(_$PatentsQueryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PatentsQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? q = null,
    Object? location = freezed,
    Object? gl = freezed,
    Object? hl = freezed,
    Object? num = freezed,
    Object? autocorrect = freezed,
    Object? tbs = freezed,
    Object? page = freezed,
  }) {
    return _then(
      _$PatentsQueryImpl(
        q:
            null == q
                ? _value.q
                : q // ignore: cast_nullable_to_non_nullable
                    as String,
        location:
            freezed == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                    as String?,
        gl:
            freezed == gl
                ? _value.gl
                : gl // ignore: cast_nullable_to_non_nullable
                    as String?,
        hl:
            freezed == hl
                ? _value.hl
                : hl // ignore: cast_nullable_to_non_nullable
                    as String?,
        num:
            freezed == num
                ? _value.num
                : num // ignore: cast_nullable_to_non_nullable
                    as int?,
        autocorrect:
            freezed == autocorrect
                ? _value.autocorrect
                : autocorrect // ignore: cast_nullable_to_non_nullable
                    as bool?,
        tbs:
            freezed == tbs
                ? _value.tbs
                : tbs // ignore: cast_nullable_to_non_nullable
                    as String?,
        page:
            freezed == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PatentsQueryImpl implements _PatentsQuery {
  const _$PatentsQueryImpl({
    required this.q,
    this.location,
    this.gl,
    this.hl,
    this.num,
    this.autocorrect,
    this.tbs,
    this.page,
  });

  factory _$PatentsQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatentsQueryImplFromJson(json);

  @override
  final String q;
  @override
  final String? location;
  @override
  final String? gl;
  @override
  final String? hl;
  @override
  final int? num;
  @override
  final bool? autocorrect;
  @override
  final String? tbs;
  @override
  final int? page;

  @override
  String toString() {
    return 'PatentsQuery(q: $q, location: $location, gl: $gl, hl: $hl, num: $num, autocorrect: $autocorrect, tbs: $tbs, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatentsQueryImpl &&
            (identical(other.q, q) || other.q == q) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.gl, gl) || other.gl == gl) &&
            (identical(other.hl, hl) || other.hl == hl) &&
            (identical(other.num, num) || other.num == num) &&
            (identical(other.autocorrect, autocorrect) ||
                other.autocorrect == autocorrect) &&
            (identical(other.tbs, tbs) || other.tbs == tbs) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    q,
    location,
    gl,
    hl,
    num,
    autocorrect,
    tbs,
    page,
  );

  /// Create a copy of PatentsQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PatentsQueryImplCopyWith<_$PatentsQueryImpl> get copyWith =>
      __$$PatentsQueryImplCopyWithImpl<_$PatentsQueryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatentsQueryImplToJson(this);
  }
}

abstract class _PatentsQuery implements PatentsQuery {
  const factory _PatentsQuery({
    required final String q,
    final String? location,
    final String? gl,
    final String? hl,
    final int? num,
    final bool? autocorrect,
    final String? tbs,
    final int? page,
  }) = _$PatentsQueryImpl;

  factory _PatentsQuery.fromJson(Map<String, dynamic> json) =
      _$PatentsQueryImpl.fromJson;

  @override
  String get q;
  @override
  String? get location;
  @override
  String? get gl;
  @override
  String? get hl;
  @override
  int? get num;
  @override
  bool? get autocorrect;
  @override
  String? get tbs;
  @override
  int? get page;

  /// Create a copy of PatentsQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PatentsQueryImplCopyWith<_$PatentsQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchQuery _$SearchQueryFromJson(Map<String, dynamic> json) {
  return _SearchQuery.fromJson(json);
}

/// @nodoc
mixin _$SearchQuery {
  String get q => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get gl => throw _privateConstructorUsedError;
  String? get hl => throw _privateConstructorUsedError;
  int? get num => throw _privateConstructorUsedError;
  bool? get autocorrect => throw _privateConstructorUsedError;
  String? get tbs => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;

  /// Serializes this SearchQuery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchQueryCopyWith<SearchQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchQueryCopyWith<$Res> {
  factory $SearchQueryCopyWith(
    SearchQuery value,
    $Res Function(SearchQuery) then,
  ) = _$SearchQueryCopyWithImpl<$Res, SearchQuery>;
  @useResult
  $Res call({
    String q,
    String? location,
    String? gl,
    String? hl,
    int? num,
    bool? autocorrect,
    String? tbs,
    int? page,
  });
}

/// @nodoc
class _$SearchQueryCopyWithImpl<$Res, $Val extends SearchQuery>
    implements $SearchQueryCopyWith<$Res> {
  _$SearchQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? q = null,
    Object? location = freezed,
    Object? gl = freezed,
    Object? hl = freezed,
    Object? num = freezed,
    Object? autocorrect = freezed,
    Object? tbs = freezed,
    Object? page = freezed,
  }) {
    return _then(
      _value.copyWith(
            q:
                null == q
                    ? _value.q
                    : q // ignore: cast_nullable_to_non_nullable
                        as String,
            location:
                freezed == location
                    ? _value.location
                    : location // ignore: cast_nullable_to_non_nullable
                        as String?,
            gl:
                freezed == gl
                    ? _value.gl
                    : gl // ignore: cast_nullable_to_non_nullable
                        as String?,
            hl:
                freezed == hl
                    ? _value.hl
                    : hl // ignore: cast_nullable_to_non_nullable
                        as String?,
            num:
                freezed == num
                    ? _value.num
                    : num // ignore: cast_nullable_to_non_nullable
                        as int?,
            autocorrect:
                freezed == autocorrect
                    ? _value.autocorrect
                    : autocorrect // ignore: cast_nullable_to_non_nullable
                        as bool?,
            tbs:
                freezed == tbs
                    ? _value.tbs
                    : tbs // ignore: cast_nullable_to_non_nullable
                        as String?,
            page:
                freezed == page
                    ? _value.page
                    : page // ignore: cast_nullable_to_non_nullable
                        as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SearchQueryImplCopyWith<$Res>
    implements $SearchQueryCopyWith<$Res> {
  factory _$$SearchQueryImplCopyWith(
    _$SearchQueryImpl value,
    $Res Function(_$SearchQueryImpl) then,
  ) = __$$SearchQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String q,
    String? location,
    String? gl,
    String? hl,
    int? num,
    bool? autocorrect,
    String? tbs,
    int? page,
  });
}

/// @nodoc
class __$$SearchQueryImplCopyWithImpl<$Res>
    extends _$SearchQueryCopyWithImpl<$Res, _$SearchQueryImpl>
    implements _$$SearchQueryImplCopyWith<$Res> {
  __$$SearchQueryImplCopyWithImpl(
    _$SearchQueryImpl _value,
    $Res Function(_$SearchQueryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SearchQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? q = null,
    Object? location = freezed,
    Object? gl = freezed,
    Object? hl = freezed,
    Object? num = freezed,
    Object? autocorrect = freezed,
    Object? tbs = freezed,
    Object? page = freezed,
  }) {
    return _then(
      _$SearchQueryImpl(
        q:
            null == q
                ? _value.q
                : q // ignore: cast_nullable_to_non_nullable
                    as String,
        location:
            freezed == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                    as String?,
        gl:
            freezed == gl
                ? _value.gl
                : gl // ignore: cast_nullable_to_non_nullable
                    as String?,
        hl:
            freezed == hl
                ? _value.hl
                : hl // ignore: cast_nullable_to_non_nullable
                    as String?,
        num:
            freezed == num
                ? _value.num
                : num // ignore: cast_nullable_to_non_nullable
                    as int?,
        autocorrect:
            freezed == autocorrect
                ? _value.autocorrect
                : autocorrect // ignore: cast_nullable_to_non_nullable
                    as bool?,
        tbs:
            freezed == tbs
                ? _value.tbs
                : tbs // ignore: cast_nullable_to_non_nullable
                    as String?,
        page:
            freezed == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchQueryImpl implements _SearchQuery {
  const _$SearchQueryImpl({
    required this.q,
    this.location,
    this.gl,
    this.hl,
    this.num,
    this.autocorrect,
    this.tbs,
    this.page,
  });

  factory _$SearchQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchQueryImplFromJson(json);

  @override
  final String q;
  @override
  final String? location;
  @override
  final String? gl;
  @override
  final String? hl;
  @override
  final int? num;
  @override
  final bool? autocorrect;
  @override
  final String? tbs;
  @override
  final int? page;

  @override
  String toString() {
    return 'SearchQuery(q: $q, location: $location, gl: $gl, hl: $hl, num: $num, autocorrect: $autocorrect, tbs: $tbs, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchQueryImpl &&
            (identical(other.q, q) || other.q == q) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.gl, gl) || other.gl == gl) &&
            (identical(other.hl, hl) || other.hl == hl) &&
            (identical(other.num, num) || other.num == num) &&
            (identical(other.autocorrect, autocorrect) ||
                other.autocorrect == autocorrect) &&
            (identical(other.tbs, tbs) || other.tbs == tbs) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    q,
    location,
    gl,
    hl,
    num,
    autocorrect,
    tbs,
    page,
  );

  /// Create a copy of SearchQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchQueryImplCopyWith<_$SearchQueryImpl> get copyWith =>
      __$$SearchQueryImplCopyWithImpl<_$SearchQueryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchQueryImplToJson(this);
  }
}

abstract class _SearchQuery implements SearchQuery {
  const factory _SearchQuery({
    required final String q,
    final String? location,
    final String? gl,
    final String? hl,
    final int? num,
    final bool? autocorrect,
    final String? tbs,
    final int? page,
  }) = _$SearchQueryImpl;

  factory _SearchQuery.fromJson(Map<String, dynamic> json) =
      _$SearchQueryImpl.fromJson;

  @override
  String get q;
  @override
  String? get location;
  @override
  String? get gl;
  @override
  String? get hl;
  @override
  int? get num;
  @override
  bool? get autocorrect;
  @override
  String? get tbs;
  @override
  int? get page;

  /// Create a copy of SearchQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchQueryImplCopyWith<_$SearchQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WebpageQuery _$WebpageQueryFromJson(Map<String, dynamic> json) {
  return _WebpageQuery.fromJson(json);
}

/// @nodoc
mixin _$WebpageQuery {
  String get url => throw _privateConstructorUsedError;
  bool? get includeMarkdown => throw _privateConstructorUsedError;
  String? get q => throw _privateConstructorUsedError;

  /// Serializes this WebpageQuery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebpageQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebpageQueryCopyWith<WebpageQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebpageQueryCopyWith<$Res> {
  factory $WebpageQueryCopyWith(
    WebpageQuery value,
    $Res Function(WebpageQuery) then,
  ) = _$WebpageQueryCopyWithImpl<$Res, WebpageQuery>;
  @useResult
  $Res call({String url, bool? includeMarkdown, String? q});
}

/// @nodoc
class _$WebpageQueryCopyWithImpl<$Res, $Val extends WebpageQuery>
    implements $WebpageQueryCopyWith<$Res> {
  _$WebpageQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebpageQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? includeMarkdown = freezed,
    Object? q = freezed,
  }) {
    return _then(
      _value.copyWith(
            url:
                null == url
                    ? _value.url
                    : url // ignore: cast_nullable_to_non_nullable
                        as String,
            includeMarkdown:
                freezed == includeMarkdown
                    ? _value.includeMarkdown
                    : includeMarkdown // ignore: cast_nullable_to_non_nullable
                        as bool?,
            q:
                freezed == q
                    ? _value.q
                    : q // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WebpageQueryImplCopyWith<$Res>
    implements $WebpageQueryCopyWith<$Res> {
  factory _$$WebpageQueryImplCopyWith(
    _$WebpageQueryImpl value,
    $Res Function(_$WebpageQueryImpl) then,
  ) = __$$WebpageQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, bool? includeMarkdown, String? q});
}

/// @nodoc
class __$$WebpageQueryImplCopyWithImpl<$Res>
    extends _$WebpageQueryCopyWithImpl<$Res, _$WebpageQueryImpl>
    implements _$$WebpageQueryImplCopyWith<$Res> {
  __$$WebpageQueryImplCopyWithImpl(
    _$WebpageQueryImpl _value,
    $Res Function(_$WebpageQueryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WebpageQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? includeMarkdown = freezed,
    Object? q = freezed,
  }) {
    return _then(
      _$WebpageQueryImpl(
        url:
            null == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                    as String,
        includeMarkdown:
            freezed == includeMarkdown
                ? _value.includeMarkdown
                : includeMarkdown // ignore: cast_nullable_to_non_nullable
                    as bool?,
        q:
            freezed == q
                ? _value.q
                : q // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WebpageQueryImpl implements _WebpageQuery {
  const _$WebpageQueryImpl({required this.url, this.includeMarkdown, this.q});

  factory _$WebpageQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebpageQueryImplFromJson(json);

  @override
  final String url;
  @override
  final bool? includeMarkdown;
  @override
  final String? q;

  @override
  String toString() {
    return 'WebpageQuery(url: $url, includeMarkdown: $includeMarkdown, q: $q)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebpageQueryImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.includeMarkdown, includeMarkdown) ||
                other.includeMarkdown == includeMarkdown) &&
            (identical(other.q, q) || other.q == q));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, includeMarkdown, q);

  /// Create a copy of WebpageQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebpageQueryImplCopyWith<_$WebpageQueryImpl> get copyWith =>
      __$$WebpageQueryImplCopyWithImpl<_$WebpageQueryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebpageQueryImplToJson(this);
  }
}

abstract class _WebpageQuery implements WebpageQuery {
  const factory _WebpageQuery({
    required final String url,
    final bool? includeMarkdown,
    final String? q,
  }) = _$WebpageQueryImpl;

  factory _WebpageQuery.fromJson(Map<String, dynamic> json) =
      _$WebpageQueryImpl.fromJson;

  @override
  String get url;
  @override
  bool? get includeMarkdown;
  @override
  String? get q;

  /// Create a copy of WebpageQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebpageQueryImplCopyWith<_$WebpageQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
