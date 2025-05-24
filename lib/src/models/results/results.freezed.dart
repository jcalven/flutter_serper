// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'results.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AutocompleteSuggestion _$AutocompleteSuggestionFromJson(
  Map<String, dynamic> json,
) {
  return _AutocompleteSuggestion.fromJson(json);
}

/// @nodoc
mixin _$AutocompleteSuggestion {
  String get value => throw _privateConstructorUsedError;

  /// Serializes this AutocompleteSuggestion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AutocompleteSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AutocompleteSuggestionCopyWith<AutocompleteSuggestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutocompleteSuggestionCopyWith<$Res> {
  factory $AutocompleteSuggestionCopyWith(
    AutocompleteSuggestion value,
    $Res Function(AutocompleteSuggestion) then,
  ) = _$AutocompleteSuggestionCopyWithImpl<$Res, AutocompleteSuggestion>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$AutocompleteSuggestionCopyWithImpl<
  $Res,
  $Val extends AutocompleteSuggestion
>
    implements $AutocompleteSuggestionCopyWith<$Res> {
  _$AutocompleteSuggestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AutocompleteSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _value.copyWith(
            value:
                null == value
                    ? _value.value
                    : value // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AutocompleteSuggestionImplCopyWith<$Res>
    implements $AutocompleteSuggestionCopyWith<$Res> {
  factory _$$AutocompleteSuggestionImplCopyWith(
    _$AutocompleteSuggestionImpl value,
    $Res Function(_$AutocompleteSuggestionImpl) then,
  ) = __$$AutocompleteSuggestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$AutocompleteSuggestionImplCopyWithImpl<$Res>
    extends
        _$AutocompleteSuggestionCopyWithImpl<$Res, _$AutocompleteSuggestionImpl>
    implements _$$AutocompleteSuggestionImplCopyWith<$Res> {
  __$$AutocompleteSuggestionImplCopyWithImpl(
    _$AutocompleteSuggestionImpl _value,
    $Res Function(_$AutocompleteSuggestionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AutocompleteSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _$AutocompleteSuggestionImpl(
        value:
            null == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AutocompleteSuggestionImpl implements _AutocompleteSuggestion {
  const _$AutocompleteSuggestionImpl({required this.value});

  factory _$AutocompleteSuggestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$AutocompleteSuggestionImplFromJson(json);

  @override
  final String value;

  @override
  String toString() {
    return 'AutocompleteSuggestion(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutocompleteSuggestionImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of AutocompleteSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AutocompleteSuggestionImplCopyWith<_$AutocompleteSuggestionImpl>
  get copyWith =>
      __$$AutocompleteSuggestionImplCopyWithImpl<_$AutocompleteSuggestionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AutocompleteSuggestionImplToJson(this);
  }
}

abstract class _AutocompleteSuggestion implements AutocompleteSuggestion {
  const factory _AutocompleteSuggestion({required final String value}) =
      _$AutocompleteSuggestionImpl;

  factory _AutocompleteSuggestion.fromJson(Map<String, dynamic> json) =
      _$AutocompleteSuggestionImpl.fromJson;

  @override
  String get value;

  /// Create a copy of AutocompleteSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AutocompleteSuggestionImplCopyWith<_$AutocompleteSuggestionImpl>
  get copyWith => throw _privateConstructorUsedError;
}

OrganicResult _$OrganicResultFromJson(Map<String, dynamic> json) {
  return _OrganicResult.fromJson(json);
}

/// @nodoc
mixin _$OrganicResult {
  String get title => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get snippet => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  int? get ratingCount => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;
  dynamic get sitelinks => throw _privateConstructorUsedError;

  /// Serializes this OrganicResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrganicResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrganicResultCopyWith<OrganicResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganicResultCopyWith<$Res> {
  factory $OrganicResultCopyWith(
    OrganicResult value,
    $Res Function(OrganicResult) then,
  ) = _$OrganicResultCopyWithImpl<$Res, OrganicResult>;
  @useResult
  $Res call({
    String title,
    String link,
    String snippet,
    String? date,
    double? rating,
    int? ratingCount,
    String? imageUrl,
    int position,
    dynamic sitelinks,
  });
}

/// @nodoc
class _$OrganicResultCopyWithImpl<$Res, $Val extends OrganicResult>
    implements $OrganicResultCopyWith<$Res> {
  _$OrganicResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrganicResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = null,
    Object? snippet = null,
    Object? date = freezed,
    Object? rating = freezed,
    Object? ratingCount = freezed,
    Object? imageUrl = freezed,
    Object? position = null,
    Object? sitelinks = freezed,
  }) {
    return _then(
      _value.copyWith(
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            link:
                null == link
                    ? _value.link
                    : link // ignore: cast_nullable_to_non_nullable
                        as String,
            snippet:
                null == snippet
                    ? _value.snippet
                    : snippet // ignore: cast_nullable_to_non_nullable
                        as String,
            date:
                freezed == date
                    ? _value.date
                    : date // ignore: cast_nullable_to_non_nullable
                        as String?,
            rating:
                freezed == rating
                    ? _value.rating
                    : rating // ignore: cast_nullable_to_non_nullable
                        as double?,
            ratingCount:
                freezed == ratingCount
                    ? _value.ratingCount
                    : ratingCount // ignore: cast_nullable_to_non_nullable
                        as int?,
            imageUrl:
                freezed == imageUrl
                    ? _value.imageUrl
                    : imageUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            position:
                null == position
                    ? _value.position
                    : position // ignore: cast_nullable_to_non_nullable
                        as int,
            sitelinks:
                freezed == sitelinks
                    ? _value.sitelinks
                    : sitelinks // ignore: cast_nullable_to_non_nullable
                        as dynamic,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrganicResultImplCopyWith<$Res>
    implements $OrganicResultCopyWith<$Res> {
  factory _$$OrganicResultImplCopyWith(
    _$OrganicResultImpl value,
    $Res Function(_$OrganicResultImpl) then,
  ) = __$$OrganicResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String title,
    String link,
    String snippet,
    String? date,
    double? rating,
    int? ratingCount,
    String? imageUrl,
    int position,
    dynamic sitelinks,
  });
}

/// @nodoc
class __$$OrganicResultImplCopyWithImpl<$Res>
    extends _$OrganicResultCopyWithImpl<$Res, _$OrganicResultImpl>
    implements _$$OrganicResultImplCopyWith<$Res> {
  __$$OrganicResultImplCopyWithImpl(
    _$OrganicResultImpl _value,
    $Res Function(_$OrganicResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrganicResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = null,
    Object? snippet = null,
    Object? date = freezed,
    Object? rating = freezed,
    Object? ratingCount = freezed,
    Object? imageUrl = freezed,
    Object? position = null,
    Object? sitelinks = freezed,
  }) {
    return _then(
      _$OrganicResultImpl(
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        link:
            null == link
                ? _value.link
                : link // ignore: cast_nullable_to_non_nullable
                    as String,
        snippet:
            null == snippet
                ? _value.snippet
                : snippet // ignore: cast_nullable_to_non_nullable
                    as String,
        date:
            freezed == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                    as String?,
        rating:
            freezed == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                    as double?,
        ratingCount:
            freezed == ratingCount
                ? _value.ratingCount
                : ratingCount // ignore: cast_nullable_to_non_nullable
                    as int?,
        imageUrl:
            freezed == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        position:
            null == position
                ? _value.position
                : position // ignore: cast_nullable_to_non_nullable
                    as int,
        sitelinks:
            freezed == sitelinks
                ? _value.sitelinks
                : sitelinks // ignore: cast_nullable_to_non_nullable
                    as dynamic,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrganicResultImpl implements _OrganicResult {
  const _$OrganicResultImpl({
    required this.title,
    required this.link,
    required this.snippet,
    this.date,
    this.rating,
    this.ratingCount,
    this.imageUrl,
    required this.position,
    this.sitelinks,
  });

  factory _$OrganicResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrganicResultImplFromJson(json);

  @override
  final String title;
  @override
  final String link;
  @override
  final String snippet;
  @override
  final String? date;
  @override
  final double? rating;
  @override
  final int? ratingCount;
  @override
  final String? imageUrl;
  @override
  final int position;
  @override
  final dynamic sitelinks;

  @override
  String toString() {
    return 'OrganicResult(title: $title, link: $link, snippet: $snippet, date: $date, rating: $rating, ratingCount: $ratingCount, imageUrl: $imageUrl, position: $position, sitelinks: $sitelinks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrganicResultImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.snippet, snippet) || other.snippet == snippet) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.ratingCount, ratingCount) ||
                other.ratingCount == ratingCount) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.position, position) ||
                other.position == position) &&
            const DeepCollectionEquality().equals(other.sitelinks, sitelinks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    title,
    link,
    snippet,
    date,
    rating,
    ratingCount,
    imageUrl,
    position,
    const DeepCollectionEquality().hash(sitelinks),
  );

  /// Create a copy of OrganicResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrganicResultImplCopyWith<_$OrganicResultImpl> get copyWith =>
      __$$OrganicResultImplCopyWithImpl<_$OrganicResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrganicResultImplToJson(this);
  }
}

abstract class _OrganicResult implements OrganicResult {
  const factory _OrganicResult({
    required final String title,
    required final String link,
    required final String snippet,
    final String? date,
    final double? rating,
    final int? ratingCount,
    final String? imageUrl,
    required final int position,
    final dynamic sitelinks,
  }) = _$OrganicResultImpl;

  factory _OrganicResult.fromJson(Map<String, dynamic> json) =
      _$OrganicResultImpl.fromJson;

  @override
  String get title;
  @override
  String get link;
  @override
  String get snippet;
  @override
  String? get date;
  @override
  double? get rating;
  @override
  int? get ratingCount;
  @override
  String? get imageUrl;
  @override
  int get position;
  @override
  dynamic get sitelinks;

  /// Create a copy of OrganicResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrganicResultImplCopyWith<_$OrganicResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RelatedSearchResult _$RelatedSearchResultFromJson(Map<String, dynamic> json) {
  return _RelatedSearchResult.fromJson(json);
}

/// @nodoc
mixin _$RelatedSearchResult {
  String get query => throw _privateConstructorUsedError;

  /// Serializes this RelatedSearchResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RelatedSearchResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RelatedSearchResultCopyWith<RelatedSearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelatedSearchResultCopyWith<$Res> {
  factory $RelatedSearchResultCopyWith(
    RelatedSearchResult value,
    $Res Function(RelatedSearchResult) then,
  ) = _$RelatedSearchResultCopyWithImpl<$Res, RelatedSearchResult>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class _$RelatedSearchResultCopyWithImpl<$Res, $Val extends RelatedSearchResult>
    implements $RelatedSearchResultCopyWith<$Res> {
  _$RelatedSearchResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RelatedSearchResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? query = null}) {
    return _then(
      _value.copyWith(
            query:
                null == query
                    ? _value.query
                    : query // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RelatedSearchResultImplCopyWith<$Res>
    implements $RelatedSearchResultCopyWith<$Res> {
  factory _$$RelatedSearchResultImplCopyWith(
    _$RelatedSearchResultImpl value,
    $Res Function(_$RelatedSearchResultImpl) then,
  ) = __$$RelatedSearchResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$RelatedSearchResultImplCopyWithImpl<$Res>
    extends _$RelatedSearchResultCopyWithImpl<$Res, _$RelatedSearchResultImpl>
    implements _$$RelatedSearchResultImplCopyWith<$Res> {
  __$$RelatedSearchResultImplCopyWithImpl(
    _$RelatedSearchResultImpl _value,
    $Res Function(_$RelatedSearchResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RelatedSearchResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? query = null}) {
    return _then(
      _$RelatedSearchResultImpl(
        query:
            null == query
                ? _value.query
                : query // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RelatedSearchResultImpl implements _RelatedSearchResult {
  const _$RelatedSearchResultImpl({required this.query});

  factory _$RelatedSearchResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$RelatedSearchResultImplFromJson(json);

  @override
  final String query;

  @override
  String toString() {
    return 'RelatedSearchResult(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RelatedSearchResultImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of RelatedSearchResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RelatedSearchResultImplCopyWith<_$RelatedSearchResultImpl> get copyWith =>
      __$$RelatedSearchResultImplCopyWithImpl<_$RelatedSearchResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RelatedSearchResultImplToJson(this);
  }
}

abstract class _RelatedSearchResult implements RelatedSearchResult {
  const factory _RelatedSearchResult({required final String query}) =
      _$RelatedSearchResultImpl;

  factory _RelatedSearchResult.fromJson(Map<String, dynamic> json) =
      _$RelatedSearchResultImpl.fromJson;

  @override
  String get query;

  /// Create a copy of RelatedSearchResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RelatedSearchResultImplCopyWith<_$RelatedSearchResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PeopleAlsoAskResult _$PeopleAlsoAskResultFromJson(Map<String, dynamic> json) {
  return _PeopleAlsoAskResult.fromJson(json);
}

/// @nodoc
mixin _$PeopleAlsoAskResult {
  String get question => throw _privateConstructorUsedError;
  String? get snippet => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;

  /// Serializes this PeopleAlsoAskResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PeopleAlsoAskResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PeopleAlsoAskResultCopyWith<PeopleAlsoAskResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeopleAlsoAskResultCopyWith<$Res> {
  factory $PeopleAlsoAskResultCopyWith(
    PeopleAlsoAskResult value,
    $Res Function(PeopleAlsoAskResult) then,
  ) = _$PeopleAlsoAskResultCopyWithImpl<$Res, PeopleAlsoAskResult>;
  @useResult
  $Res call({String question, String? snippet, String? title, String? link});
}

/// @nodoc
class _$PeopleAlsoAskResultCopyWithImpl<$Res, $Val extends PeopleAlsoAskResult>
    implements $PeopleAlsoAskResultCopyWith<$Res> {
  _$PeopleAlsoAskResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PeopleAlsoAskResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? snippet = freezed,
    Object? title = freezed,
    Object? link = freezed,
  }) {
    return _then(
      _value.copyWith(
            question:
                null == question
                    ? _value.question
                    : question // ignore: cast_nullable_to_non_nullable
                        as String,
            snippet:
                freezed == snippet
                    ? _value.snippet
                    : snippet // ignore: cast_nullable_to_non_nullable
                        as String?,
            title:
                freezed == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String?,
            link:
                freezed == link
                    ? _value.link
                    : link // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PeopleAlsoAskResultImplCopyWith<$Res>
    implements $PeopleAlsoAskResultCopyWith<$Res> {
  factory _$$PeopleAlsoAskResultImplCopyWith(
    _$PeopleAlsoAskResultImpl value,
    $Res Function(_$PeopleAlsoAskResultImpl) then,
  ) = __$$PeopleAlsoAskResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String question, String? snippet, String? title, String? link});
}

/// @nodoc
class __$$PeopleAlsoAskResultImplCopyWithImpl<$Res>
    extends _$PeopleAlsoAskResultCopyWithImpl<$Res, _$PeopleAlsoAskResultImpl>
    implements _$$PeopleAlsoAskResultImplCopyWith<$Res> {
  __$$PeopleAlsoAskResultImplCopyWithImpl(
    _$PeopleAlsoAskResultImpl _value,
    $Res Function(_$PeopleAlsoAskResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PeopleAlsoAskResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? snippet = freezed,
    Object? title = freezed,
    Object? link = freezed,
  }) {
    return _then(
      _$PeopleAlsoAskResultImpl(
        question:
            null == question
                ? _value.question
                : question // ignore: cast_nullable_to_non_nullable
                    as String,
        snippet:
            freezed == snippet
                ? _value.snippet
                : snippet // ignore: cast_nullable_to_non_nullable
                    as String?,
        title:
            freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String?,
        link:
            freezed == link
                ? _value.link
                : link // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PeopleAlsoAskResultImpl implements _PeopleAlsoAskResult {
  const _$PeopleAlsoAskResultImpl({
    required this.question,
    this.snippet,
    this.title,
    this.link,
  });

  factory _$PeopleAlsoAskResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$PeopleAlsoAskResultImplFromJson(json);

  @override
  final String question;
  @override
  final String? snippet;
  @override
  final String? title;
  @override
  final String? link;

  @override
  String toString() {
    return 'PeopleAlsoAskResult(question: $question, snippet: $snippet, title: $title, link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PeopleAlsoAskResultImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.snippet, snippet) || other.snippet == snippet) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, question, snippet, title, link);

  /// Create a copy of PeopleAlsoAskResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PeopleAlsoAskResultImplCopyWith<_$PeopleAlsoAskResultImpl> get copyWith =>
      __$$PeopleAlsoAskResultImplCopyWithImpl<_$PeopleAlsoAskResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PeopleAlsoAskResultImplToJson(this);
  }
}

abstract class _PeopleAlsoAskResult implements PeopleAlsoAskResult {
  const factory _PeopleAlsoAskResult({
    required final String question,
    final String? snippet,
    final String? title,
    final String? link,
  }) = _$PeopleAlsoAskResultImpl;

  factory _PeopleAlsoAskResult.fromJson(Map<String, dynamic> json) =
      _$PeopleAlsoAskResultImpl.fromJson;

  @override
  String get question;
  @override
  String? get snippet;
  @override
  String? get title;
  @override
  String? get link;

  /// Create a copy of PeopleAlsoAskResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PeopleAlsoAskResultImplCopyWith<_$PeopleAlsoAskResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlacesResult _$PlacesResultFromJson(Map<String, dynamic> json) {
  return _PlacesResult.fromJson(json);
}

/// @nodoc
mixin _$PlacesResult {
  String get title => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  int? get reviewCount => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get priceLevel => throw _privateConstructorUsedError;
  List<String>? get openingHours => throw _privateConstructorUsedError;
  int? get position => throw _privateConstructorUsedError;

  /// Serializes this PlacesResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlacesResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlacesResultCopyWith<PlacesResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacesResultCopyWith<$Res> {
  factory $PlacesResultCopyWith(
    PlacesResult value,
    $Res Function(PlacesResult) then,
  ) = _$PlacesResultCopyWithImpl<$Res, PlacesResult>;
  @useResult
  $Res call({
    String title,
    String address,
    String? phone,
    double? rating,
    int? reviewCount,
    String? website,
    String? type,
    String? priceLevel,
    List<String>? openingHours,
    int? position,
  });
}

/// @nodoc
class _$PlacesResultCopyWithImpl<$Res, $Val extends PlacesResult>
    implements $PlacesResultCopyWith<$Res> {
  _$PlacesResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlacesResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? address = null,
    Object? phone = freezed,
    Object? rating = freezed,
    Object? reviewCount = freezed,
    Object? website = freezed,
    Object? type = freezed,
    Object? priceLevel = freezed,
    Object? openingHours = freezed,
    Object? position = freezed,
  }) {
    return _then(
      _value.copyWith(
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            address:
                null == address
                    ? _value.address
                    : address // ignore: cast_nullable_to_non_nullable
                        as String,
            phone:
                freezed == phone
                    ? _value.phone
                    : phone // ignore: cast_nullable_to_non_nullable
                        as String?,
            rating:
                freezed == rating
                    ? _value.rating
                    : rating // ignore: cast_nullable_to_non_nullable
                        as double?,
            reviewCount:
                freezed == reviewCount
                    ? _value.reviewCount
                    : reviewCount // ignore: cast_nullable_to_non_nullable
                        as int?,
            website:
                freezed == website
                    ? _value.website
                    : website // ignore: cast_nullable_to_non_nullable
                        as String?,
            type:
                freezed == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as String?,
            priceLevel:
                freezed == priceLevel
                    ? _value.priceLevel
                    : priceLevel // ignore: cast_nullable_to_non_nullable
                        as String?,
            openingHours:
                freezed == openingHours
                    ? _value.openingHours
                    : openingHours // ignore: cast_nullable_to_non_nullable
                        as List<String>?,
            position:
                freezed == position
                    ? _value.position
                    : position // ignore: cast_nullable_to_non_nullable
                        as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PlacesResultImplCopyWith<$Res>
    implements $PlacesResultCopyWith<$Res> {
  factory _$$PlacesResultImplCopyWith(
    _$PlacesResultImpl value,
    $Res Function(_$PlacesResultImpl) then,
  ) = __$$PlacesResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String title,
    String address,
    String? phone,
    double? rating,
    int? reviewCount,
    String? website,
    String? type,
    String? priceLevel,
    List<String>? openingHours,
    int? position,
  });
}

/// @nodoc
class __$$PlacesResultImplCopyWithImpl<$Res>
    extends _$PlacesResultCopyWithImpl<$Res, _$PlacesResultImpl>
    implements _$$PlacesResultImplCopyWith<$Res> {
  __$$PlacesResultImplCopyWithImpl(
    _$PlacesResultImpl _value,
    $Res Function(_$PlacesResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlacesResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? address = null,
    Object? phone = freezed,
    Object? rating = freezed,
    Object? reviewCount = freezed,
    Object? website = freezed,
    Object? type = freezed,
    Object? priceLevel = freezed,
    Object? openingHours = freezed,
    Object? position = freezed,
  }) {
    return _then(
      _$PlacesResultImpl(
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        address:
            null == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                    as String,
        phone:
            freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                    as String?,
        rating:
            freezed == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                    as double?,
        reviewCount:
            freezed == reviewCount
                ? _value.reviewCount
                : reviewCount // ignore: cast_nullable_to_non_nullable
                    as int?,
        website:
            freezed == website
                ? _value.website
                : website // ignore: cast_nullable_to_non_nullable
                    as String?,
        type:
            freezed == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as String?,
        priceLevel:
            freezed == priceLevel
                ? _value.priceLevel
                : priceLevel // ignore: cast_nullable_to_non_nullable
                    as String?,
        openingHours:
            freezed == openingHours
                ? _value._openingHours
                : openingHours // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
        position:
            freezed == position
                ? _value.position
                : position // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PlacesResultImpl implements _PlacesResult {
  const _$PlacesResultImpl({
    required this.title,
    required this.address,
    this.phone,
    this.rating,
    this.reviewCount,
    this.website,
    this.type,
    this.priceLevel,
    final List<String>? openingHours,
    this.position,
  }) : _openingHours = openingHours;

  factory _$PlacesResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlacesResultImplFromJson(json);

  @override
  final String title;
  @override
  final String address;
  @override
  final String? phone;
  @override
  final double? rating;
  @override
  final int? reviewCount;
  @override
  final String? website;
  @override
  final String? type;
  @override
  final String? priceLevel;
  final List<String>? _openingHours;
  @override
  List<String>? get openingHours {
    final value = _openingHours;
    if (value == null) return null;
    if (_openingHours is EqualUnmodifiableListView) return _openingHours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? position;

  @override
  String toString() {
    return 'PlacesResult(title: $title, address: $address, phone: $phone, rating: $rating, reviewCount: $reviewCount, website: $website, type: $type, priceLevel: $priceLevel, openingHours: $openingHours, position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlacesResultImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.priceLevel, priceLevel) ||
                other.priceLevel == priceLevel) &&
            const DeepCollectionEquality().equals(
              other._openingHours,
              _openingHours,
            ) &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    title,
    address,
    phone,
    rating,
    reviewCount,
    website,
    type,
    priceLevel,
    const DeepCollectionEquality().hash(_openingHours),
    position,
  );

  /// Create a copy of PlacesResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlacesResultImplCopyWith<_$PlacesResultImpl> get copyWith =>
      __$$PlacesResultImplCopyWithImpl<_$PlacesResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlacesResultImplToJson(this);
  }
}

abstract class _PlacesResult implements PlacesResult {
  const factory _PlacesResult({
    required final String title,
    required final String address,
    final String? phone,
    final double? rating,
    final int? reviewCount,
    final String? website,
    final String? type,
    final String? priceLevel,
    final List<String>? openingHours,
    final int? position,
  }) = _$PlacesResultImpl;

  factory _PlacesResult.fromJson(Map<String, dynamic> json) =
      _$PlacesResultImpl.fromJson;

  @override
  String get title;
  @override
  String get address;
  @override
  String? get phone;
  @override
  double? get rating;
  @override
  int? get reviewCount;
  @override
  String? get website;
  @override
  String? get type;
  @override
  String? get priceLevel;
  @override
  List<String>? get openingHours;
  @override
  int? get position;

  /// Create a copy of PlacesResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlacesResultImplCopyWith<_$PlacesResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopStoriesResult _$TopStoriesResultFromJson(Map<String, dynamic> json) {
  return _TopStoriesResult.fromJson(json);
}

/// @nodoc
mixin _$TopStoriesResult {
  String get title => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get snippet => throw _privateConstructorUsedError;

  /// Serializes this TopStoriesResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopStoriesResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopStoriesResultCopyWith<TopStoriesResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopStoriesResultCopyWith<$Res> {
  factory $TopStoriesResultCopyWith(
    TopStoriesResult value,
    $Res Function(TopStoriesResult) then,
  ) = _$TopStoriesResultCopyWithImpl<$Res, TopStoriesResult>;
  @useResult
  $Res call({
    String title,
    String link,
    String? date,
    String? source,
    String? imageUrl,
    String? snippet,
  });
}

/// @nodoc
class _$TopStoriesResultCopyWithImpl<$Res, $Val extends TopStoriesResult>
    implements $TopStoriesResultCopyWith<$Res> {
  _$TopStoriesResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopStoriesResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = null,
    Object? date = freezed,
    Object? source = freezed,
    Object? imageUrl = freezed,
    Object? snippet = freezed,
  }) {
    return _then(
      _value.copyWith(
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            link:
                null == link
                    ? _value.link
                    : link // ignore: cast_nullable_to_non_nullable
                        as String,
            date:
                freezed == date
                    ? _value.date
                    : date // ignore: cast_nullable_to_non_nullable
                        as String?,
            source:
                freezed == source
                    ? _value.source
                    : source // ignore: cast_nullable_to_non_nullable
                        as String?,
            imageUrl:
                freezed == imageUrl
                    ? _value.imageUrl
                    : imageUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            snippet:
                freezed == snippet
                    ? _value.snippet
                    : snippet // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TopStoriesResultImplCopyWith<$Res>
    implements $TopStoriesResultCopyWith<$Res> {
  factory _$$TopStoriesResultImplCopyWith(
    _$TopStoriesResultImpl value,
    $Res Function(_$TopStoriesResultImpl) then,
  ) = __$$TopStoriesResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String title,
    String link,
    String? date,
    String? source,
    String? imageUrl,
    String? snippet,
  });
}

/// @nodoc
class __$$TopStoriesResultImplCopyWithImpl<$Res>
    extends _$TopStoriesResultCopyWithImpl<$Res, _$TopStoriesResultImpl>
    implements _$$TopStoriesResultImplCopyWith<$Res> {
  __$$TopStoriesResultImplCopyWithImpl(
    _$TopStoriesResultImpl _value,
    $Res Function(_$TopStoriesResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TopStoriesResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = null,
    Object? date = freezed,
    Object? source = freezed,
    Object? imageUrl = freezed,
    Object? snippet = freezed,
  }) {
    return _then(
      _$TopStoriesResultImpl(
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        link:
            null == link
                ? _value.link
                : link // ignore: cast_nullable_to_non_nullable
                    as String,
        date:
            freezed == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                    as String?,
        source:
            freezed == source
                ? _value.source
                : source // ignore: cast_nullable_to_non_nullable
                    as String?,
        imageUrl:
            freezed == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        snippet:
            freezed == snippet
                ? _value.snippet
                : snippet // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TopStoriesResultImpl implements _TopStoriesResult {
  const _$TopStoriesResultImpl({
    required this.title,
    required this.link,
    this.date,
    this.source,
    this.imageUrl,
    this.snippet,
  });

  factory _$TopStoriesResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopStoriesResultImplFromJson(json);

  @override
  final String title;
  @override
  final String link;
  @override
  final String? date;
  @override
  final String? source;
  @override
  final String? imageUrl;
  @override
  final String? snippet;

  @override
  String toString() {
    return 'TopStoriesResult(title: $title, link: $link, date: $date, source: $source, imageUrl: $imageUrl, snippet: $snippet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopStoriesResultImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.snippet, snippet) || other.snippet == snippet));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, link, date, source, imageUrl, snippet);

  /// Create a copy of TopStoriesResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopStoriesResultImplCopyWith<_$TopStoriesResultImpl> get copyWith =>
      __$$TopStoriesResultImplCopyWithImpl<_$TopStoriesResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TopStoriesResultImplToJson(this);
  }
}

abstract class _TopStoriesResult implements TopStoriesResult {
  const factory _TopStoriesResult({
    required final String title,
    required final String link,
    final String? date,
    final String? source,
    final String? imageUrl,
    final String? snippet,
  }) = _$TopStoriesResultImpl;

  factory _TopStoriesResult.fromJson(Map<String, dynamic> json) =
      _$TopStoriesResultImpl.fromJson;

  @override
  String get title;
  @override
  String get link;
  @override
  String? get date;
  @override
  String? get source;
  @override
  String? get imageUrl;
  @override
  String? get snippet;

  /// Create a copy of TopStoriesResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopStoriesResultImplCopyWith<_$TopStoriesResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TwitterResult _$TwitterResultFromJson(Map<String, dynamic> json) {
  return _TwitterResult.fromJson(json);
}

/// @nodoc
mixin _$TwitterResult {
  String? get title => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String? get snippet => throw _privateConstructorUsedError;

  /// Serializes this TwitterResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TwitterResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TwitterResultCopyWith<TwitterResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitterResultCopyWith<$Res> {
  factory $TwitterResultCopyWith(
    TwitterResult value,
    $Res Function(TwitterResult) then,
  ) = _$TwitterResultCopyWithImpl<$Res, TwitterResult>;
  @useResult
  $Res call({String? title, String link, String? snippet});
}

/// @nodoc
class _$TwitterResultCopyWithImpl<$Res, $Val extends TwitterResult>
    implements $TwitterResultCopyWith<$Res> {
  _$TwitterResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TwitterResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? link = null,
    Object? snippet = freezed,
  }) {
    return _then(
      _value.copyWith(
            title:
                freezed == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String?,
            link:
                null == link
                    ? _value.link
                    : link // ignore: cast_nullable_to_non_nullable
                        as String,
            snippet:
                freezed == snippet
                    ? _value.snippet
                    : snippet // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TwitterResultImplCopyWith<$Res>
    implements $TwitterResultCopyWith<$Res> {
  factory _$$TwitterResultImplCopyWith(
    _$TwitterResultImpl value,
    $Res Function(_$TwitterResultImpl) then,
  ) = __$$TwitterResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String link, String? snippet});
}

/// @nodoc
class __$$TwitterResultImplCopyWithImpl<$Res>
    extends _$TwitterResultCopyWithImpl<$Res, _$TwitterResultImpl>
    implements _$$TwitterResultImplCopyWith<$Res> {
  __$$TwitterResultImplCopyWithImpl(
    _$TwitterResultImpl _value,
    $Res Function(_$TwitterResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TwitterResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? link = null,
    Object? snippet = freezed,
  }) {
    return _then(
      _$TwitterResultImpl(
        title:
            freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String?,
        link:
            null == link
                ? _value.link
                : link // ignore: cast_nullable_to_non_nullable
                    as String,
        snippet:
            freezed == snippet
                ? _value.snippet
                : snippet // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TwitterResultImpl implements _TwitterResult {
  const _$TwitterResultImpl({this.title, required this.link, this.snippet});

  factory _$TwitterResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$TwitterResultImplFromJson(json);

  @override
  final String? title;
  @override
  final String link;
  @override
  final String? snippet;

  @override
  String toString() {
    return 'TwitterResult(title: $title, link: $link, snippet: $snippet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TwitterResultImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.snippet, snippet) || other.snippet == snippet));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, link, snippet);

  /// Create a copy of TwitterResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TwitterResultImplCopyWith<_$TwitterResultImpl> get copyWith =>
      __$$TwitterResultImplCopyWithImpl<_$TwitterResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TwitterResultImplToJson(this);
  }
}

abstract class _TwitterResult implements TwitterResult {
  const factory _TwitterResult({
    final String? title,
    required final String link,
    final String? snippet,
  }) = _$TwitterResultImpl;

  factory _TwitterResult.fromJson(Map<String, dynamic> json) =
      _$TwitterResultImpl.fromJson;

  @override
  String? get title;
  @override
  String get link;
  @override
  String? get snippet;

  /// Create a copy of TwitterResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TwitterResultImplCopyWith<_$TwitterResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImagesResult _$ImagesResultFromJson(Map<String, dynamic> json) {
  return _ImagesResult.fromJson(json);
}

/// @nodoc
mixin _$ImagesResult {
  String get title => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;
  String get sourceUrl => throw _privateConstructorUsedError;

  /// Serializes this ImagesResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImagesResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImagesResultCopyWith<ImagesResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesResultCopyWith<$Res> {
  factory $ImagesResultCopyWith(
    ImagesResult value,
    $Res Function(ImagesResult) then,
  ) = _$ImagesResultCopyWithImpl<$Res, ImagesResult>;
  @useResult
  $Res call({String title, String imageUrl, String source, String sourceUrl});
}

/// @nodoc
class _$ImagesResultCopyWithImpl<$Res, $Val extends ImagesResult>
    implements $ImagesResultCopyWith<$Res> {
  _$ImagesResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImagesResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? imageUrl = null,
    Object? source = null,
    Object? sourceUrl = null,
  }) {
    return _then(
      _value.copyWith(
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            imageUrl:
                null == imageUrl
                    ? _value.imageUrl
                    : imageUrl // ignore: cast_nullable_to_non_nullable
                        as String,
            source:
                null == source
                    ? _value.source
                    : source // ignore: cast_nullable_to_non_nullable
                        as String,
            sourceUrl:
                null == sourceUrl
                    ? _value.sourceUrl
                    : sourceUrl // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ImagesResultImplCopyWith<$Res>
    implements $ImagesResultCopyWith<$Res> {
  factory _$$ImagesResultImplCopyWith(
    _$ImagesResultImpl value,
    $Res Function(_$ImagesResultImpl) then,
  ) = __$$ImagesResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String imageUrl, String source, String sourceUrl});
}

/// @nodoc
class __$$ImagesResultImplCopyWithImpl<$Res>
    extends _$ImagesResultCopyWithImpl<$Res, _$ImagesResultImpl>
    implements _$$ImagesResultImplCopyWith<$Res> {
  __$$ImagesResultImplCopyWithImpl(
    _$ImagesResultImpl _value,
    $Res Function(_$ImagesResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ImagesResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? imageUrl = null,
    Object? source = null,
    Object? sourceUrl = null,
  }) {
    return _then(
      _$ImagesResultImpl(
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        imageUrl:
            null == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                    as String,
        source:
            null == source
                ? _value.source
                : source // ignore: cast_nullable_to_non_nullable
                    as String,
        sourceUrl:
            null == sourceUrl
                ? _value.sourceUrl
                : sourceUrl // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ImagesResultImpl implements _ImagesResult {
  const _$ImagesResultImpl({
    required this.title,
    required this.imageUrl,
    required this.source,
    required this.sourceUrl,
  });

  factory _$ImagesResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImagesResultImplFromJson(json);

  @override
  final String title;
  @override
  final String imageUrl;
  @override
  final String source;
  @override
  final String sourceUrl;

  @override
  String toString() {
    return 'ImagesResult(title: $title, imageUrl: $imageUrl, source: $source, sourceUrl: $sourceUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagesResultImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.sourceUrl, sourceUrl) ||
                other.sourceUrl == sourceUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, imageUrl, source, sourceUrl);

  /// Create a copy of ImagesResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImagesResultImplCopyWith<_$ImagesResultImpl> get copyWith =>
      __$$ImagesResultImplCopyWithImpl<_$ImagesResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImagesResultImplToJson(this);
  }
}

abstract class _ImagesResult implements ImagesResult {
  const factory _ImagesResult({
    required final String title,
    required final String imageUrl,
    required final String source,
    required final String sourceUrl,
  }) = _$ImagesResultImpl;

  factory _ImagesResult.fromJson(Map<String, dynamic> json) =
      _$ImagesResultImpl.fromJson;

  @override
  String get title;
  @override
  String get imageUrl;
  @override
  String get source;
  @override
  String get sourceUrl;

  /// Create a copy of ImagesResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImagesResultImplCopyWith<_$ImagesResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

KnowledgeGraphResult _$KnowledgeGraphResultFromJson(Map<String, dynamic> json) {
  return _KnowledgeGraphResult.fromJson(json);
}

/// @nodoc
mixin _$KnowledgeGraphResult {
  String get title => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  Map<String, dynamic>? get attributes => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get descriptionLink => throw _privateConstructorUsedError;
  String? get descriptionSource => throw _privateConstructorUsedError;

  /// Serializes this KnowledgeGraphResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KnowledgeGraphResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KnowledgeGraphResultCopyWith<KnowledgeGraphResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KnowledgeGraphResultCopyWith<$Res> {
  factory $KnowledgeGraphResultCopyWith(
    KnowledgeGraphResult value,
    $Res Function(KnowledgeGraphResult) then,
  ) = _$KnowledgeGraphResultCopyWithImpl<$Res, KnowledgeGraphResult>;
  @useResult
  $Res call({
    String title,
    String? type,
    String? imageUrl,
    Map<String, dynamic>? attributes,
    String? description,
    String? descriptionLink,
    String? descriptionSource,
  });
}

/// @nodoc
class _$KnowledgeGraphResultCopyWithImpl<
  $Res,
  $Val extends KnowledgeGraphResult
>
    implements $KnowledgeGraphResultCopyWith<$Res> {
  _$KnowledgeGraphResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KnowledgeGraphResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? type = freezed,
    Object? imageUrl = freezed,
    Object? attributes = freezed,
    Object? description = freezed,
    Object? descriptionLink = freezed,
    Object? descriptionSource = freezed,
  }) {
    return _then(
      _value.copyWith(
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            type:
                freezed == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as String?,
            imageUrl:
                freezed == imageUrl
                    ? _value.imageUrl
                    : imageUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            attributes:
                freezed == attributes
                    ? _value.attributes
                    : attributes // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>?,
            description:
                freezed == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String?,
            descriptionLink:
                freezed == descriptionLink
                    ? _value.descriptionLink
                    : descriptionLink // ignore: cast_nullable_to_non_nullable
                        as String?,
            descriptionSource:
                freezed == descriptionSource
                    ? _value.descriptionSource
                    : descriptionSource // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$KnowledgeGraphResultImplCopyWith<$Res>
    implements $KnowledgeGraphResultCopyWith<$Res> {
  factory _$$KnowledgeGraphResultImplCopyWith(
    _$KnowledgeGraphResultImpl value,
    $Res Function(_$KnowledgeGraphResultImpl) then,
  ) = __$$KnowledgeGraphResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String title,
    String? type,
    String? imageUrl,
    Map<String, dynamic>? attributes,
    String? description,
    String? descriptionLink,
    String? descriptionSource,
  });
}

/// @nodoc
class __$$KnowledgeGraphResultImplCopyWithImpl<$Res>
    extends _$KnowledgeGraphResultCopyWithImpl<$Res, _$KnowledgeGraphResultImpl>
    implements _$$KnowledgeGraphResultImplCopyWith<$Res> {
  __$$KnowledgeGraphResultImplCopyWithImpl(
    _$KnowledgeGraphResultImpl _value,
    $Res Function(_$KnowledgeGraphResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of KnowledgeGraphResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? type = freezed,
    Object? imageUrl = freezed,
    Object? attributes = freezed,
    Object? description = freezed,
    Object? descriptionLink = freezed,
    Object? descriptionSource = freezed,
  }) {
    return _then(
      _$KnowledgeGraphResultImpl(
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        type:
            freezed == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as String?,
        imageUrl:
            freezed == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        attributes:
            freezed == attributes
                ? _value._attributes
                : attributes // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>?,
        description:
            freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String?,
        descriptionLink:
            freezed == descriptionLink
                ? _value.descriptionLink
                : descriptionLink // ignore: cast_nullable_to_non_nullable
                    as String?,
        descriptionSource:
            freezed == descriptionSource
                ? _value.descriptionSource
                : descriptionSource // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$KnowledgeGraphResultImpl implements _KnowledgeGraphResult {
  const _$KnowledgeGraphResultImpl({
    required this.title,
    this.type,
    this.imageUrl,
    final Map<String, dynamic>? attributes,
    this.description,
    this.descriptionLink,
    this.descriptionSource,
  }) : _attributes = attributes;

  factory _$KnowledgeGraphResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$KnowledgeGraphResultImplFromJson(json);

  @override
  final String title;
  @override
  final String? type;
  @override
  final String? imageUrl;
  final Map<String, dynamic>? _attributes;
  @override
  Map<String, dynamic>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableMapView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? description;
  @override
  final String? descriptionLink;
  @override
  final String? descriptionSource;

  @override
  String toString() {
    return 'KnowledgeGraphResult(title: $title, type: $type, imageUrl: $imageUrl, attributes: $attributes, description: $description, descriptionLink: $descriptionLink, descriptionSource: $descriptionSource)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KnowledgeGraphResultImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality().equals(
              other._attributes,
              _attributes,
            ) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionLink, descriptionLink) ||
                other.descriptionLink == descriptionLink) &&
            (identical(other.descriptionSource, descriptionSource) ||
                other.descriptionSource == descriptionSource));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    title,
    type,
    imageUrl,
    const DeepCollectionEquality().hash(_attributes),
    description,
    descriptionLink,
    descriptionSource,
  );

  /// Create a copy of KnowledgeGraphResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KnowledgeGraphResultImplCopyWith<_$KnowledgeGraphResultImpl>
  get copyWith =>
      __$$KnowledgeGraphResultImplCopyWithImpl<_$KnowledgeGraphResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$KnowledgeGraphResultImplToJson(this);
  }
}

abstract class _KnowledgeGraphResult implements KnowledgeGraphResult {
  const factory _KnowledgeGraphResult({
    required final String title,
    final String? type,
    final String? imageUrl,
    final Map<String, dynamic>? attributes,
    final String? description,
    final String? descriptionLink,
    final String? descriptionSource,
  }) = _$KnowledgeGraphResultImpl;

  factory _KnowledgeGraphResult.fromJson(Map<String, dynamic> json) =
      _$KnowledgeGraphResultImpl.fromJson;

  @override
  String get title;
  @override
  String? get type;
  @override
  String? get imageUrl;
  @override
  Map<String, dynamic>? get attributes;
  @override
  String? get description;
  @override
  String? get descriptionLink;
  @override
  String? get descriptionSource;

  /// Create a copy of KnowledgeGraphResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KnowledgeGraphResultImplCopyWith<_$KnowledgeGraphResultImpl>
  get copyWith => throw _privateConstructorUsedError;
}

LocalResultsResult _$LocalResultsResultFromJson(Map<String, dynamic> json) {
  return _LocalResultsResult.fromJson(json);
}

/// @nodoc
mixin _$LocalResultsResult {
  String get title => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  int? get reviewCount => throw _privateConstructorUsedError;
  String? get priceLevel => throw _privateConstructorUsedError;
  List<String>? get openingHours => throw _privateConstructorUsedError;
  List<dynamic>? get moreHours => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;

  /// Serializes this LocalResultsResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocalResultsResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocalResultsResultCopyWith<LocalResultsResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalResultsResultCopyWith<$Res> {
  factory $LocalResultsResultCopyWith(
    LocalResultsResult value,
    $Res Function(LocalResultsResult) then,
  ) = _$LocalResultsResultCopyWithImpl<$Res, LocalResultsResult>;
  @useResult
  $Res call({
    String title,
    String address,
    String? phone,
    String? website,
    double? rating,
    int? reviewCount,
    String? priceLevel,
    List<String>? openingHours,
    List<dynamic>? moreHours,
    int position,
  });
}

/// @nodoc
class _$LocalResultsResultCopyWithImpl<$Res, $Val extends LocalResultsResult>
    implements $LocalResultsResultCopyWith<$Res> {
  _$LocalResultsResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocalResultsResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? address = null,
    Object? phone = freezed,
    Object? website = freezed,
    Object? rating = freezed,
    Object? reviewCount = freezed,
    Object? priceLevel = freezed,
    Object? openingHours = freezed,
    Object? moreHours = freezed,
    Object? position = null,
  }) {
    return _then(
      _value.copyWith(
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            address:
                null == address
                    ? _value.address
                    : address // ignore: cast_nullable_to_non_nullable
                        as String,
            phone:
                freezed == phone
                    ? _value.phone
                    : phone // ignore: cast_nullable_to_non_nullable
                        as String?,
            website:
                freezed == website
                    ? _value.website
                    : website // ignore: cast_nullable_to_non_nullable
                        as String?,
            rating:
                freezed == rating
                    ? _value.rating
                    : rating // ignore: cast_nullable_to_non_nullable
                        as double?,
            reviewCount:
                freezed == reviewCount
                    ? _value.reviewCount
                    : reviewCount // ignore: cast_nullable_to_non_nullable
                        as int?,
            priceLevel:
                freezed == priceLevel
                    ? _value.priceLevel
                    : priceLevel // ignore: cast_nullable_to_non_nullable
                        as String?,
            openingHours:
                freezed == openingHours
                    ? _value.openingHours
                    : openingHours // ignore: cast_nullable_to_non_nullable
                        as List<String>?,
            moreHours:
                freezed == moreHours
                    ? _value.moreHours
                    : moreHours // ignore: cast_nullable_to_non_nullable
                        as List<dynamic>?,
            position:
                null == position
                    ? _value.position
                    : position // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LocalResultsResultImplCopyWith<$Res>
    implements $LocalResultsResultCopyWith<$Res> {
  factory _$$LocalResultsResultImplCopyWith(
    _$LocalResultsResultImpl value,
    $Res Function(_$LocalResultsResultImpl) then,
  ) = __$$LocalResultsResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String title,
    String address,
    String? phone,
    String? website,
    double? rating,
    int? reviewCount,
    String? priceLevel,
    List<String>? openingHours,
    List<dynamic>? moreHours,
    int position,
  });
}

/// @nodoc
class __$$LocalResultsResultImplCopyWithImpl<$Res>
    extends _$LocalResultsResultCopyWithImpl<$Res, _$LocalResultsResultImpl>
    implements _$$LocalResultsResultImplCopyWith<$Res> {
  __$$LocalResultsResultImplCopyWithImpl(
    _$LocalResultsResultImpl _value,
    $Res Function(_$LocalResultsResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocalResultsResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? address = null,
    Object? phone = freezed,
    Object? website = freezed,
    Object? rating = freezed,
    Object? reviewCount = freezed,
    Object? priceLevel = freezed,
    Object? openingHours = freezed,
    Object? moreHours = freezed,
    Object? position = null,
  }) {
    return _then(
      _$LocalResultsResultImpl(
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        address:
            null == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                    as String,
        phone:
            freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                    as String?,
        website:
            freezed == website
                ? _value.website
                : website // ignore: cast_nullable_to_non_nullable
                    as String?,
        rating:
            freezed == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                    as double?,
        reviewCount:
            freezed == reviewCount
                ? _value.reviewCount
                : reviewCount // ignore: cast_nullable_to_non_nullable
                    as int?,
        priceLevel:
            freezed == priceLevel
                ? _value.priceLevel
                : priceLevel // ignore: cast_nullable_to_non_nullable
                    as String?,
        openingHours:
            freezed == openingHours
                ? _value._openingHours
                : openingHours // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
        moreHours:
            freezed == moreHours
                ? _value._moreHours
                : moreHours // ignore: cast_nullable_to_non_nullable
                    as List<dynamic>?,
        position:
            null == position
                ? _value.position
                : position // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LocalResultsResultImpl implements _LocalResultsResult {
  const _$LocalResultsResultImpl({
    required this.title,
    required this.address,
    this.phone,
    this.website,
    this.rating,
    this.reviewCount,
    this.priceLevel,
    final List<String>? openingHours,
    final List<dynamic>? moreHours,
    required this.position,
  }) : _openingHours = openingHours,
       _moreHours = moreHours;

  factory _$LocalResultsResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalResultsResultImplFromJson(json);

  @override
  final String title;
  @override
  final String address;
  @override
  final String? phone;
  @override
  final String? website;
  @override
  final double? rating;
  @override
  final int? reviewCount;
  @override
  final String? priceLevel;
  final List<String>? _openingHours;
  @override
  List<String>? get openingHours {
    final value = _openingHours;
    if (value == null) return null;
    if (_openingHours is EqualUnmodifiableListView) return _openingHours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _moreHours;
  @override
  List<dynamic>? get moreHours {
    final value = _moreHours;
    if (value == null) return null;
    if (_moreHours is EqualUnmodifiableListView) return _moreHours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int position;

  @override
  String toString() {
    return 'LocalResultsResult(title: $title, address: $address, phone: $phone, website: $website, rating: $rating, reviewCount: $reviewCount, priceLevel: $priceLevel, openingHours: $openingHours, moreHours: $moreHours, position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalResultsResultImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            (identical(other.priceLevel, priceLevel) ||
                other.priceLevel == priceLevel) &&
            const DeepCollectionEquality().equals(
              other._openingHours,
              _openingHours,
            ) &&
            const DeepCollectionEquality().equals(
              other._moreHours,
              _moreHours,
            ) &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    title,
    address,
    phone,
    website,
    rating,
    reviewCount,
    priceLevel,
    const DeepCollectionEquality().hash(_openingHours),
    const DeepCollectionEquality().hash(_moreHours),
    position,
  );

  /// Create a copy of LocalResultsResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalResultsResultImplCopyWith<_$LocalResultsResultImpl> get copyWith =>
      __$$LocalResultsResultImplCopyWithImpl<_$LocalResultsResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalResultsResultImplToJson(this);
  }
}

abstract class _LocalResultsResult implements LocalResultsResult {
  const factory _LocalResultsResult({
    required final String title,
    required final String address,
    final String? phone,
    final String? website,
    final double? rating,
    final int? reviewCount,
    final String? priceLevel,
    final List<String>? openingHours,
    final List<dynamic>? moreHours,
    required final int position,
  }) = _$LocalResultsResultImpl;

  factory _LocalResultsResult.fromJson(Map<String, dynamic> json) =
      _$LocalResultsResultImpl.fromJson;

  @override
  String get title;
  @override
  String get address;
  @override
  String? get phone;
  @override
  String? get website;
  @override
  double? get rating;
  @override
  int? get reviewCount;
  @override
  String? get priceLevel;
  @override
  List<String>? get openingHours;
  @override
  List<dynamic>? get moreHours;
  @override
  int get position;

  /// Create a copy of LocalResultsResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalResultsResultImplCopyWith<_$LocalResultsResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageResult _$ImageResultFromJson(Map<String, dynamic> json) {
  return _ImageResult.fromJson(json);
}

/// @nodoc
mixin _$ImageResult {
  String? get title => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;
  String? get sourceUrl => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  String? get domain => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;

  /// Serializes this ImageResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImageResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageResultCopyWith<ImageResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageResultCopyWith<$Res> {
  factory $ImageResultCopyWith(
    ImageResult value,
    $Res Function(ImageResult) then,
  ) = _$ImageResultCopyWithImpl<$Res, ImageResult>;
  @useResult
  $Res call({
    String? title,
    String? imageUrl,
    String? thumbnailUrl,
    String? source,
    String? sourceUrl,
    String? price,
    String? domain,
    int position,
  });
}

/// @nodoc
class _$ImageResultCopyWithImpl<$Res, $Val extends ImageResult>
    implements $ImageResultCopyWith<$Res> {
  _$ImageResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? imageUrl = freezed,
    Object? thumbnailUrl = freezed,
    Object? source = freezed,
    Object? sourceUrl = freezed,
    Object? price = freezed,
    Object? domain = freezed,
    Object? position = null,
  }) {
    return _then(
      _value.copyWith(
            title:
                freezed == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String?,
            imageUrl:
                freezed == imageUrl
                    ? _value.imageUrl
                    : imageUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            thumbnailUrl:
                freezed == thumbnailUrl
                    ? _value.thumbnailUrl
                    : thumbnailUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            source:
                freezed == source
                    ? _value.source
                    : source // ignore: cast_nullable_to_non_nullable
                        as String?,
            sourceUrl:
                freezed == sourceUrl
                    ? _value.sourceUrl
                    : sourceUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            price:
                freezed == price
                    ? _value.price
                    : price // ignore: cast_nullable_to_non_nullable
                        as String?,
            domain:
                freezed == domain
                    ? _value.domain
                    : domain // ignore: cast_nullable_to_non_nullable
                        as String?,
            position:
                null == position
                    ? _value.position
                    : position // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ImageResultImplCopyWith<$Res>
    implements $ImageResultCopyWith<$Res> {
  factory _$$ImageResultImplCopyWith(
    _$ImageResultImpl value,
    $Res Function(_$ImageResultImpl) then,
  ) = __$$ImageResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? title,
    String? imageUrl,
    String? thumbnailUrl,
    String? source,
    String? sourceUrl,
    String? price,
    String? domain,
    int position,
  });
}

/// @nodoc
class __$$ImageResultImplCopyWithImpl<$Res>
    extends _$ImageResultCopyWithImpl<$Res, _$ImageResultImpl>
    implements _$$ImageResultImplCopyWith<$Res> {
  __$$ImageResultImplCopyWithImpl(
    _$ImageResultImpl _value,
    $Res Function(_$ImageResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ImageResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? imageUrl = freezed,
    Object? thumbnailUrl = freezed,
    Object? source = freezed,
    Object? sourceUrl = freezed,
    Object? price = freezed,
    Object? domain = freezed,
    Object? position = null,
  }) {
    return _then(
      _$ImageResultImpl(
        title:
            freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String?,
        imageUrl:
            freezed == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        thumbnailUrl:
            freezed == thumbnailUrl
                ? _value.thumbnailUrl
                : thumbnailUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        source:
            freezed == source
                ? _value.source
                : source // ignore: cast_nullable_to_non_nullable
                    as String?,
        sourceUrl:
            freezed == sourceUrl
                ? _value.sourceUrl
                : sourceUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        price:
            freezed == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                    as String?,
        domain:
            freezed == domain
                ? _value.domain
                : domain // ignore: cast_nullable_to_non_nullable
                    as String?,
        position:
            null == position
                ? _value.position
                : position // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageResultImpl implements _ImageResult {
  const _$ImageResultImpl({
    this.title,
    this.imageUrl,
    this.thumbnailUrl,
    this.source,
    this.sourceUrl,
    this.price,
    this.domain,
    required this.position,
  });

  factory _$ImageResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageResultImplFromJson(json);

  @override
  final String? title;
  @override
  final String? imageUrl;
  @override
  final String? thumbnailUrl;
  @override
  final String? source;
  @override
  final String? sourceUrl;
  @override
  final String? price;
  @override
  final String? domain;
  @override
  final int position;

  @override
  String toString() {
    return 'ImageResult(title: $title, imageUrl: $imageUrl, thumbnailUrl: $thumbnailUrl, source: $source, sourceUrl: $sourceUrl, price: $price, domain: $domain, position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageResultImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.sourceUrl, sourceUrl) ||
                other.sourceUrl == sourceUrl) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.domain, domain) || other.domain == domain) &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    title,
    imageUrl,
    thumbnailUrl,
    source,
    sourceUrl,
    price,
    domain,
    position,
  );

  /// Create a copy of ImageResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageResultImplCopyWith<_$ImageResultImpl> get copyWith =>
      __$$ImageResultImplCopyWithImpl<_$ImageResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageResultImplToJson(this);
  }
}

abstract class _ImageResult implements ImageResult {
  const factory _ImageResult({
    final String? title,
    final String? imageUrl,
    final String? thumbnailUrl,
    final String? source,
    final String? sourceUrl,
    final String? price,
    final String? domain,
    required final int position,
  }) = _$ImageResultImpl;

  factory _ImageResult.fromJson(Map<String, dynamic> json) =
      _$ImageResultImpl.fromJson;

  @override
  String? get title;
  @override
  String? get imageUrl;
  @override
  String? get thumbnailUrl;
  @override
  String? get source;
  @override
  String? get sourceUrl;
  @override
  String? get price;
  @override
  String? get domain;
  @override
  int get position;

  /// Create a copy of ImageResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageResultImplCopyWith<_$ImageResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlaceResult _$PlaceResultFromJson(Map<String, dynamic> json) {
  return _PlaceResult.fromJson(json);
}

/// @nodoc
mixin _$PlaceResult {
  String get title => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  int? get reviewCount => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get priceLevel => throw _privateConstructorUsedError;
  List<String>? get openingHours => throw _privateConstructorUsedError;
  String? get cid => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;

  /// Serializes this PlaceResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlaceResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlaceResultCopyWith<PlaceResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceResultCopyWith<$Res> {
  factory $PlaceResultCopyWith(
    PlaceResult value,
    $Res Function(PlaceResult) then,
  ) = _$PlaceResultCopyWithImpl<$Res, PlaceResult>;
  @useResult
  $Res call({
    String title,
    String address,
    String? phone,
    double? rating,
    int? reviewCount,
    String? website,
    String? type,
    String? priceLevel,
    List<String>? openingHours,
    String? cid,
    int position,
  });
}

/// @nodoc
class _$PlaceResultCopyWithImpl<$Res, $Val extends PlaceResult>
    implements $PlaceResultCopyWith<$Res> {
  _$PlaceResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlaceResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? address = null,
    Object? phone = freezed,
    Object? rating = freezed,
    Object? reviewCount = freezed,
    Object? website = freezed,
    Object? type = freezed,
    Object? priceLevel = freezed,
    Object? openingHours = freezed,
    Object? cid = freezed,
    Object? position = null,
  }) {
    return _then(
      _value.copyWith(
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            address:
                null == address
                    ? _value.address
                    : address // ignore: cast_nullable_to_non_nullable
                        as String,
            phone:
                freezed == phone
                    ? _value.phone
                    : phone // ignore: cast_nullable_to_non_nullable
                        as String?,
            rating:
                freezed == rating
                    ? _value.rating
                    : rating // ignore: cast_nullable_to_non_nullable
                        as double?,
            reviewCount:
                freezed == reviewCount
                    ? _value.reviewCount
                    : reviewCount // ignore: cast_nullable_to_non_nullable
                        as int?,
            website:
                freezed == website
                    ? _value.website
                    : website // ignore: cast_nullable_to_non_nullable
                        as String?,
            type:
                freezed == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as String?,
            priceLevel:
                freezed == priceLevel
                    ? _value.priceLevel
                    : priceLevel // ignore: cast_nullable_to_non_nullable
                        as String?,
            openingHours:
                freezed == openingHours
                    ? _value.openingHours
                    : openingHours // ignore: cast_nullable_to_non_nullable
                        as List<String>?,
            cid:
                freezed == cid
                    ? _value.cid
                    : cid // ignore: cast_nullable_to_non_nullable
                        as String?,
            position:
                null == position
                    ? _value.position
                    : position // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PlaceResultImplCopyWith<$Res>
    implements $PlaceResultCopyWith<$Res> {
  factory _$$PlaceResultImplCopyWith(
    _$PlaceResultImpl value,
    $Res Function(_$PlaceResultImpl) then,
  ) = __$$PlaceResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String title,
    String address,
    String? phone,
    double? rating,
    int? reviewCount,
    String? website,
    String? type,
    String? priceLevel,
    List<String>? openingHours,
    String? cid,
    int position,
  });
}

/// @nodoc
class __$$PlaceResultImplCopyWithImpl<$Res>
    extends _$PlaceResultCopyWithImpl<$Res, _$PlaceResultImpl>
    implements _$$PlaceResultImplCopyWith<$Res> {
  __$$PlaceResultImplCopyWithImpl(
    _$PlaceResultImpl _value,
    $Res Function(_$PlaceResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlaceResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? address = null,
    Object? phone = freezed,
    Object? rating = freezed,
    Object? reviewCount = freezed,
    Object? website = freezed,
    Object? type = freezed,
    Object? priceLevel = freezed,
    Object? openingHours = freezed,
    Object? cid = freezed,
    Object? position = null,
  }) {
    return _then(
      _$PlaceResultImpl(
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        address:
            null == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                    as String,
        phone:
            freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                    as String?,
        rating:
            freezed == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                    as double?,
        reviewCount:
            freezed == reviewCount
                ? _value.reviewCount
                : reviewCount // ignore: cast_nullable_to_non_nullable
                    as int?,
        website:
            freezed == website
                ? _value.website
                : website // ignore: cast_nullable_to_non_nullable
                    as String?,
        type:
            freezed == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as String?,
        priceLevel:
            freezed == priceLevel
                ? _value.priceLevel
                : priceLevel // ignore: cast_nullable_to_non_nullable
                    as String?,
        openingHours:
            freezed == openingHours
                ? _value._openingHours
                : openingHours // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
        cid:
            freezed == cid
                ? _value.cid
                : cid // ignore: cast_nullable_to_non_nullable
                    as String?,
        position:
            null == position
                ? _value.position
                : position // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceResultImpl implements _PlaceResult {
  const _$PlaceResultImpl({
    required this.title,
    required this.address,
    this.phone,
    this.rating,
    this.reviewCount,
    this.website,
    this.type,
    this.priceLevel,
    final List<String>? openingHours,
    this.cid,
    required this.position,
  }) : _openingHours = openingHours;

  factory _$PlaceResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceResultImplFromJson(json);

  @override
  final String title;
  @override
  final String address;
  @override
  final String? phone;
  @override
  final double? rating;
  @override
  final int? reviewCount;
  @override
  final String? website;
  @override
  final String? type;
  @override
  final String? priceLevel;
  final List<String>? _openingHours;
  @override
  List<String>? get openingHours {
    final value = _openingHours;
    if (value == null) return null;
    if (_openingHours is EqualUnmodifiableListView) return _openingHours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? cid;
  @override
  final int position;

  @override
  String toString() {
    return 'PlaceResult(title: $title, address: $address, phone: $phone, rating: $rating, reviewCount: $reviewCount, website: $website, type: $type, priceLevel: $priceLevel, openingHours: $openingHours, cid: $cid, position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceResultImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.priceLevel, priceLevel) ||
                other.priceLevel == priceLevel) &&
            const DeepCollectionEquality().equals(
              other._openingHours,
              _openingHours,
            ) &&
            (identical(other.cid, cid) || other.cid == cid) &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    title,
    address,
    phone,
    rating,
    reviewCount,
    website,
    type,
    priceLevel,
    const DeepCollectionEquality().hash(_openingHours),
    cid,
    position,
  );

  /// Create a copy of PlaceResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceResultImplCopyWith<_$PlaceResultImpl> get copyWith =>
      __$$PlaceResultImplCopyWithImpl<_$PlaceResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceResultImplToJson(this);
  }
}

abstract class _PlaceResult implements PlaceResult {
  const factory _PlaceResult({
    required final String title,
    required final String address,
    final String? phone,
    final double? rating,
    final int? reviewCount,
    final String? website,
    final String? type,
    final String? priceLevel,
    final List<String>? openingHours,
    final String? cid,
    required final int position,
  }) = _$PlaceResultImpl;

  factory _PlaceResult.fromJson(Map<String, dynamic> json) =
      _$PlaceResultImpl.fromJson;

  @override
  String get title;
  @override
  String get address;
  @override
  String? get phone;
  @override
  double? get rating;
  @override
  int? get reviewCount;
  @override
  String? get website;
  @override
  String? get type;
  @override
  String? get priceLevel;
  @override
  List<String>? get openingHours;
  @override
  String? get cid;
  @override
  int get position;

  /// Create a copy of PlaceResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaceResultImplCopyWith<_$PlaceResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VideoResult _$VideoResultFromJson(Map<String, dynamic> json) {
  return _VideoResult.fromJson(json);
}

/// @nodoc
mixin _$VideoResult {
  String get title => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String? get snippet => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;
  String? get channelLink => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;
  String get thumbnailUrl => throw _privateConstructorUsedError;
  int? get viewCount => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;

  /// Serializes this VideoResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VideoResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoResultCopyWith<VideoResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoResultCopyWith<$Res> {
  factory $VideoResultCopyWith(
    VideoResult value,
    $Res Function(VideoResult) then,
  ) = _$VideoResultCopyWithImpl<$Res, VideoResult>;
  @useResult
  $Res call({
    String title,
    String link,
    String? snippet,
    String? source,
    String? channelLink,
    String? date,
    String? duration,
    String thumbnailUrl,
    int? viewCount,
    int position,
  });
}

/// @nodoc
class _$VideoResultCopyWithImpl<$Res, $Val extends VideoResult>
    implements $VideoResultCopyWith<$Res> {
  _$VideoResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = null,
    Object? snippet = freezed,
    Object? source = freezed,
    Object? channelLink = freezed,
    Object? date = freezed,
    Object? duration = freezed,
    Object? thumbnailUrl = null,
    Object? viewCount = freezed,
    Object? position = null,
  }) {
    return _then(
      _value.copyWith(
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            link:
                null == link
                    ? _value.link
                    : link // ignore: cast_nullable_to_non_nullable
                        as String,
            snippet:
                freezed == snippet
                    ? _value.snippet
                    : snippet // ignore: cast_nullable_to_non_nullable
                        as String?,
            source:
                freezed == source
                    ? _value.source
                    : source // ignore: cast_nullable_to_non_nullable
                        as String?,
            channelLink:
                freezed == channelLink
                    ? _value.channelLink
                    : channelLink // ignore: cast_nullable_to_non_nullable
                        as String?,
            date:
                freezed == date
                    ? _value.date
                    : date // ignore: cast_nullable_to_non_nullable
                        as String?,
            duration:
                freezed == duration
                    ? _value.duration
                    : duration // ignore: cast_nullable_to_non_nullable
                        as String?,
            thumbnailUrl:
                null == thumbnailUrl
                    ? _value.thumbnailUrl
                    : thumbnailUrl // ignore: cast_nullable_to_non_nullable
                        as String,
            viewCount:
                freezed == viewCount
                    ? _value.viewCount
                    : viewCount // ignore: cast_nullable_to_non_nullable
                        as int?,
            position:
                null == position
                    ? _value.position
                    : position // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$VideoResultImplCopyWith<$Res>
    implements $VideoResultCopyWith<$Res> {
  factory _$$VideoResultImplCopyWith(
    _$VideoResultImpl value,
    $Res Function(_$VideoResultImpl) then,
  ) = __$$VideoResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String title,
    String link,
    String? snippet,
    String? source,
    String? channelLink,
    String? date,
    String? duration,
    String thumbnailUrl,
    int? viewCount,
    int position,
  });
}

/// @nodoc
class __$$VideoResultImplCopyWithImpl<$Res>
    extends _$VideoResultCopyWithImpl<$Res, _$VideoResultImpl>
    implements _$$VideoResultImplCopyWith<$Res> {
  __$$VideoResultImplCopyWithImpl(
    _$VideoResultImpl _value,
    $Res Function(_$VideoResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VideoResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = null,
    Object? snippet = freezed,
    Object? source = freezed,
    Object? channelLink = freezed,
    Object? date = freezed,
    Object? duration = freezed,
    Object? thumbnailUrl = null,
    Object? viewCount = freezed,
    Object? position = null,
  }) {
    return _then(
      _$VideoResultImpl(
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        link:
            null == link
                ? _value.link
                : link // ignore: cast_nullable_to_non_nullable
                    as String,
        snippet:
            freezed == snippet
                ? _value.snippet
                : snippet // ignore: cast_nullable_to_non_nullable
                    as String?,
        source:
            freezed == source
                ? _value.source
                : source // ignore: cast_nullable_to_non_nullable
                    as String?,
        channelLink:
            freezed == channelLink
                ? _value.channelLink
                : channelLink // ignore: cast_nullable_to_non_nullable
                    as String?,
        date:
            freezed == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                    as String?,
        duration:
            freezed == duration
                ? _value.duration
                : duration // ignore: cast_nullable_to_non_nullable
                    as String?,
        thumbnailUrl:
            null == thumbnailUrl
                ? _value.thumbnailUrl
                : thumbnailUrl // ignore: cast_nullable_to_non_nullable
                    as String,
        viewCount:
            freezed == viewCount
                ? _value.viewCount
                : viewCount // ignore: cast_nullable_to_non_nullable
                    as int?,
        position:
            null == position
                ? _value.position
                : position // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoResultImpl implements _VideoResult {
  const _$VideoResultImpl({
    required this.title,
    required this.link,
    this.snippet,
    this.source,
    this.channelLink,
    this.date,
    this.duration,
    required this.thumbnailUrl,
    this.viewCount,
    required this.position,
  });

  factory _$VideoResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoResultImplFromJson(json);

  @override
  final String title;
  @override
  final String link;
  @override
  final String? snippet;
  @override
  final String? source;
  @override
  final String? channelLink;
  @override
  final String? date;
  @override
  final String? duration;
  @override
  final String thumbnailUrl;
  @override
  final int? viewCount;
  @override
  final int position;

  @override
  String toString() {
    return 'VideoResult(title: $title, link: $link, snippet: $snippet, source: $source, channelLink: $channelLink, date: $date, duration: $duration, thumbnailUrl: $thumbnailUrl, viewCount: $viewCount, position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoResultImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.snippet, snippet) || other.snippet == snippet) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.channelLink, channelLink) ||
                other.channelLink == channelLink) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    title,
    link,
    snippet,
    source,
    channelLink,
    date,
    duration,
    thumbnailUrl,
    viewCount,
    position,
  );

  /// Create a copy of VideoResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoResultImplCopyWith<_$VideoResultImpl> get copyWith =>
      __$$VideoResultImplCopyWithImpl<_$VideoResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoResultImplToJson(this);
  }
}

abstract class _VideoResult implements VideoResult {
  const factory _VideoResult({
    required final String title,
    required final String link,
    final String? snippet,
    final String? source,
    final String? channelLink,
    final String? date,
    final String? duration,
    required final String thumbnailUrl,
    final int? viewCount,
    required final int position,
  }) = _$VideoResultImpl;

  factory _VideoResult.fromJson(Map<String, dynamic> json) =
      _$VideoResultImpl.fromJson;

  @override
  String get title;
  @override
  String get link;
  @override
  String? get snippet;
  @override
  String? get source;
  @override
  String? get channelLink;
  @override
  String? get date;
  @override
  String? get duration;
  @override
  String get thumbnailUrl;
  @override
  int? get viewCount;
  @override
  int get position;

  /// Create a copy of VideoResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoResultImplCopyWith<_$VideoResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MapResult _$MapResultFromJson(Map<String, dynamic> json) {
  return _MapResult.fromJson(json);
}

/// @nodoc
mixin _$MapResult {
  String get title => throw _privateConstructorUsedError;
  String get cid => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  int get reviewCount => throw _privateConstructorUsedError;
  String get priceLevel => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  List<String>? get categories => throw _privateConstructorUsedError;
  List<String>? get openingHours => throw _privateConstructorUsedError;
  List<MapResultReview>? get reviews => throw _privateConstructorUsedError;
  List<MapResultPhoto>? get photos => throw _privateConstructorUsedError;
  Map<String, dynamic>? get additionalInfo =>
      throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this MapResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MapResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MapResultCopyWith<MapResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapResultCopyWith<$Res> {
  factory $MapResultCopyWith(MapResult value, $Res Function(MapResult) then) =
      _$MapResultCopyWithImpl<$Res, MapResult>;
  @useResult
  $Res call({
    String title,
    String cid,
    String address,
    double rating,
    int reviewCount,
    String priceLevel,
    String type,
    String? phone,
    String? website,
    List<String>? categories,
    List<String>? openingHours,
    List<MapResultReview>? reviews,
    List<MapResultPhoto>? photos,
    Map<String, dynamic>? additionalInfo,
    String? description,
  });
}

/// @nodoc
class _$MapResultCopyWithImpl<$Res, $Val extends MapResult>
    implements $MapResultCopyWith<$Res> {
  _$MapResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MapResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? cid = null,
    Object? address = null,
    Object? rating = null,
    Object? reviewCount = null,
    Object? priceLevel = null,
    Object? type = null,
    Object? phone = freezed,
    Object? website = freezed,
    Object? categories = freezed,
    Object? openingHours = freezed,
    Object? reviews = freezed,
    Object? photos = freezed,
    Object? additionalInfo = freezed,
    Object? description = freezed,
  }) {
    return _then(
      _value.copyWith(
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            cid:
                null == cid
                    ? _value.cid
                    : cid // ignore: cast_nullable_to_non_nullable
                        as String,
            address:
                null == address
                    ? _value.address
                    : address // ignore: cast_nullable_to_non_nullable
                        as String,
            rating:
                null == rating
                    ? _value.rating
                    : rating // ignore: cast_nullable_to_non_nullable
                        as double,
            reviewCount:
                null == reviewCount
                    ? _value.reviewCount
                    : reviewCount // ignore: cast_nullable_to_non_nullable
                        as int,
            priceLevel:
                null == priceLevel
                    ? _value.priceLevel
                    : priceLevel // ignore: cast_nullable_to_non_nullable
                        as String,
            type:
                null == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as String,
            phone:
                freezed == phone
                    ? _value.phone
                    : phone // ignore: cast_nullable_to_non_nullable
                        as String?,
            website:
                freezed == website
                    ? _value.website
                    : website // ignore: cast_nullable_to_non_nullable
                        as String?,
            categories:
                freezed == categories
                    ? _value.categories
                    : categories // ignore: cast_nullable_to_non_nullable
                        as List<String>?,
            openingHours:
                freezed == openingHours
                    ? _value.openingHours
                    : openingHours // ignore: cast_nullable_to_non_nullable
                        as List<String>?,
            reviews:
                freezed == reviews
                    ? _value.reviews
                    : reviews // ignore: cast_nullable_to_non_nullable
                        as List<MapResultReview>?,
            photos:
                freezed == photos
                    ? _value.photos
                    : photos // ignore: cast_nullable_to_non_nullable
                        as List<MapResultPhoto>?,
            additionalInfo:
                freezed == additionalInfo
                    ? _value.additionalInfo
                    : additionalInfo // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>?,
            description:
                freezed == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MapResultImplCopyWith<$Res>
    implements $MapResultCopyWith<$Res> {
  factory _$$MapResultImplCopyWith(
    _$MapResultImpl value,
    $Res Function(_$MapResultImpl) then,
  ) = __$$MapResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String title,
    String cid,
    String address,
    double rating,
    int reviewCount,
    String priceLevel,
    String type,
    String? phone,
    String? website,
    List<String>? categories,
    List<String>? openingHours,
    List<MapResultReview>? reviews,
    List<MapResultPhoto>? photos,
    Map<String, dynamic>? additionalInfo,
    String? description,
  });
}

/// @nodoc
class __$$MapResultImplCopyWithImpl<$Res>
    extends _$MapResultCopyWithImpl<$Res, _$MapResultImpl>
    implements _$$MapResultImplCopyWith<$Res> {
  __$$MapResultImplCopyWithImpl(
    _$MapResultImpl _value,
    $Res Function(_$MapResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MapResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? cid = null,
    Object? address = null,
    Object? rating = null,
    Object? reviewCount = null,
    Object? priceLevel = null,
    Object? type = null,
    Object? phone = freezed,
    Object? website = freezed,
    Object? categories = freezed,
    Object? openingHours = freezed,
    Object? reviews = freezed,
    Object? photos = freezed,
    Object? additionalInfo = freezed,
    Object? description = freezed,
  }) {
    return _then(
      _$MapResultImpl(
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        cid:
            null == cid
                ? _value.cid
                : cid // ignore: cast_nullable_to_non_nullable
                    as String,
        address:
            null == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                    as String,
        rating:
            null == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                    as double,
        reviewCount:
            null == reviewCount
                ? _value.reviewCount
                : reviewCount // ignore: cast_nullable_to_non_nullable
                    as int,
        priceLevel:
            null == priceLevel
                ? _value.priceLevel
                : priceLevel // ignore: cast_nullable_to_non_nullable
                    as String,
        type:
            null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as String,
        phone:
            freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                    as String?,
        website:
            freezed == website
                ? _value.website
                : website // ignore: cast_nullable_to_non_nullable
                    as String?,
        categories:
            freezed == categories
                ? _value._categories
                : categories // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
        openingHours:
            freezed == openingHours
                ? _value._openingHours
                : openingHours // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
        reviews:
            freezed == reviews
                ? _value._reviews
                : reviews // ignore: cast_nullable_to_non_nullable
                    as List<MapResultReview>?,
        photos:
            freezed == photos
                ? _value._photos
                : photos // ignore: cast_nullable_to_non_nullable
                    as List<MapResultPhoto>?,
        additionalInfo:
            freezed == additionalInfo
                ? _value._additionalInfo
                : additionalInfo // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>?,
        description:
            freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MapResultImpl implements _MapResult {
  const _$MapResultImpl({
    required this.title,
    required this.cid,
    required this.address,
    required this.rating,
    required this.reviewCount,
    required this.priceLevel,
    required this.type,
    this.phone,
    this.website,
    final List<String>? categories,
    final List<String>? openingHours,
    final List<MapResultReview>? reviews,
    final List<MapResultPhoto>? photos,
    final Map<String, dynamic>? additionalInfo,
    this.description,
  }) : _categories = categories,
       _openingHours = openingHours,
       _reviews = reviews,
       _photos = photos,
       _additionalInfo = additionalInfo;

  factory _$MapResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$MapResultImplFromJson(json);

  @override
  final String title;
  @override
  final String cid;
  @override
  final String address;
  @override
  final double rating;
  @override
  final int reviewCount;
  @override
  final String priceLevel;
  @override
  final String type;
  @override
  final String? phone;
  @override
  final String? website;
  final List<String>? _categories;
  @override
  List<String>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _openingHours;
  @override
  List<String>? get openingHours {
    final value = _openingHours;
    if (value == null) return null;
    if (_openingHours is EqualUnmodifiableListView) return _openingHours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MapResultReview>? _reviews;
  @override
  List<MapResultReview>? get reviews {
    final value = _reviews;
    if (value == null) return null;
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MapResultPhoto>? _photos;
  @override
  List<MapResultPhoto>? get photos {
    final value = _photos;
    if (value == null) return null;
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _additionalInfo;
  @override
  Map<String, dynamic>? get additionalInfo {
    final value = _additionalInfo;
    if (value == null) return null;
    if (_additionalInfo is EqualUnmodifiableMapView) return _additionalInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? description;

  @override
  String toString() {
    return 'MapResult(title: $title, cid: $cid, address: $address, rating: $rating, reviewCount: $reviewCount, priceLevel: $priceLevel, type: $type, phone: $phone, website: $website, categories: $categories, openingHours: $openingHours, reviews: $reviews, photos: $photos, additionalInfo: $additionalInfo, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapResultImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.cid, cid) || other.cid == cid) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            (identical(other.priceLevel, priceLevel) ||
                other.priceLevel == priceLevel) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.website, website) || other.website == website) &&
            const DeepCollectionEquality().equals(
              other._categories,
              _categories,
            ) &&
            const DeepCollectionEquality().equals(
              other._openingHours,
              _openingHours,
            ) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            const DeepCollectionEquality().equals(
              other._additionalInfo,
              _additionalInfo,
            ) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    title,
    cid,
    address,
    rating,
    reviewCount,
    priceLevel,
    type,
    phone,
    website,
    const DeepCollectionEquality().hash(_categories),
    const DeepCollectionEquality().hash(_openingHours),
    const DeepCollectionEquality().hash(_reviews),
    const DeepCollectionEquality().hash(_photos),
    const DeepCollectionEquality().hash(_additionalInfo),
    description,
  );

  /// Create a copy of MapResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MapResultImplCopyWith<_$MapResultImpl> get copyWith =>
      __$$MapResultImplCopyWithImpl<_$MapResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MapResultImplToJson(this);
  }
}

abstract class _MapResult implements MapResult {
  const factory _MapResult({
    required final String title,
    required final String cid,
    required final String address,
    required final double rating,
    required final int reviewCount,
    required final String priceLevel,
    required final String type,
    final String? phone,
    final String? website,
    final List<String>? categories,
    final List<String>? openingHours,
    final List<MapResultReview>? reviews,
    final List<MapResultPhoto>? photos,
    final Map<String, dynamic>? additionalInfo,
    final String? description,
  }) = _$MapResultImpl;

  factory _MapResult.fromJson(Map<String, dynamic> json) =
      _$MapResultImpl.fromJson;

  @override
  String get title;
  @override
  String get cid;
  @override
  String get address;
  @override
  double get rating;
  @override
  int get reviewCount;
  @override
  String get priceLevel;
  @override
  String get type;
  @override
  String? get phone;
  @override
  String? get website;
  @override
  List<String>? get categories;
  @override
  List<String>? get openingHours;
  @override
  List<MapResultReview>? get reviews;
  @override
  List<MapResultPhoto>? get photos;
  @override
  Map<String, dynamic>? get additionalInfo;
  @override
  String? get description;

  /// Create a copy of MapResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MapResultImplCopyWith<_$MapResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MapResultReview _$MapResultReviewFromJson(Map<String, dynamic> json) {
  return _MapResultReview.fromJson(json);
}

/// @nodoc
mixin _$MapResultReview {
  String get author => throw _privateConstructorUsedError;
  String get authorUrl => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  /// Serializes this MapResultReview to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MapResultReview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MapResultReviewCopyWith<MapResultReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapResultReviewCopyWith<$Res> {
  factory $MapResultReviewCopyWith(
    MapResultReview value,
    $Res Function(MapResultReview) then,
  ) = _$MapResultReviewCopyWithImpl<$Res, MapResultReview>;
  @useResult
  $Res call({
    String author,
    String authorUrl,
    String text,
    double rating,
    String date,
  });
}

/// @nodoc
class _$MapResultReviewCopyWithImpl<$Res, $Val extends MapResultReview>
    implements $MapResultReviewCopyWith<$Res> {
  _$MapResultReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MapResultReview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? authorUrl = null,
    Object? text = null,
    Object? rating = null,
    Object? date = null,
  }) {
    return _then(
      _value.copyWith(
            author:
                null == author
                    ? _value.author
                    : author // ignore: cast_nullable_to_non_nullable
                        as String,
            authorUrl:
                null == authorUrl
                    ? _value.authorUrl
                    : authorUrl // ignore: cast_nullable_to_non_nullable
                        as String,
            text:
                null == text
                    ? _value.text
                    : text // ignore: cast_nullable_to_non_nullable
                        as String,
            rating:
                null == rating
                    ? _value.rating
                    : rating // ignore: cast_nullable_to_non_nullable
                        as double,
            date:
                null == date
                    ? _value.date
                    : date // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MapResultReviewImplCopyWith<$Res>
    implements $MapResultReviewCopyWith<$Res> {
  factory _$$MapResultReviewImplCopyWith(
    _$MapResultReviewImpl value,
    $Res Function(_$MapResultReviewImpl) then,
  ) = __$$MapResultReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String author,
    String authorUrl,
    String text,
    double rating,
    String date,
  });
}

/// @nodoc
class __$$MapResultReviewImplCopyWithImpl<$Res>
    extends _$MapResultReviewCopyWithImpl<$Res, _$MapResultReviewImpl>
    implements _$$MapResultReviewImplCopyWith<$Res> {
  __$$MapResultReviewImplCopyWithImpl(
    _$MapResultReviewImpl _value,
    $Res Function(_$MapResultReviewImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MapResultReview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? authorUrl = null,
    Object? text = null,
    Object? rating = null,
    Object? date = null,
  }) {
    return _then(
      _$MapResultReviewImpl(
        author:
            null == author
                ? _value.author
                : author // ignore: cast_nullable_to_non_nullable
                    as String,
        authorUrl:
            null == authorUrl
                ? _value.authorUrl
                : authorUrl // ignore: cast_nullable_to_non_nullable
                    as String,
        text:
            null == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                    as String,
        rating:
            null == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                    as double,
        date:
            null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MapResultReviewImpl implements _MapResultReview {
  const _$MapResultReviewImpl({
    required this.author,
    required this.authorUrl,
    required this.text,
    required this.rating,
    required this.date,
  });

  factory _$MapResultReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$MapResultReviewImplFromJson(json);

  @override
  final String author;
  @override
  final String authorUrl;
  @override
  final String text;
  @override
  final double rating;
  @override
  final String date;

  @override
  String toString() {
    return 'MapResultReview(author: $author, authorUrl: $authorUrl, text: $text, rating: $rating, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapResultReviewImpl &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.authorUrl, authorUrl) ||
                other.authorUrl == authorUrl) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, author, authorUrl, text, rating, date);

  /// Create a copy of MapResultReview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MapResultReviewImplCopyWith<_$MapResultReviewImpl> get copyWith =>
      __$$MapResultReviewImplCopyWithImpl<_$MapResultReviewImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MapResultReviewImplToJson(this);
  }
}

abstract class _MapResultReview implements MapResultReview {
  const factory _MapResultReview({
    required final String author,
    required final String authorUrl,
    required final String text,
    required final double rating,
    required final String date,
  }) = _$MapResultReviewImpl;

  factory _MapResultReview.fromJson(Map<String, dynamic> json) =
      _$MapResultReviewImpl.fromJson;

  @override
  String get author;
  @override
  String get authorUrl;
  @override
  String get text;
  @override
  double get rating;
  @override
  String get date;

  /// Create a copy of MapResultReview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MapResultReviewImplCopyWith<_$MapResultReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MapResultPhoto _$MapResultPhotoFromJson(Map<String, dynamic> json) {
  return _MapResultPhoto.fromJson(json);
}

/// @nodoc
mixin _$MapResultPhoto {
  String get imageUrl => throw _privateConstructorUsedError;
  String get thumbnailUrl => throw _privateConstructorUsedError;

  /// Serializes this MapResultPhoto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MapResultPhoto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MapResultPhotoCopyWith<MapResultPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapResultPhotoCopyWith<$Res> {
  factory $MapResultPhotoCopyWith(
    MapResultPhoto value,
    $Res Function(MapResultPhoto) then,
  ) = _$MapResultPhotoCopyWithImpl<$Res, MapResultPhoto>;
  @useResult
  $Res call({String imageUrl, String thumbnailUrl});
}

/// @nodoc
class _$MapResultPhotoCopyWithImpl<$Res, $Val extends MapResultPhoto>
    implements $MapResultPhotoCopyWith<$Res> {
  _$MapResultPhotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MapResultPhoto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? imageUrl = null, Object? thumbnailUrl = null}) {
    return _then(
      _value.copyWith(
            imageUrl:
                null == imageUrl
                    ? _value.imageUrl
                    : imageUrl // ignore: cast_nullable_to_non_nullable
                        as String,
            thumbnailUrl:
                null == thumbnailUrl
                    ? _value.thumbnailUrl
                    : thumbnailUrl // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MapResultPhotoImplCopyWith<$Res>
    implements $MapResultPhotoCopyWith<$Res> {
  factory _$$MapResultPhotoImplCopyWith(
    _$MapResultPhotoImpl value,
    $Res Function(_$MapResultPhotoImpl) then,
  ) = __$$MapResultPhotoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String imageUrl, String thumbnailUrl});
}

/// @nodoc
class __$$MapResultPhotoImplCopyWithImpl<$Res>
    extends _$MapResultPhotoCopyWithImpl<$Res, _$MapResultPhotoImpl>
    implements _$$MapResultPhotoImplCopyWith<$Res> {
  __$$MapResultPhotoImplCopyWithImpl(
    _$MapResultPhotoImpl _value,
    $Res Function(_$MapResultPhotoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MapResultPhoto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? imageUrl = null, Object? thumbnailUrl = null}) {
    return _then(
      _$MapResultPhotoImpl(
        imageUrl:
            null == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                    as String,
        thumbnailUrl:
            null == thumbnailUrl
                ? _value.thumbnailUrl
                : thumbnailUrl // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MapResultPhotoImpl implements _MapResultPhoto {
  const _$MapResultPhotoImpl({
    required this.imageUrl,
    required this.thumbnailUrl,
  });

  factory _$MapResultPhotoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MapResultPhotoImplFromJson(json);

  @override
  final String imageUrl;
  @override
  final String thumbnailUrl;

  @override
  String toString() {
    return 'MapResultPhoto(imageUrl: $imageUrl, thumbnailUrl: $thumbnailUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapResultPhotoImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl, thumbnailUrl);

  /// Create a copy of MapResultPhoto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MapResultPhotoImplCopyWith<_$MapResultPhotoImpl> get copyWith =>
      __$$MapResultPhotoImplCopyWithImpl<_$MapResultPhotoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MapResultPhotoImplToJson(this);
  }
}

abstract class _MapResultPhoto implements MapResultPhoto {
  const factory _MapResultPhoto({
    required final String imageUrl,
    required final String thumbnailUrl,
  }) = _$MapResultPhotoImpl;

  factory _MapResultPhoto.fromJson(Map<String, dynamic> json) =
      _$MapResultPhotoImpl.fromJson;

  @override
  String get imageUrl;
  @override
  String get thumbnailUrl;

  /// Create a copy of MapResultPhoto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MapResultPhotoImplCopyWith<_$MapResultPhotoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlaceReview _$PlaceReviewFromJson(Map<String, dynamic> json) {
  return _PlaceReview.fromJson(json);
}

/// @nodoc
mixin _$PlaceReview {
  String get author => throw _privateConstructorUsedError;
  String get authorUrl => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  bool? get isLocalGuide => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;

  /// Serializes this PlaceReview to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlaceReview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlaceReviewCopyWith<PlaceReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceReviewCopyWith<$Res> {
  factory $PlaceReviewCopyWith(
    PlaceReview value,
    $Res Function(PlaceReview) then,
  ) = _$PlaceReviewCopyWithImpl<$Res, PlaceReview>;
  @useResult
  $Res call({
    String author,
    String authorUrl,
    String text,
    double rating,
    String date,
    String? id,
    bool? isLocalGuide,
    int position,
  });
}

/// @nodoc
class _$PlaceReviewCopyWithImpl<$Res, $Val extends PlaceReview>
    implements $PlaceReviewCopyWith<$Res> {
  _$PlaceReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlaceReview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? authorUrl = null,
    Object? text = null,
    Object? rating = null,
    Object? date = null,
    Object? id = freezed,
    Object? isLocalGuide = freezed,
    Object? position = null,
  }) {
    return _then(
      _value.copyWith(
            author:
                null == author
                    ? _value.author
                    : author // ignore: cast_nullable_to_non_nullable
                        as String,
            authorUrl:
                null == authorUrl
                    ? _value.authorUrl
                    : authorUrl // ignore: cast_nullable_to_non_nullable
                        as String,
            text:
                null == text
                    ? _value.text
                    : text // ignore: cast_nullable_to_non_nullable
                        as String,
            rating:
                null == rating
                    ? _value.rating
                    : rating // ignore: cast_nullable_to_non_nullable
                        as double,
            date:
                null == date
                    ? _value.date
                    : date // ignore: cast_nullable_to_non_nullable
                        as String,
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String?,
            isLocalGuide:
                freezed == isLocalGuide
                    ? _value.isLocalGuide
                    : isLocalGuide // ignore: cast_nullable_to_non_nullable
                        as bool?,
            position:
                null == position
                    ? _value.position
                    : position // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PlaceReviewImplCopyWith<$Res>
    implements $PlaceReviewCopyWith<$Res> {
  factory _$$PlaceReviewImplCopyWith(
    _$PlaceReviewImpl value,
    $Res Function(_$PlaceReviewImpl) then,
  ) = __$$PlaceReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String author,
    String authorUrl,
    String text,
    double rating,
    String date,
    String? id,
    bool? isLocalGuide,
    int position,
  });
}

/// @nodoc
class __$$PlaceReviewImplCopyWithImpl<$Res>
    extends _$PlaceReviewCopyWithImpl<$Res, _$PlaceReviewImpl>
    implements _$$PlaceReviewImplCopyWith<$Res> {
  __$$PlaceReviewImplCopyWithImpl(
    _$PlaceReviewImpl _value,
    $Res Function(_$PlaceReviewImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlaceReview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? authorUrl = null,
    Object? text = null,
    Object? rating = null,
    Object? date = null,
    Object? id = freezed,
    Object? isLocalGuide = freezed,
    Object? position = null,
  }) {
    return _then(
      _$PlaceReviewImpl(
        author:
            null == author
                ? _value.author
                : author // ignore: cast_nullable_to_non_nullable
                    as String,
        authorUrl:
            null == authorUrl
                ? _value.authorUrl
                : authorUrl // ignore: cast_nullable_to_non_nullable
                    as String,
        text:
            null == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                    as String,
        rating:
            null == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                    as double,
        date:
            null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                    as String,
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String?,
        isLocalGuide:
            freezed == isLocalGuide
                ? _value.isLocalGuide
                : isLocalGuide // ignore: cast_nullable_to_non_nullable
                    as bool?,
        position:
            null == position
                ? _value.position
                : position // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceReviewImpl implements _PlaceReview {
  const _$PlaceReviewImpl({
    required this.author,
    required this.authorUrl,
    required this.text,
    required this.rating,
    required this.date,
    this.id,
    this.isLocalGuide,
    required this.position,
  });

  factory _$PlaceReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceReviewImplFromJson(json);

  @override
  final String author;
  @override
  final String authorUrl;
  @override
  final String text;
  @override
  final double rating;
  @override
  final String date;
  @override
  final String? id;
  @override
  final bool? isLocalGuide;
  @override
  final int position;

  @override
  String toString() {
    return 'PlaceReview(author: $author, authorUrl: $authorUrl, text: $text, rating: $rating, date: $date, id: $id, isLocalGuide: $isLocalGuide, position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceReviewImpl &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.authorUrl, authorUrl) ||
                other.authorUrl == authorUrl) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isLocalGuide, isLocalGuide) ||
                other.isLocalGuide == isLocalGuide) &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    author,
    authorUrl,
    text,
    rating,
    date,
    id,
    isLocalGuide,
    position,
  );

  /// Create a copy of PlaceReview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceReviewImplCopyWith<_$PlaceReviewImpl> get copyWith =>
      __$$PlaceReviewImplCopyWithImpl<_$PlaceReviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceReviewImplToJson(this);
  }
}

abstract class _PlaceReview implements PlaceReview {
  const factory _PlaceReview({
    required final String author,
    required final String authorUrl,
    required final String text,
    required final double rating,
    required final String date,
    final String? id,
    final bool? isLocalGuide,
    required final int position,
  }) = _$PlaceReviewImpl;

  factory _PlaceReview.fromJson(Map<String, dynamic> json) =
      _$PlaceReviewImpl.fromJson;

  @override
  String get author;
  @override
  String get authorUrl;
  @override
  String get text;
  @override
  double get rating;
  @override
  String get date;
  @override
  String? get id;
  @override
  bool? get isLocalGuide;
  @override
  int get position;

  /// Create a copy of PlaceReview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaceReviewImplCopyWith<_$PlaceReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewsResult _$NewsResultFromJson(Map<String, dynamic> json) {
  return _NewsResult.fromJson(json);
}

/// @nodoc
mixin _$NewsResult {
  String get title => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get snippet => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;

  /// Serializes this NewsResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewsResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsResultCopyWith<NewsResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsResultCopyWith<$Res> {
  factory $NewsResultCopyWith(
    NewsResult value,
    $Res Function(NewsResult) then,
  ) = _$NewsResultCopyWithImpl<$Res, NewsResult>;
  @useResult
  $Res call({
    String title,
    String link,
    String snippet,
    String date,
    String source,
    String? imageUrl,
    int position,
  });
}

/// @nodoc
class _$NewsResultCopyWithImpl<$Res, $Val extends NewsResult>
    implements $NewsResultCopyWith<$Res> {
  _$NewsResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = null,
    Object? snippet = null,
    Object? date = null,
    Object? source = null,
    Object? imageUrl = freezed,
    Object? position = null,
  }) {
    return _then(
      _value.copyWith(
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            link:
                null == link
                    ? _value.link
                    : link // ignore: cast_nullable_to_non_nullable
                        as String,
            snippet:
                null == snippet
                    ? _value.snippet
                    : snippet // ignore: cast_nullable_to_non_nullable
                        as String,
            date:
                null == date
                    ? _value.date
                    : date // ignore: cast_nullable_to_non_nullable
                        as String,
            source:
                null == source
                    ? _value.source
                    : source // ignore: cast_nullable_to_non_nullable
                        as String,
            imageUrl:
                freezed == imageUrl
                    ? _value.imageUrl
                    : imageUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            position:
                null == position
                    ? _value.position
                    : position // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NewsResultImplCopyWith<$Res>
    implements $NewsResultCopyWith<$Res> {
  factory _$$NewsResultImplCopyWith(
    _$NewsResultImpl value,
    $Res Function(_$NewsResultImpl) then,
  ) = __$$NewsResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String title,
    String link,
    String snippet,
    String date,
    String source,
    String? imageUrl,
    int position,
  });
}

/// @nodoc
class __$$NewsResultImplCopyWithImpl<$Res>
    extends _$NewsResultCopyWithImpl<$Res, _$NewsResultImpl>
    implements _$$NewsResultImplCopyWith<$Res> {
  __$$NewsResultImplCopyWithImpl(
    _$NewsResultImpl _value,
    $Res Function(_$NewsResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NewsResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = null,
    Object? snippet = null,
    Object? date = null,
    Object? source = null,
    Object? imageUrl = freezed,
    Object? position = null,
  }) {
    return _then(
      _$NewsResultImpl(
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        link:
            null == link
                ? _value.link
                : link // ignore: cast_nullable_to_non_nullable
                    as String,
        snippet:
            null == snippet
                ? _value.snippet
                : snippet // ignore: cast_nullable_to_non_nullable
                    as String,
        date:
            null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                    as String,
        source:
            null == source
                ? _value.source
                : source // ignore: cast_nullable_to_non_nullable
                    as String,
        imageUrl:
            freezed == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        position:
            null == position
                ? _value.position
                : position // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsResultImpl implements _NewsResult {
  const _$NewsResultImpl({
    required this.title,
    required this.link,
    required this.snippet,
    required this.date,
    required this.source,
    this.imageUrl,
    required this.position,
  });

  factory _$NewsResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsResultImplFromJson(json);

  @override
  final String title;
  @override
  final String link;
  @override
  final String snippet;
  @override
  final String date;
  @override
  final String source;
  @override
  final String? imageUrl;
  @override
  final int position;

  @override
  String toString() {
    return 'NewsResult(title: $title, link: $link, snippet: $snippet, date: $date, source: $source, imageUrl: $imageUrl, position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsResultImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.snippet, snippet) || other.snippet == snippet) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    title,
    link,
    snippet,
    date,
    source,
    imageUrl,
    position,
  );

  /// Create a copy of NewsResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsResultImplCopyWith<_$NewsResultImpl> get copyWith =>
      __$$NewsResultImplCopyWithImpl<_$NewsResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsResultImplToJson(this);
  }
}

abstract class _NewsResult implements NewsResult {
  const factory _NewsResult({
    required final String title,
    required final String link,
    required final String snippet,
    required final String date,
    required final String source,
    final String? imageUrl,
    required final int position,
  }) = _$NewsResultImpl;

  factory _NewsResult.fromJson(Map<String, dynamic> json) =
      _$NewsResultImpl.fromJson;

  @override
  String get title;
  @override
  String get link;
  @override
  String get snippet;
  @override
  String get date;
  @override
  String get source;
  @override
  String? get imageUrl;
  @override
  int get position;

  /// Create a copy of NewsResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsResultImplCopyWith<_$NewsResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShoppingResult _$ShoppingResultFromJson(Map<String, dynamic> json) {
  return _ShoppingResult.fromJson(json);
}

/// @nodoc
mixin _$ShoppingResult {
  String get title => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  String? get delivery => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;

  /// Serializes this ShoppingResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShoppingResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShoppingResultCopyWith<ShoppingResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingResultCopyWith<$Res> {
  factory $ShoppingResultCopyWith(
    ShoppingResult value,
    $Res Function(ShoppingResult) then,
  ) = _$ShoppingResultCopyWithImpl<$Res, ShoppingResult>;
  @useResult
  $Res call({
    String title,
    String? source,
    String link,
    String? price,
    String? delivery,
    String? imageUrl,
    int position,
  });
}

/// @nodoc
class _$ShoppingResultCopyWithImpl<$Res, $Val extends ShoppingResult>
    implements $ShoppingResultCopyWith<$Res> {
  _$ShoppingResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShoppingResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? source = freezed,
    Object? link = null,
    Object? price = freezed,
    Object? delivery = freezed,
    Object? imageUrl = freezed,
    Object? position = null,
  }) {
    return _then(
      _value.copyWith(
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            source:
                freezed == source
                    ? _value.source
                    : source // ignore: cast_nullable_to_non_nullable
                        as String?,
            link:
                null == link
                    ? _value.link
                    : link // ignore: cast_nullable_to_non_nullable
                        as String,
            price:
                freezed == price
                    ? _value.price
                    : price // ignore: cast_nullable_to_non_nullable
                        as String?,
            delivery:
                freezed == delivery
                    ? _value.delivery
                    : delivery // ignore: cast_nullable_to_non_nullable
                        as String?,
            imageUrl:
                freezed == imageUrl
                    ? _value.imageUrl
                    : imageUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            position:
                null == position
                    ? _value.position
                    : position // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ShoppingResultImplCopyWith<$Res>
    implements $ShoppingResultCopyWith<$Res> {
  factory _$$ShoppingResultImplCopyWith(
    _$ShoppingResultImpl value,
    $Res Function(_$ShoppingResultImpl) then,
  ) = __$$ShoppingResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String title,
    String? source,
    String link,
    String? price,
    String? delivery,
    String? imageUrl,
    int position,
  });
}

/// @nodoc
class __$$ShoppingResultImplCopyWithImpl<$Res>
    extends _$ShoppingResultCopyWithImpl<$Res, _$ShoppingResultImpl>
    implements _$$ShoppingResultImplCopyWith<$Res> {
  __$$ShoppingResultImplCopyWithImpl(
    _$ShoppingResultImpl _value,
    $Res Function(_$ShoppingResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ShoppingResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? source = freezed,
    Object? link = null,
    Object? price = freezed,
    Object? delivery = freezed,
    Object? imageUrl = freezed,
    Object? position = null,
  }) {
    return _then(
      _$ShoppingResultImpl(
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        source:
            freezed == source
                ? _value.source
                : source // ignore: cast_nullable_to_non_nullable
                    as String?,
        link:
            null == link
                ? _value.link
                : link // ignore: cast_nullable_to_non_nullable
                    as String,
        price:
            freezed == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                    as String?,
        delivery:
            freezed == delivery
                ? _value.delivery
                : delivery // ignore: cast_nullable_to_non_nullable
                    as String?,
        imageUrl:
            freezed == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        position:
            null == position
                ? _value.position
                : position // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ShoppingResultImpl implements _ShoppingResult {
  const _$ShoppingResultImpl({
    required this.title,
    this.source,
    required this.link,
    this.price,
    this.delivery,
    this.imageUrl,
    required this.position,
  });

  factory _$ShoppingResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShoppingResultImplFromJson(json);

  @override
  final String title;
  @override
  final String? source;
  @override
  final String link;
  @override
  final String? price;
  @override
  final String? delivery;
  @override
  final String? imageUrl;
  @override
  final int position;

  @override
  String toString() {
    return 'ShoppingResult(title: $title, source: $source, link: $link, price: $price, delivery: $delivery, imageUrl: $imageUrl, position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShoppingResultImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    title,
    source,
    link,
    price,
    delivery,
    imageUrl,
    position,
  );

  /// Create a copy of ShoppingResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShoppingResultImplCopyWith<_$ShoppingResultImpl> get copyWith =>
      __$$ShoppingResultImplCopyWithImpl<_$ShoppingResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ShoppingResultImplToJson(this);
  }
}

abstract class _ShoppingResult implements ShoppingResult {
  const factory _ShoppingResult({
    required final String title,
    final String? source,
    required final String link,
    final String? price,
    final String? delivery,
    final String? imageUrl,
    required final int position,
  }) = _$ShoppingResultImpl;

  factory _ShoppingResult.fromJson(Map<String, dynamic> json) =
      _$ShoppingResultImpl.fromJson;

  @override
  String get title;
  @override
  String? get source;
  @override
  String get link;
  @override
  String? get price;
  @override
  String? get delivery;
  @override
  String? get imageUrl;
  @override
  int get position;

  /// Create a copy of ShoppingResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShoppingResultImplCopyWith<_$ShoppingResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LensResult _$LensResultFromJson(Map<String, dynamic> json) {
  return _LensResult.fromJson(json);
}

/// @nodoc
mixin _$LensResult {
  String get title => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get thumbnailUrl => throw _privateConstructorUsedError;

  /// Serializes this LensResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LensResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LensResultCopyWith<LensResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LensResultCopyWith<$Res> {
  factory $LensResultCopyWith(
    LensResult value,
    $Res Function(LensResult) then,
  ) = _$LensResultCopyWithImpl<$Res, LensResult>;
  @useResult
  $Res call({
    String title,
    String source,
    String link,
    String imageUrl,
    String thumbnailUrl,
  });
}

/// @nodoc
class _$LensResultCopyWithImpl<$Res, $Val extends LensResult>
    implements $LensResultCopyWith<$Res> {
  _$LensResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LensResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? source = null,
    Object? link = null,
    Object? imageUrl = null,
    Object? thumbnailUrl = null,
  }) {
    return _then(
      _value.copyWith(
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            source:
                null == source
                    ? _value.source
                    : source // ignore: cast_nullable_to_non_nullable
                        as String,
            link:
                null == link
                    ? _value.link
                    : link // ignore: cast_nullable_to_non_nullable
                        as String,
            imageUrl:
                null == imageUrl
                    ? _value.imageUrl
                    : imageUrl // ignore: cast_nullable_to_non_nullable
                        as String,
            thumbnailUrl:
                null == thumbnailUrl
                    ? _value.thumbnailUrl
                    : thumbnailUrl // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LensResultImplCopyWith<$Res>
    implements $LensResultCopyWith<$Res> {
  factory _$$LensResultImplCopyWith(
    _$LensResultImpl value,
    $Res Function(_$LensResultImpl) then,
  ) = __$$LensResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String title,
    String source,
    String link,
    String imageUrl,
    String thumbnailUrl,
  });
}

/// @nodoc
class __$$LensResultImplCopyWithImpl<$Res>
    extends _$LensResultCopyWithImpl<$Res, _$LensResultImpl>
    implements _$$LensResultImplCopyWith<$Res> {
  __$$LensResultImplCopyWithImpl(
    _$LensResultImpl _value,
    $Res Function(_$LensResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LensResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? source = null,
    Object? link = null,
    Object? imageUrl = null,
    Object? thumbnailUrl = null,
  }) {
    return _then(
      _$LensResultImpl(
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        source:
            null == source
                ? _value.source
                : source // ignore: cast_nullable_to_non_nullable
                    as String,
        link:
            null == link
                ? _value.link
                : link // ignore: cast_nullable_to_non_nullable
                    as String,
        imageUrl:
            null == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                    as String,
        thumbnailUrl:
            null == thumbnailUrl
                ? _value.thumbnailUrl
                : thumbnailUrl // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LensResultImpl implements _LensResult {
  const _$LensResultImpl({
    required this.title,
    required this.source,
    required this.link,
    required this.imageUrl,
    required this.thumbnailUrl,
  });

  factory _$LensResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$LensResultImplFromJson(json);

  @override
  final String title;
  @override
  final String source;
  @override
  final String link;
  @override
  final String imageUrl;
  @override
  final String thumbnailUrl;

  @override
  String toString() {
    return 'LensResult(title: $title, source: $source, link: $link, imageUrl: $imageUrl, thumbnailUrl: $thumbnailUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LensResultImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, source, link, imageUrl, thumbnailUrl);

  /// Create a copy of LensResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LensResultImplCopyWith<_$LensResultImpl> get copyWith =>
      __$$LensResultImplCopyWithImpl<_$LensResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LensResultImplToJson(this);
  }
}

abstract class _LensResult implements LensResult {
  const factory _LensResult({
    required final String title,
    required final String source,
    required final String link,
    required final String imageUrl,
    required final String thumbnailUrl,
  }) = _$LensResultImpl;

  factory _LensResult.fromJson(Map<String, dynamic> json) =
      _$LensResultImpl.fromJson;

  @override
  String get title;
  @override
  String get source;
  @override
  String get link;
  @override
  String get imageUrl;
  @override
  String get thumbnailUrl;

  /// Create a copy of LensResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LensResultImplCopyWith<_$LensResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ScholarResult _$ScholarResultFromJson(Map<String, dynamic> json) {
  return _ScholarResult.fromJson(json);
}

/// @nodoc
mixin _$ScholarResult {
  String get title => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get publicationInfo => throw _privateConstructorUsedError;
  String get snippet => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  int get citedBy => throw _privateConstructorUsedError;
  String get pdfUrl => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  /// Serializes this ScholarResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScholarResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScholarResultCopyWith<ScholarResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScholarResultCopyWith<$Res> {
  factory $ScholarResultCopyWith(
    ScholarResult value,
    $Res Function(ScholarResult) then,
  ) = _$ScholarResultCopyWithImpl<$Res, ScholarResult>;
  @useResult
  $Res call({
    String title,
    String link,
    String publicationInfo,
    String snippet,
    int year,
    int citedBy,
    String pdfUrl,
    String id,
  });
}

/// @nodoc
class _$ScholarResultCopyWithImpl<$Res, $Val extends ScholarResult>
    implements $ScholarResultCopyWith<$Res> {
  _$ScholarResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScholarResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = null,
    Object? publicationInfo = null,
    Object? snippet = null,
    Object? year = null,
    Object? citedBy = null,
    Object? pdfUrl = null,
    Object? id = null,
  }) {
    return _then(
      _value.copyWith(
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            link:
                null == link
                    ? _value.link
                    : link // ignore: cast_nullable_to_non_nullable
                        as String,
            publicationInfo:
                null == publicationInfo
                    ? _value.publicationInfo
                    : publicationInfo // ignore: cast_nullable_to_non_nullable
                        as String,
            snippet:
                null == snippet
                    ? _value.snippet
                    : snippet // ignore: cast_nullable_to_non_nullable
                        as String,
            year:
                null == year
                    ? _value.year
                    : year // ignore: cast_nullable_to_non_nullable
                        as int,
            citedBy:
                null == citedBy
                    ? _value.citedBy
                    : citedBy // ignore: cast_nullable_to_non_nullable
                        as int,
            pdfUrl:
                null == pdfUrl
                    ? _value.pdfUrl
                    : pdfUrl // ignore: cast_nullable_to_non_nullable
                        as String,
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ScholarResultImplCopyWith<$Res>
    implements $ScholarResultCopyWith<$Res> {
  factory _$$ScholarResultImplCopyWith(
    _$ScholarResultImpl value,
    $Res Function(_$ScholarResultImpl) then,
  ) = __$$ScholarResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String title,
    String link,
    String publicationInfo,
    String snippet,
    int year,
    int citedBy,
    String pdfUrl,
    String id,
  });
}

/// @nodoc
class __$$ScholarResultImplCopyWithImpl<$Res>
    extends _$ScholarResultCopyWithImpl<$Res, _$ScholarResultImpl>
    implements _$$ScholarResultImplCopyWith<$Res> {
  __$$ScholarResultImplCopyWithImpl(
    _$ScholarResultImpl _value,
    $Res Function(_$ScholarResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ScholarResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = null,
    Object? publicationInfo = null,
    Object? snippet = null,
    Object? year = null,
    Object? citedBy = null,
    Object? pdfUrl = null,
    Object? id = null,
  }) {
    return _then(
      _$ScholarResultImpl(
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        link:
            null == link
                ? _value.link
                : link // ignore: cast_nullable_to_non_nullable
                    as String,
        publicationInfo:
            null == publicationInfo
                ? _value.publicationInfo
                : publicationInfo // ignore: cast_nullable_to_non_nullable
                    as String,
        snippet:
            null == snippet
                ? _value.snippet
                : snippet // ignore: cast_nullable_to_non_nullable
                    as String,
        year:
            null == year
                ? _value.year
                : year // ignore: cast_nullable_to_non_nullable
                    as int,
        citedBy:
            null == citedBy
                ? _value.citedBy
                : citedBy // ignore: cast_nullable_to_non_nullable
                    as int,
        pdfUrl:
            null == pdfUrl
                ? _value.pdfUrl
                : pdfUrl // ignore: cast_nullable_to_non_nullable
                    as String,
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ScholarResultImpl implements _ScholarResult {
  const _$ScholarResultImpl({
    required this.title,
    required this.link,
    required this.publicationInfo,
    required this.snippet,
    required this.year,
    required this.citedBy,
    required this.pdfUrl,
    required this.id,
  });

  factory _$ScholarResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScholarResultImplFromJson(json);

  @override
  final String title;
  @override
  final String link;
  @override
  final String publicationInfo;
  @override
  final String snippet;
  @override
  final int year;
  @override
  final int citedBy;
  @override
  final String pdfUrl;
  @override
  final String id;

  @override
  String toString() {
    return 'ScholarResult(title: $title, link: $link, publicationInfo: $publicationInfo, snippet: $snippet, year: $year, citedBy: $citedBy, pdfUrl: $pdfUrl, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScholarResultImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.publicationInfo, publicationInfo) ||
                other.publicationInfo == publicationInfo) &&
            (identical(other.snippet, snippet) || other.snippet == snippet) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.citedBy, citedBy) || other.citedBy == citedBy) &&
            (identical(other.pdfUrl, pdfUrl) || other.pdfUrl == pdfUrl) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    title,
    link,
    publicationInfo,
    snippet,
    year,
    citedBy,
    pdfUrl,
    id,
  );

  /// Create a copy of ScholarResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScholarResultImplCopyWith<_$ScholarResultImpl> get copyWith =>
      __$$ScholarResultImplCopyWithImpl<_$ScholarResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScholarResultImplToJson(this);
  }
}

abstract class _ScholarResult implements ScholarResult {
  const factory _ScholarResult({
    required final String title,
    required final String link,
    required final String publicationInfo,
    required final String snippet,
    required final int year,
    required final int citedBy,
    required final String pdfUrl,
    required final String id,
  }) = _$ScholarResultImpl;

  factory _ScholarResult.fromJson(Map<String, dynamic> json) =
      _$ScholarResultImpl.fromJson;

  @override
  String get title;
  @override
  String get link;
  @override
  String get publicationInfo;
  @override
  String get snippet;
  @override
  int get year;
  @override
  int get citedBy;
  @override
  String get pdfUrl;
  @override
  String get id;

  /// Create a copy of ScholarResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScholarResultImplCopyWith<_$ScholarResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PatentResult _$PatentResultFromJson(Map<String, dynamic> json) {
  return _PatentResult.fromJson(json);
}

/// @nodoc
mixin _$PatentResult {
  String get title => throw _privateConstructorUsedError;
  String get snippet => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get priorityDate => throw _privateConstructorUsedError;
  String get filingDate => throw _privateConstructorUsedError;
  String? get grantDate => throw _privateConstructorUsedError;
  String get publicationDate => throw _privateConstructorUsedError;
  String get inventor => throw _privateConstructorUsedError;
  String get assignee => throw _privateConstructorUsedError;
  String get publicationNumber => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get thumbnailUrl => throw _privateConstructorUsedError;
  String? get pdfUrl => throw _privateConstructorUsedError;
  List<PatentFigure>? get figures => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;

  /// Serializes this PatentResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PatentResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PatentResultCopyWith<PatentResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatentResultCopyWith<$Res> {
  factory $PatentResultCopyWith(
    PatentResult value,
    $Res Function(PatentResult) then,
  ) = _$PatentResultCopyWithImpl<$Res, PatentResult>;
  @useResult
  $Res call({
    String title,
    String snippet,
    String link,
    String priorityDate,
    String filingDate,
    String? grantDate,
    String publicationDate,
    String inventor,
    String assignee,
    String publicationNumber,
    String language,
    String thumbnailUrl,
    String? pdfUrl,
    List<PatentFigure>? figures,
    int position,
  });
}

/// @nodoc
class _$PatentResultCopyWithImpl<$Res, $Val extends PatentResult>
    implements $PatentResultCopyWith<$Res> {
  _$PatentResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PatentResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? snippet = null,
    Object? link = null,
    Object? priorityDate = null,
    Object? filingDate = null,
    Object? grantDate = freezed,
    Object? publicationDate = null,
    Object? inventor = null,
    Object? assignee = null,
    Object? publicationNumber = null,
    Object? language = null,
    Object? thumbnailUrl = null,
    Object? pdfUrl = freezed,
    Object? figures = freezed,
    Object? position = null,
  }) {
    return _then(
      _value.copyWith(
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            snippet:
                null == snippet
                    ? _value.snippet
                    : snippet // ignore: cast_nullable_to_non_nullable
                        as String,
            link:
                null == link
                    ? _value.link
                    : link // ignore: cast_nullable_to_non_nullable
                        as String,
            priorityDate:
                null == priorityDate
                    ? _value.priorityDate
                    : priorityDate // ignore: cast_nullable_to_non_nullable
                        as String,
            filingDate:
                null == filingDate
                    ? _value.filingDate
                    : filingDate // ignore: cast_nullable_to_non_nullable
                        as String,
            grantDate:
                freezed == grantDate
                    ? _value.grantDate
                    : grantDate // ignore: cast_nullable_to_non_nullable
                        as String?,
            publicationDate:
                null == publicationDate
                    ? _value.publicationDate
                    : publicationDate // ignore: cast_nullable_to_non_nullable
                        as String,
            inventor:
                null == inventor
                    ? _value.inventor
                    : inventor // ignore: cast_nullable_to_non_nullable
                        as String,
            assignee:
                null == assignee
                    ? _value.assignee
                    : assignee // ignore: cast_nullable_to_non_nullable
                        as String,
            publicationNumber:
                null == publicationNumber
                    ? _value.publicationNumber
                    : publicationNumber // ignore: cast_nullable_to_non_nullable
                        as String,
            language:
                null == language
                    ? _value.language
                    : language // ignore: cast_nullable_to_non_nullable
                        as String,
            thumbnailUrl:
                null == thumbnailUrl
                    ? _value.thumbnailUrl
                    : thumbnailUrl // ignore: cast_nullable_to_non_nullable
                        as String,
            pdfUrl:
                freezed == pdfUrl
                    ? _value.pdfUrl
                    : pdfUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            figures:
                freezed == figures
                    ? _value.figures
                    : figures // ignore: cast_nullable_to_non_nullable
                        as List<PatentFigure>?,
            position:
                null == position
                    ? _value.position
                    : position // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PatentResultImplCopyWith<$Res>
    implements $PatentResultCopyWith<$Res> {
  factory _$$PatentResultImplCopyWith(
    _$PatentResultImpl value,
    $Res Function(_$PatentResultImpl) then,
  ) = __$$PatentResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String title,
    String snippet,
    String link,
    String priorityDate,
    String filingDate,
    String? grantDate,
    String publicationDate,
    String inventor,
    String assignee,
    String publicationNumber,
    String language,
    String thumbnailUrl,
    String? pdfUrl,
    List<PatentFigure>? figures,
    int position,
  });
}

/// @nodoc
class __$$PatentResultImplCopyWithImpl<$Res>
    extends _$PatentResultCopyWithImpl<$Res, _$PatentResultImpl>
    implements _$$PatentResultImplCopyWith<$Res> {
  __$$PatentResultImplCopyWithImpl(
    _$PatentResultImpl _value,
    $Res Function(_$PatentResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PatentResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? snippet = null,
    Object? link = null,
    Object? priorityDate = null,
    Object? filingDate = null,
    Object? grantDate = freezed,
    Object? publicationDate = null,
    Object? inventor = null,
    Object? assignee = null,
    Object? publicationNumber = null,
    Object? language = null,
    Object? thumbnailUrl = null,
    Object? pdfUrl = freezed,
    Object? figures = freezed,
    Object? position = null,
  }) {
    return _then(
      _$PatentResultImpl(
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        snippet:
            null == snippet
                ? _value.snippet
                : snippet // ignore: cast_nullable_to_non_nullable
                    as String,
        link:
            null == link
                ? _value.link
                : link // ignore: cast_nullable_to_non_nullable
                    as String,
        priorityDate:
            null == priorityDate
                ? _value.priorityDate
                : priorityDate // ignore: cast_nullable_to_non_nullable
                    as String,
        filingDate:
            null == filingDate
                ? _value.filingDate
                : filingDate // ignore: cast_nullable_to_non_nullable
                    as String,
        grantDate:
            freezed == grantDate
                ? _value.grantDate
                : grantDate // ignore: cast_nullable_to_non_nullable
                    as String?,
        publicationDate:
            null == publicationDate
                ? _value.publicationDate
                : publicationDate // ignore: cast_nullable_to_non_nullable
                    as String,
        inventor:
            null == inventor
                ? _value.inventor
                : inventor // ignore: cast_nullable_to_non_nullable
                    as String,
        assignee:
            null == assignee
                ? _value.assignee
                : assignee // ignore: cast_nullable_to_non_nullable
                    as String,
        publicationNumber:
            null == publicationNumber
                ? _value.publicationNumber
                : publicationNumber // ignore: cast_nullable_to_non_nullable
                    as String,
        language:
            null == language
                ? _value.language
                : language // ignore: cast_nullable_to_non_nullable
                    as String,
        thumbnailUrl:
            null == thumbnailUrl
                ? _value.thumbnailUrl
                : thumbnailUrl // ignore: cast_nullable_to_non_nullable
                    as String,
        pdfUrl:
            freezed == pdfUrl
                ? _value.pdfUrl
                : pdfUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        figures:
            freezed == figures
                ? _value._figures
                : figures // ignore: cast_nullable_to_non_nullable
                    as List<PatentFigure>?,
        position:
            null == position
                ? _value.position
                : position // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PatentResultImpl implements _PatentResult {
  const _$PatentResultImpl({
    required this.title,
    required this.snippet,
    required this.link,
    required this.priorityDate,
    required this.filingDate,
    this.grantDate,
    required this.publicationDate,
    required this.inventor,
    required this.assignee,
    required this.publicationNumber,
    required this.language,
    required this.thumbnailUrl,
    this.pdfUrl,
    final List<PatentFigure>? figures,
    required this.position,
  }) : _figures = figures;

  factory _$PatentResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatentResultImplFromJson(json);

  @override
  final String title;
  @override
  final String snippet;
  @override
  final String link;
  @override
  final String priorityDate;
  @override
  final String filingDate;
  @override
  final String? grantDate;
  @override
  final String publicationDate;
  @override
  final String inventor;
  @override
  final String assignee;
  @override
  final String publicationNumber;
  @override
  final String language;
  @override
  final String thumbnailUrl;
  @override
  final String? pdfUrl;
  final List<PatentFigure>? _figures;
  @override
  List<PatentFigure>? get figures {
    final value = _figures;
    if (value == null) return null;
    if (_figures is EqualUnmodifiableListView) return _figures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int position;

  @override
  String toString() {
    return 'PatentResult(title: $title, snippet: $snippet, link: $link, priorityDate: $priorityDate, filingDate: $filingDate, grantDate: $grantDate, publicationDate: $publicationDate, inventor: $inventor, assignee: $assignee, publicationNumber: $publicationNumber, language: $language, thumbnailUrl: $thumbnailUrl, pdfUrl: $pdfUrl, figures: $figures, position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatentResultImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.snippet, snippet) || other.snippet == snippet) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.priorityDate, priorityDate) ||
                other.priorityDate == priorityDate) &&
            (identical(other.filingDate, filingDate) ||
                other.filingDate == filingDate) &&
            (identical(other.grantDate, grantDate) ||
                other.grantDate == grantDate) &&
            (identical(other.publicationDate, publicationDate) ||
                other.publicationDate == publicationDate) &&
            (identical(other.inventor, inventor) ||
                other.inventor == inventor) &&
            (identical(other.assignee, assignee) ||
                other.assignee == assignee) &&
            (identical(other.publicationNumber, publicationNumber) ||
                other.publicationNumber == publicationNumber) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.pdfUrl, pdfUrl) || other.pdfUrl == pdfUrl) &&
            const DeepCollectionEquality().equals(other._figures, _figures) &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    title,
    snippet,
    link,
    priorityDate,
    filingDate,
    grantDate,
    publicationDate,
    inventor,
    assignee,
    publicationNumber,
    language,
    thumbnailUrl,
    pdfUrl,
    const DeepCollectionEquality().hash(_figures),
    position,
  );

  /// Create a copy of PatentResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PatentResultImplCopyWith<_$PatentResultImpl> get copyWith =>
      __$$PatentResultImplCopyWithImpl<_$PatentResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatentResultImplToJson(this);
  }
}

abstract class _PatentResult implements PatentResult {
  const factory _PatentResult({
    required final String title,
    required final String snippet,
    required final String link,
    required final String priorityDate,
    required final String filingDate,
    final String? grantDate,
    required final String publicationDate,
    required final String inventor,
    required final String assignee,
    required final String publicationNumber,
    required final String language,
    required final String thumbnailUrl,
    final String? pdfUrl,
    final List<PatentFigure>? figures,
    required final int position,
  }) = _$PatentResultImpl;

  factory _PatentResult.fromJson(Map<String, dynamic> json) =
      _$PatentResultImpl.fromJson;

  @override
  String get title;
  @override
  String get snippet;
  @override
  String get link;
  @override
  String get priorityDate;
  @override
  String get filingDate;
  @override
  String? get grantDate;
  @override
  String get publicationDate;
  @override
  String get inventor;
  @override
  String get assignee;
  @override
  String get publicationNumber;
  @override
  String get language;
  @override
  String get thumbnailUrl;
  @override
  String? get pdfUrl;
  @override
  List<PatentFigure>? get figures;
  @override
  int get position;

  /// Create a copy of PatentResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PatentResultImplCopyWith<_$PatentResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PatentFigure _$PatentFigureFromJson(Map<String, dynamic> json) {
  return _PatentFigure.fromJson(json);
}

/// @nodoc
mixin _$PatentFigure {
  String get imageUrl => throw _privateConstructorUsedError;
  String get thumbnailUrl => throw _privateConstructorUsedError;

  /// Serializes this PatentFigure to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PatentFigure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PatentFigureCopyWith<PatentFigure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatentFigureCopyWith<$Res> {
  factory $PatentFigureCopyWith(
    PatentFigure value,
    $Res Function(PatentFigure) then,
  ) = _$PatentFigureCopyWithImpl<$Res, PatentFigure>;
  @useResult
  $Res call({String imageUrl, String thumbnailUrl});
}

/// @nodoc
class _$PatentFigureCopyWithImpl<$Res, $Val extends PatentFigure>
    implements $PatentFigureCopyWith<$Res> {
  _$PatentFigureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PatentFigure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? imageUrl = null, Object? thumbnailUrl = null}) {
    return _then(
      _value.copyWith(
            imageUrl:
                null == imageUrl
                    ? _value.imageUrl
                    : imageUrl // ignore: cast_nullable_to_non_nullable
                        as String,
            thumbnailUrl:
                null == thumbnailUrl
                    ? _value.thumbnailUrl
                    : thumbnailUrl // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PatentFigureImplCopyWith<$Res>
    implements $PatentFigureCopyWith<$Res> {
  factory _$$PatentFigureImplCopyWith(
    _$PatentFigureImpl value,
    $Res Function(_$PatentFigureImpl) then,
  ) = __$$PatentFigureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String imageUrl, String thumbnailUrl});
}

/// @nodoc
class __$$PatentFigureImplCopyWithImpl<$Res>
    extends _$PatentFigureCopyWithImpl<$Res, _$PatentFigureImpl>
    implements _$$PatentFigureImplCopyWith<$Res> {
  __$$PatentFigureImplCopyWithImpl(
    _$PatentFigureImpl _value,
    $Res Function(_$PatentFigureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PatentFigure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? imageUrl = null, Object? thumbnailUrl = null}) {
    return _then(
      _$PatentFigureImpl(
        imageUrl:
            null == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                    as String,
        thumbnailUrl:
            null == thumbnailUrl
                ? _value.thumbnailUrl
                : thumbnailUrl // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PatentFigureImpl implements _PatentFigure {
  const _$PatentFigureImpl({
    required this.imageUrl,
    required this.thumbnailUrl,
  });

  factory _$PatentFigureImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatentFigureImplFromJson(json);

  @override
  final String imageUrl;
  @override
  final String thumbnailUrl;

  @override
  String toString() {
    return 'PatentFigure(imageUrl: $imageUrl, thumbnailUrl: $thumbnailUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatentFigureImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl, thumbnailUrl);

  /// Create a copy of PatentFigure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PatentFigureImplCopyWith<_$PatentFigureImpl> get copyWith =>
      __$$PatentFigureImplCopyWithImpl<_$PatentFigureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatentFigureImplToJson(this);
  }
}

abstract class _PatentFigure implements PatentFigure {
  const factory _PatentFigure({
    required final String imageUrl,
    required final String thumbnailUrl,
  }) = _$PatentFigureImpl;

  factory _PatentFigure.fromJson(Map<String, dynamic> json) =
      _$PatentFigureImpl.fromJson;

  @override
  String get imageUrl;
  @override
  String get thumbnailUrl;

  /// Create a copy of PatentFigure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PatentFigureImplCopyWith<_$PatentFigureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WebpageResult _$WebpageResultFromJson(Map<String, dynamic> json) {
  return _WebpageResult.fromJson(json);
}

/// @nodoc
mixin _$WebpageResult {
  String get text => throw _privateConstructorUsedError;
  String? get markdown => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;
  int get credits => throw _privateConstructorUsedError;

  /// Serializes this WebpageResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebpageResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebpageResultCopyWith<WebpageResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebpageResultCopyWith<$Res> {
  factory $WebpageResultCopyWith(
    WebpageResult value,
    $Res Function(WebpageResult) then,
  ) = _$WebpageResultCopyWithImpl<$Res, WebpageResult>;
  @useResult
  $Res call({
    String text,
    String? markdown,
    Map<String, dynamic>? metadata,
    int credits,
  });
}

/// @nodoc
class _$WebpageResultCopyWithImpl<$Res, $Val extends WebpageResult>
    implements $WebpageResultCopyWith<$Res> {
  _$WebpageResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebpageResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? markdown = freezed,
    Object? metadata = freezed,
    Object? credits = null,
  }) {
    return _then(
      _value.copyWith(
            text:
                null == text
                    ? _value.text
                    : text // ignore: cast_nullable_to_non_nullable
                        as String,
            markdown:
                freezed == markdown
                    ? _value.markdown
                    : markdown // ignore: cast_nullable_to_non_nullable
                        as String?,
            metadata:
                freezed == metadata
                    ? _value.metadata
                    : metadata // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>?,
            credits:
                null == credits
                    ? _value.credits
                    : credits // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WebpageResultImplCopyWith<$Res>
    implements $WebpageResultCopyWith<$Res> {
  factory _$$WebpageResultImplCopyWith(
    _$WebpageResultImpl value,
    $Res Function(_$WebpageResultImpl) then,
  ) = __$$WebpageResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String text,
    String? markdown,
    Map<String, dynamic>? metadata,
    int credits,
  });
}

/// @nodoc
class __$$WebpageResultImplCopyWithImpl<$Res>
    extends _$WebpageResultCopyWithImpl<$Res, _$WebpageResultImpl>
    implements _$$WebpageResultImplCopyWith<$Res> {
  __$$WebpageResultImplCopyWithImpl(
    _$WebpageResultImpl _value,
    $Res Function(_$WebpageResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WebpageResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? markdown = freezed,
    Object? metadata = freezed,
    Object? credits = null,
  }) {
    return _then(
      _$WebpageResultImpl(
        text:
            null == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                    as String,
        markdown:
            freezed == markdown
                ? _value.markdown
                : markdown // ignore: cast_nullable_to_non_nullable
                    as String?,
        metadata:
            freezed == metadata
                ? _value._metadata
                : metadata // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>?,
        credits:
            null == credits
                ? _value.credits
                : credits // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WebpageResultImpl implements _WebpageResult {
  const _$WebpageResultImpl({
    required this.text,
    this.markdown,
    final Map<String, dynamic>? metadata,
    required this.credits,
  }) : _metadata = metadata;

  factory _$WebpageResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebpageResultImplFromJson(json);

  @override
  final String text;
  @override
  final String? markdown;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final int credits;

  @override
  String toString() {
    return 'WebpageResult(text: $text, markdown: $markdown, metadata: $metadata, credits: $credits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebpageResultImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.markdown, markdown) ||
                other.markdown == markdown) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.credits, credits) || other.credits == credits));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    text,
    markdown,
    const DeepCollectionEquality().hash(_metadata),
    credits,
  );

  /// Create a copy of WebpageResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebpageResultImplCopyWith<_$WebpageResultImpl> get copyWith =>
      __$$WebpageResultImplCopyWithImpl<_$WebpageResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebpageResultImplToJson(this);
  }
}

abstract class _WebpageResult implements WebpageResult {
  const factory _WebpageResult({
    required final String text,
    final String? markdown,
    final Map<String, dynamic>? metadata,
    required final int credits,
  }) = _$WebpageResultImpl;

  factory _WebpageResult.fromJson(Map<String, dynamic> json) =
      _$WebpageResultImpl.fromJson;

  @override
  String get text;
  @override
  String? get markdown;
  @override
  Map<String, dynamic>? get metadata;
  @override
  int get credits;

  /// Create a copy of WebpageResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebpageResultImplCopyWith<_$WebpageResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
