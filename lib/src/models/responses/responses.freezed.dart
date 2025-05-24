// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'responses.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SearchResponse _$SearchResponseFromJson(Map<String, dynamic> json) {
  return _SearchResponse.fromJson(json);
}

/// @nodoc
mixin _$SearchResponse {
  SearchQuery get searchParameters => throw _privateConstructorUsedError;
  List<OrganicResult> get organic => throw _privateConstructorUsedError;
  List<RelatedSearchResult>? get relatedSearches =>
      throw _privateConstructorUsedError;
  List<PeopleAlsoAskResult>? get peopleAlsoAsk =>
      throw _privateConstructorUsedError;
  List<PlacesResult>? get places => throw _privateConstructorUsedError;
  List<TopStoriesResult>? get topStories => throw _privateConstructorUsedError;
  List<TwitterResult>? get twitter => throw _privateConstructorUsedError;
  List<ImagesResult>? get images => throw _privateConstructorUsedError;
  KnowledgeGraphResult? get knowledgeGraph =>
      throw _privateConstructorUsedError;
  List<LocalResultsResult>? get localResults =>
      throw _privateConstructorUsedError;
  int get credits => throw _privateConstructorUsedError;

  /// Serializes this SearchResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchResponseCopyWith<SearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResponseCopyWith<$Res> {
  factory $SearchResponseCopyWith(
    SearchResponse value,
    $Res Function(SearchResponse) then,
  ) = _$SearchResponseCopyWithImpl<$Res, SearchResponse>;
  @useResult
  $Res call({
    SearchQuery searchParameters,
    List<OrganicResult> organic,
    List<RelatedSearchResult>? relatedSearches,
    List<PeopleAlsoAskResult>? peopleAlsoAsk,
    List<PlacesResult>? places,
    List<TopStoriesResult>? topStories,
    List<TwitterResult>? twitter,
    List<ImagesResult>? images,
    KnowledgeGraphResult? knowledgeGraph,
    List<LocalResultsResult>? localResults,
    int credits,
  });

  $SearchQueryCopyWith<$Res> get searchParameters;
  $KnowledgeGraphResultCopyWith<$Res>? get knowledgeGraph;
}

/// @nodoc
class _$SearchResponseCopyWithImpl<$Res, $Val extends SearchResponse>
    implements $SearchResponseCopyWith<$Res> {
  _$SearchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchParameters = null,
    Object? organic = null,
    Object? relatedSearches = freezed,
    Object? peopleAlsoAsk = freezed,
    Object? places = freezed,
    Object? topStories = freezed,
    Object? twitter = freezed,
    Object? images = freezed,
    Object? knowledgeGraph = freezed,
    Object? localResults = freezed,
    Object? credits = null,
  }) {
    return _then(
      _value.copyWith(
            searchParameters:
                null == searchParameters
                    ? _value.searchParameters
                    : searchParameters // ignore: cast_nullable_to_non_nullable
                        as SearchQuery,
            organic:
                null == organic
                    ? _value.organic
                    : organic // ignore: cast_nullable_to_non_nullable
                        as List<OrganicResult>,
            relatedSearches:
                freezed == relatedSearches
                    ? _value.relatedSearches
                    : relatedSearches // ignore: cast_nullable_to_non_nullable
                        as List<RelatedSearchResult>?,
            peopleAlsoAsk:
                freezed == peopleAlsoAsk
                    ? _value.peopleAlsoAsk
                    : peopleAlsoAsk // ignore: cast_nullable_to_non_nullable
                        as List<PeopleAlsoAskResult>?,
            places:
                freezed == places
                    ? _value.places
                    : places // ignore: cast_nullable_to_non_nullable
                        as List<PlacesResult>?,
            topStories:
                freezed == topStories
                    ? _value.topStories
                    : topStories // ignore: cast_nullable_to_non_nullable
                        as List<TopStoriesResult>?,
            twitter:
                freezed == twitter
                    ? _value.twitter
                    : twitter // ignore: cast_nullable_to_non_nullable
                        as List<TwitterResult>?,
            images:
                freezed == images
                    ? _value.images
                    : images // ignore: cast_nullable_to_non_nullable
                        as List<ImagesResult>?,
            knowledgeGraph:
                freezed == knowledgeGraph
                    ? _value.knowledgeGraph
                    : knowledgeGraph // ignore: cast_nullable_to_non_nullable
                        as KnowledgeGraphResult?,
            localResults:
                freezed == localResults
                    ? _value.localResults
                    : localResults // ignore: cast_nullable_to_non_nullable
                        as List<LocalResultsResult>?,
            credits:
                null == credits
                    ? _value.credits
                    : credits // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }

  /// Create a copy of SearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchQueryCopyWith<$Res> get searchParameters {
    return $SearchQueryCopyWith<$Res>(_value.searchParameters, (value) {
      return _then(_value.copyWith(searchParameters: value) as $Val);
    });
  }

  /// Create a copy of SearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KnowledgeGraphResultCopyWith<$Res>? get knowledgeGraph {
    if (_value.knowledgeGraph == null) {
      return null;
    }

    return $KnowledgeGraphResultCopyWith<$Res>(_value.knowledgeGraph!, (value) {
      return _then(_value.copyWith(knowledgeGraph: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchResponseImplCopyWith<$Res>
    implements $SearchResponseCopyWith<$Res> {
  factory _$$SearchResponseImplCopyWith(
    _$SearchResponseImpl value,
    $Res Function(_$SearchResponseImpl) then,
  ) = __$$SearchResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    SearchQuery searchParameters,
    List<OrganicResult> organic,
    List<RelatedSearchResult>? relatedSearches,
    List<PeopleAlsoAskResult>? peopleAlsoAsk,
    List<PlacesResult>? places,
    List<TopStoriesResult>? topStories,
    List<TwitterResult>? twitter,
    List<ImagesResult>? images,
    KnowledgeGraphResult? knowledgeGraph,
    List<LocalResultsResult>? localResults,
    int credits,
  });

  @override
  $SearchQueryCopyWith<$Res> get searchParameters;
  @override
  $KnowledgeGraphResultCopyWith<$Res>? get knowledgeGraph;
}

/// @nodoc
class __$$SearchResponseImplCopyWithImpl<$Res>
    extends _$SearchResponseCopyWithImpl<$Res, _$SearchResponseImpl>
    implements _$$SearchResponseImplCopyWith<$Res> {
  __$$SearchResponseImplCopyWithImpl(
    _$SearchResponseImpl _value,
    $Res Function(_$SearchResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchParameters = null,
    Object? organic = null,
    Object? relatedSearches = freezed,
    Object? peopleAlsoAsk = freezed,
    Object? places = freezed,
    Object? topStories = freezed,
    Object? twitter = freezed,
    Object? images = freezed,
    Object? knowledgeGraph = freezed,
    Object? localResults = freezed,
    Object? credits = null,
  }) {
    return _then(
      _$SearchResponseImpl(
        searchParameters:
            null == searchParameters
                ? _value.searchParameters
                : searchParameters // ignore: cast_nullable_to_non_nullable
                    as SearchQuery,
        organic:
            null == organic
                ? _value._organic
                : organic // ignore: cast_nullable_to_non_nullable
                    as List<OrganicResult>,
        relatedSearches:
            freezed == relatedSearches
                ? _value._relatedSearches
                : relatedSearches // ignore: cast_nullable_to_non_nullable
                    as List<RelatedSearchResult>?,
        peopleAlsoAsk:
            freezed == peopleAlsoAsk
                ? _value._peopleAlsoAsk
                : peopleAlsoAsk // ignore: cast_nullable_to_non_nullable
                    as List<PeopleAlsoAskResult>?,
        places:
            freezed == places
                ? _value._places
                : places // ignore: cast_nullable_to_non_nullable
                    as List<PlacesResult>?,
        topStories:
            freezed == topStories
                ? _value._topStories
                : topStories // ignore: cast_nullable_to_non_nullable
                    as List<TopStoriesResult>?,
        twitter:
            freezed == twitter
                ? _value._twitter
                : twitter // ignore: cast_nullable_to_non_nullable
                    as List<TwitterResult>?,
        images:
            freezed == images
                ? _value._images
                : images // ignore: cast_nullable_to_non_nullable
                    as List<ImagesResult>?,
        knowledgeGraph:
            freezed == knowledgeGraph
                ? _value.knowledgeGraph
                : knowledgeGraph // ignore: cast_nullable_to_non_nullable
                    as KnowledgeGraphResult?,
        localResults:
            freezed == localResults
                ? _value._localResults
                : localResults // ignore: cast_nullable_to_non_nullable
                    as List<LocalResultsResult>?,
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
class _$SearchResponseImpl implements _SearchResponse {
  const _$SearchResponseImpl({
    required this.searchParameters,
    required final List<OrganicResult> organic,
    final List<RelatedSearchResult>? relatedSearches,
    final List<PeopleAlsoAskResult>? peopleAlsoAsk,
    final List<PlacesResult>? places,
    final List<TopStoriesResult>? topStories,
    final List<TwitterResult>? twitter,
    final List<ImagesResult>? images,
    this.knowledgeGraph,
    final List<LocalResultsResult>? localResults,
    required this.credits,
  }) : _organic = organic,
       _relatedSearches = relatedSearches,
       _peopleAlsoAsk = peopleAlsoAsk,
       _places = places,
       _topStories = topStories,
       _twitter = twitter,
       _images = images,
       _localResults = localResults;

  factory _$SearchResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchResponseImplFromJson(json);

  @override
  final SearchQuery searchParameters;
  final List<OrganicResult> _organic;
  @override
  List<OrganicResult> get organic {
    if (_organic is EqualUnmodifiableListView) return _organic;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_organic);
  }

  final List<RelatedSearchResult>? _relatedSearches;
  @override
  List<RelatedSearchResult>? get relatedSearches {
    final value = _relatedSearches;
    if (value == null) return null;
    if (_relatedSearches is EqualUnmodifiableListView) return _relatedSearches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PeopleAlsoAskResult>? _peopleAlsoAsk;
  @override
  List<PeopleAlsoAskResult>? get peopleAlsoAsk {
    final value = _peopleAlsoAsk;
    if (value == null) return null;
    if (_peopleAlsoAsk is EqualUnmodifiableListView) return _peopleAlsoAsk;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PlacesResult>? _places;
  @override
  List<PlacesResult>? get places {
    final value = _places;
    if (value == null) return null;
    if (_places is EqualUnmodifiableListView) return _places;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TopStoriesResult>? _topStories;
  @override
  List<TopStoriesResult>? get topStories {
    final value = _topStories;
    if (value == null) return null;
    if (_topStories is EqualUnmodifiableListView) return _topStories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TwitterResult>? _twitter;
  @override
  List<TwitterResult>? get twitter {
    final value = _twitter;
    if (value == null) return null;
    if (_twitter is EqualUnmodifiableListView) return _twitter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ImagesResult>? _images;
  @override
  List<ImagesResult>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final KnowledgeGraphResult? knowledgeGraph;
  final List<LocalResultsResult>? _localResults;
  @override
  List<LocalResultsResult>? get localResults {
    final value = _localResults;
    if (value == null) return null;
    if (_localResults is EqualUnmodifiableListView) return _localResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int credits;

  @override
  String toString() {
    return 'SearchResponse(searchParameters: $searchParameters, organic: $organic, relatedSearches: $relatedSearches, peopleAlsoAsk: $peopleAlsoAsk, places: $places, topStories: $topStories, twitter: $twitter, images: $images, knowledgeGraph: $knowledgeGraph, localResults: $localResults, credits: $credits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResponseImpl &&
            (identical(other.searchParameters, searchParameters) ||
                other.searchParameters == searchParameters) &&
            const DeepCollectionEquality().equals(other._organic, _organic) &&
            const DeepCollectionEquality().equals(
              other._relatedSearches,
              _relatedSearches,
            ) &&
            const DeepCollectionEquality().equals(
              other._peopleAlsoAsk,
              _peopleAlsoAsk,
            ) &&
            const DeepCollectionEquality().equals(other._places, _places) &&
            const DeepCollectionEquality().equals(
              other._topStories,
              _topStories,
            ) &&
            const DeepCollectionEquality().equals(other._twitter, _twitter) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.knowledgeGraph, knowledgeGraph) ||
                other.knowledgeGraph == knowledgeGraph) &&
            const DeepCollectionEquality().equals(
              other._localResults,
              _localResults,
            ) &&
            (identical(other.credits, credits) || other.credits == credits));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    searchParameters,
    const DeepCollectionEquality().hash(_organic),
    const DeepCollectionEquality().hash(_relatedSearches),
    const DeepCollectionEquality().hash(_peopleAlsoAsk),
    const DeepCollectionEquality().hash(_places),
    const DeepCollectionEquality().hash(_topStories),
    const DeepCollectionEquality().hash(_twitter),
    const DeepCollectionEquality().hash(_images),
    knowledgeGraph,
    const DeepCollectionEquality().hash(_localResults),
    credits,
  );

  /// Create a copy of SearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResponseImplCopyWith<_$SearchResponseImpl> get copyWith =>
      __$$SearchResponseImplCopyWithImpl<_$SearchResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchResponseImplToJson(this);
  }
}

abstract class _SearchResponse implements SearchResponse {
  const factory _SearchResponse({
    required final SearchQuery searchParameters,
    required final List<OrganicResult> organic,
    final List<RelatedSearchResult>? relatedSearches,
    final List<PeopleAlsoAskResult>? peopleAlsoAsk,
    final List<PlacesResult>? places,
    final List<TopStoriesResult>? topStories,
    final List<TwitterResult>? twitter,
    final List<ImagesResult>? images,
    final KnowledgeGraphResult? knowledgeGraph,
    final List<LocalResultsResult>? localResults,
    required final int credits,
  }) = _$SearchResponseImpl;

  factory _SearchResponse.fromJson(Map<String, dynamic> json) =
      _$SearchResponseImpl.fromJson;

  @override
  SearchQuery get searchParameters;
  @override
  List<OrganicResult> get organic;
  @override
  List<RelatedSearchResult>? get relatedSearches;
  @override
  List<PeopleAlsoAskResult>? get peopleAlsoAsk;
  @override
  List<PlacesResult>? get places;
  @override
  List<TopStoriesResult>? get topStories;
  @override
  List<TwitterResult>? get twitter;
  @override
  List<ImagesResult>? get images;
  @override
  KnowledgeGraphResult? get knowledgeGraph;
  @override
  List<LocalResultsResult>? get localResults;
  @override
  int get credits;

  /// Create a copy of SearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchResponseImplCopyWith<_$SearchResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImagesResponse _$ImagesResponseFromJson(Map<String, dynamic> json) {
  return _ImagesResponse.fromJson(json);
}

/// @nodoc
mixin _$ImagesResponse {
  ImagesQuery get searchParameters => throw _privateConstructorUsedError;
  List<ImageResult> get images => throw _privateConstructorUsedError;
  KnowledgeGraphResult? get knowledgeGraph =>
      throw _privateConstructorUsedError;
  int get credits => throw _privateConstructorUsedError;

  /// Serializes this ImagesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImagesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImagesResponseCopyWith<ImagesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesResponseCopyWith<$Res> {
  factory $ImagesResponseCopyWith(
    ImagesResponse value,
    $Res Function(ImagesResponse) then,
  ) = _$ImagesResponseCopyWithImpl<$Res, ImagesResponse>;
  @useResult
  $Res call({
    ImagesQuery searchParameters,
    List<ImageResult> images,
    KnowledgeGraphResult? knowledgeGraph,
    int credits,
  });

  $ImagesQueryCopyWith<$Res> get searchParameters;
  $KnowledgeGraphResultCopyWith<$Res>? get knowledgeGraph;
}

/// @nodoc
class _$ImagesResponseCopyWithImpl<$Res, $Val extends ImagesResponse>
    implements $ImagesResponseCopyWith<$Res> {
  _$ImagesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImagesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchParameters = null,
    Object? images = null,
    Object? knowledgeGraph = freezed,
    Object? credits = null,
  }) {
    return _then(
      _value.copyWith(
            searchParameters:
                null == searchParameters
                    ? _value.searchParameters
                    : searchParameters // ignore: cast_nullable_to_non_nullable
                        as ImagesQuery,
            images:
                null == images
                    ? _value.images
                    : images // ignore: cast_nullable_to_non_nullable
                        as List<ImageResult>,
            knowledgeGraph:
                freezed == knowledgeGraph
                    ? _value.knowledgeGraph
                    : knowledgeGraph // ignore: cast_nullable_to_non_nullable
                        as KnowledgeGraphResult?,
            credits:
                null == credits
                    ? _value.credits
                    : credits // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }

  /// Create a copy of ImagesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImagesQueryCopyWith<$Res> get searchParameters {
    return $ImagesQueryCopyWith<$Res>(_value.searchParameters, (value) {
      return _then(_value.copyWith(searchParameters: value) as $Val);
    });
  }

  /// Create a copy of ImagesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KnowledgeGraphResultCopyWith<$Res>? get knowledgeGraph {
    if (_value.knowledgeGraph == null) {
      return null;
    }

    return $KnowledgeGraphResultCopyWith<$Res>(_value.knowledgeGraph!, (value) {
      return _then(_value.copyWith(knowledgeGraph: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ImagesResponseImplCopyWith<$Res>
    implements $ImagesResponseCopyWith<$Res> {
  factory _$$ImagesResponseImplCopyWith(
    _$ImagesResponseImpl value,
    $Res Function(_$ImagesResponseImpl) then,
  ) = __$$ImagesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    ImagesQuery searchParameters,
    List<ImageResult> images,
    KnowledgeGraphResult? knowledgeGraph,
    int credits,
  });

  @override
  $ImagesQueryCopyWith<$Res> get searchParameters;
  @override
  $KnowledgeGraphResultCopyWith<$Res>? get knowledgeGraph;
}

/// @nodoc
class __$$ImagesResponseImplCopyWithImpl<$Res>
    extends _$ImagesResponseCopyWithImpl<$Res, _$ImagesResponseImpl>
    implements _$$ImagesResponseImplCopyWith<$Res> {
  __$$ImagesResponseImplCopyWithImpl(
    _$ImagesResponseImpl _value,
    $Res Function(_$ImagesResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ImagesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchParameters = null,
    Object? images = null,
    Object? knowledgeGraph = freezed,
    Object? credits = null,
  }) {
    return _then(
      _$ImagesResponseImpl(
        searchParameters:
            null == searchParameters
                ? _value.searchParameters
                : searchParameters // ignore: cast_nullable_to_non_nullable
                    as ImagesQuery,
        images:
            null == images
                ? _value._images
                : images // ignore: cast_nullable_to_non_nullable
                    as List<ImageResult>,
        knowledgeGraph:
            freezed == knowledgeGraph
                ? _value.knowledgeGraph
                : knowledgeGraph // ignore: cast_nullable_to_non_nullable
                    as KnowledgeGraphResult?,
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
class _$ImagesResponseImpl implements _ImagesResponse {
  const _$ImagesResponseImpl({
    required this.searchParameters,
    required final List<ImageResult> images,
    this.knowledgeGraph,
    required this.credits,
  }) : _images = images;

  factory _$ImagesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImagesResponseImplFromJson(json);

  @override
  final ImagesQuery searchParameters;
  final List<ImageResult> _images;
  @override
  List<ImageResult> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final KnowledgeGraphResult? knowledgeGraph;
  @override
  final int credits;

  @override
  String toString() {
    return 'ImagesResponse(searchParameters: $searchParameters, images: $images, knowledgeGraph: $knowledgeGraph, credits: $credits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagesResponseImpl &&
            (identical(other.searchParameters, searchParameters) ||
                other.searchParameters == searchParameters) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.knowledgeGraph, knowledgeGraph) ||
                other.knowledgeGraph == knowledgeGraph) &&
            (identical(other.credits, credits) || other.credits == credits));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    searchParameters,
    const DeepCollectionEquality().hash(_images),
    knowledgeGraph,
    credits,
  );

  /// Create a copy of ImagesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImagesResponseImplCopyWith<_$ImagesResponseImpl> get copyWith =>
      __$$ImagesResponseImplCopyWithImpl<_$ImagesResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ImagesResponseImplToJson(this);
  }
}

abstract class _ImagesResponse implements ImagesResponse {
  const factory _ImagesResponse({
    required final ImagesQuery searchParameters,
    required final List<ImageResult> images,
    final KnowledgeGraphResult? knowledgeGraph,
    required final int credits,
  }) = _$ImagesResponseImpl;

  factory _ImagesResponse.fromJson(Map<String, dynamic> json) =
      _$ImagesResponseImpl.fromJson;

  @override
  ImagesQuery get searchParameters;
  @override
  List<ImageResult> get images;
  @override
  KnowledgeGraphResult? get knowledgeGraph;
  @override
  int get credits;

  /// Create a copy of ImagesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImagesResponseImplCopyWith<_$ImagesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlacesResponse _$PlacesResponseFromJson(Map<String, dynamic> json) {
  return _PlacesResponse.fromJson(json);
}

/// @nodoc
mixin _$PlacesResponse {
  PlacesQuery get searchParameters => throw _privateConstructorUsedError;
  List<PlaceResult> get places => throw _privateConstructorUsedError;
  KnowledgeGraphResult? get knowledgeGraph =>
      throw _privateConstructorUsedError;
  int get credits => throw _privateConstructorUsedError;

  /// Serializes this PlacesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlacesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlacesResponseCopyWith<PlacesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacesResponseCopyWith<$Res> {
  factory $PlacesResponseCopyWith(
    PlacesResponse value,
    $Res Function(PlacesResponse) then,
  ) = _$PlacesResponseCopyWithImpl<$Res, PlacesResponse>;
  @useResult
  $Res call({
    PlacesQuery searchParameters,
    List<PlaceResult> places,
    KnowledgeGraphResult? knowledgeGraph,
    int credits,
  });

  $PlacesQueryCopyWith<$Res> get searchParameters;
  $KnowledgeGraphResultCopyWith<$Res>? get knowledgeGraph;
}

/// @nodoc
class _$PlacesResponseCopyWithImpl<$Res, $Val extends PlacesResponse>
    implements $PlacesResponseCopyWith<$Res> {
  _$PlacesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlacesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchParameters = null,
    Object? places = null,
    Object? knowledgeGraph = freezed,
    Object? credits = null,
  }) {
    return _then(
      _value.copyWith(
            searchParameters:
                null == searchParameters
                    ? _value.searchParameters
                    : searchParameters // ignore: cast_nullable_to_non_nullable
                        as PlacesQuery,
            places:
                null == places
                    ? _value.places
                    : places // ignore: cast_nullable_to_non_nullable
                        as List<PlaceResult>,
            knowledgeGraph:
                freezed == knowledgeGraph
                    ? _value.knowledgeGraph
                    : knowledgeGraph // ignore: cast_nullable_to_non_nullable
                        as KnowledgeGraphResult?,
            credits:
                null == credits
                    ? _value.credits
                    : credits // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }

  /// Create a copy of PlacesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlacesQueryCopyWith<$Res> get searchParameters {
    return $PlacesQueryCopyWith<$Res>(_value.searchParameters, (value) {
      return _then(_value.copyWith(searchParameters: value) as $Val);
    });
  }

  /// Create a copy of PlacesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KnowledgeGraphResultCopyWith<$Res>? get knowledgeGraph {
    if (_value.knowledgeGraph == null) {
      return null;
    }

    return $KnowledgeGraphResultCopyWith<$Res>(_value.knowledgeGraph!, (value) {
      return _then(_value.copyWith(knowledgeGraph: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlacesResponseImplCopyWith<$Res>
    implements $PlacesResponseCopyWith<$Res> {
  factory _$$PlacesResponseImplCopyWith(
    _$PlacesResponseImpl value,
    $Res Function(_$PlacesResponseImpl) then,
  ) = __$$PlacesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    PlacesQuery searchParameters,
    List<PlaceResult> places,
    KnowledgeGraphResult? knowledgeGraph,
    int credits,
  });

  @override
  $PlacesQueryCopyWith<$Res> get searchParameters;
  @override
  $KnowledgeGraphResultCopyWith<$Res>? get knowledgeGraph;
}

/// @nodoc
class __$$PlacesResponseImplCopyWithImpl<$Res>
    extends _$PlacesResponseCopyWithImpl<$Res, _$PlacesResponseImpl>
    implements _$$PlacesResponseImplCopyWith<$Res> {
  __$$PlacesResponseImplCopyWithImpl(
    _$PlacesResponseImpl _value,
    $Res Function(_$PlacesResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlacesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchParameters = null,
    Object? places = null,
    Object? knowledgeGraph = freezed,
    Object? credits = null,
  }) {
    return _then(
      _$PlacesResponseImpl(
        searchParameters:
            null == searchParameters
                ? _value.searchParameters
                : searchParameters // ignore: cast_nullable_to_non_nullable
                    as PlacesQuery,
        places:
            null == places
                ? _value._places
                : places // ignore: cast_nullable_to_non_nullable
                    as List<PlaceResult>,
        knowledgeGraph:
            freezed == knowledgeGraph
                ? _value.knowledgeGraph
                : knowledgeGraph // ignore: cast_nullable_to_non_nullable
                    as KnowledgeGraphResult?,
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
class _$PlacesResponseImpl implements _PlacesResponse {
  const _$PlacesResponseImpl({
    required this.searchParameters,
    required final List<PlaceResult> places,
    this.knowledgeGraph,
    required this.credits,
  }) : _places = places;

  factory _$PlacesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlacesResponseImplFromJson(json);

  @override
  final PlacesQuery searchParameters;
  final List<PlaceResult> _places;
  @override
  List<PlaceResult> get places {
    if (_places is EqualUnmodifiableListView) return _places;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_places);
  }

  @override
  final KnowledgeGraphResult? knowledgeGraph;
  @override
  final int credits;

  @override
  String toString() {
    return 'PlacesResponse(searchParameters: $searchParameters, places: $places, knowledgeGraph: $knowledgeGraph, credits: $credits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlacesResponseImpl &&
            (identical(other.searchParameters, searchParameters) ||
                other.searchParameters == searchParameters) &&
            const DeepCollectionEquality().equals(other._places, _places) &&
            (identical(other.knowledgeGraph, knowledgeGraph) ||
                other.knowledgeGraph == knowledgeGraph) &&
            (identical(other.credits, credits) || other.credits == credits));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    searchParameters,
    const DeepCollectionEquality().hash(_places),
    knowledgeGraph,
    credits,
  );

  /// Create a copy of PlacesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlacesResponseImplCopyWith<_$PlacesResponseImpl> get copyWith =>
      __$$PlacesResponseImplCopyWithImpl<_$PlacesResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PlacesResponseImplToJson(this);
  }
}

abstract class _PlacesResponse implements PlacesResponse {
  const factory _PlacesResponse({
    required final PlacesQuery searchParameters,
    required final List<PlaceResult> places,
    final KnowledgeGraphResult? knowledgeGraph,
    required final int credits,
  }) = _$PlacesResponseImpl;

  factory _PlacesResponse.fromJson(Map<String, dynamic> json) =
      _$PlacesResponseImpl.fromJson;

  @override
  PlacesQuery get searchParameters;
  @override
  List<PlaceResult> get places;
  @override
  KnowledgeGraphResult? get knowledgeGraph;
  @override
  int get credits;

  /// Create a copy of PlacesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlacesResponseImplCopyWith<_$PlacesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VideosResponse _$VideosResponseFromJson(Map<String, dynamic> json) {
  return _VideosResponse.fromJson(json);
}

/// @nodoc
mixin _$VideosResponse {
  VideosQuery get searchParameters => throw _privateConstructorUsedError;
  List<VideoResult> get videos => throw _privateConstructorUsedError;
  KnowledgeGraphResult? get knowledgeGraph =>
      throw _privateConstructorUsedError;
  int get credits => throw _privateConstructorUsedError;

  /// Serializes this VideosResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VideosResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideosResponseCopyWith<VideosResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideosResponseCopyWith<$Res> {
  factory $VideosResponseCopyWith(
    VideosResponse value,
    $Res Function(VideosResponse) then,
  ) = _$VideosResponseCopyWithImpl<$Res, VideosResponse>;
  @useResult
  $Res call({
    VideosQuery searchParameters,
    List<VideoResult> videos,
    KnowledgeGraphResult? knowledgeGraph,
    int credits,
  });

  $VideosQueryCopyWith<$Res> get searchParameters;
  $KnowledgeGraphResultCopyWith<$Res>? get knowledgeGraph;
}

/// @nodoc
class _$VideosResponseCopyWithImpl<$Res, $Val extends VideosResponse>
    implements $VideosResponseCopyWith<$Res> {
  _$VideosResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideosResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchParameters = null,
    Object? videos = null,
    Object? knowledgeGraph = freezed,
    Object? credits = null,
  }) {
    return _then(
      _value.copyWith(
            searchParameters:
                null == searchParameters
                    ? _value.searchParameters
                    : searchParameters // ignore: cast_nullable_to_non_nullable
                        as VideosQuery,
            videos:
                null == videos
                    ? _value.videos
                    : videos // ignore: cast_nullable_to_non_nullable
                        as List<VideoResult>,
            knowledgeGraph:
                freezed == knowledgeGraph
                    ? _value.knowledgeGraph
                    : knowledgeGraph // ignore: cast_nullable_to_non_nullable
                        as KnowledgeGraphResult?,
            credits:
                null == credits
                    ? _value.credits
                    : credits // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }

  /// Create a copy of VideosResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VideosQueryCopyWith<$Res> get searchParameters {
    return $VideosQueryCopyWith<$Res>(_value.searchParameters, (value) {
      return _then(_value.copyWith(searchParameters: value) as $Val);
    });
  }

  /// Create a copy of VideosResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KnowledgeGraphResultCopyWith<$Res>? get knowledgeGraph {
    if (_value.knowledgeGraph == null) {
      return null;
    }

    return $KnowledgeGraphResultCopyWith<$Res>(_value.knowledgeGraph!, (value) {
      return _then(_value.copyWith(knowledgeGraph: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VideosResponseImplCopyWith<$Res>
    implements $VideosResponseCopyWith<$Res> {
  factory _$$VideosResponseImplCopyWith(
    _$VideosResponseImpl value,
    $Res Function(_$VideosResponseImpl) then,
  ) = __$$VideosResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    VideosQuery searchParameters,
    List<VideoResult> videos,
    KnowledgeGraphResult? knowledgeGraph,
    int credits,
  });

  @override
  $VideosQueryCopyWith<$Res> get searchParameters;
  @override
  $KnowledgeGraphResultCopyWith<$Res>? get knowledgeGraph;
}

/// @nodoc
class __$$VideosResponseImplCopyWithImpl<$Res>
    extends _$VideosResponseCopyWithImpl<$Res, _$VideosResponseImpl>
    implements _$$VideosResponseImplCopyWith<$Res> {
  __$$VideosResponseImplCopyWithImpl(
    _$VideosResponseImpl _value,
    $Res Function(_$VideosResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VideosResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchParameters = null,
    Object? videos = null,
    Object? knowledgeGraph = freezed,
    Object? credits = null,
  }) {
    return _then(
      _$VideosResponseImpl(
        searchParameters:
            null == searchParameters
                ? _value.searchParameters
                : searchParameters // ignore: cast_nullable_to_non_nullable
                    as VideosQuery,
        videos:
            null == videos
                ? _value._videos
                : videos // ignore: cast_nullable_to_non_nullable
                    as List<VideoResult>,
        knowledgeGraph:
            freezed == knowledgeGraph
                ? _value.knowledgeGraph
                : knowledgeGraph // ignore: cast_nullable_to_non_nullable
                    as KnowledgeGraphResult?,
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
class _$VideosResponseImpl implements _VideosResponse {
  const _$VideosResponseImpl({
    required this.searchParameters,
    required final List<VideoResult> videos,
    this.knowledgeGraph,
    required this.credits,
  }) : _videos = videos;

  factory _$VideosResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideosResponseImplFromJson(json);

  @override
  final VideosQuery searchParameters;
  final List<VideoResult> _videos;
  @override
  List<VideoResult> get videos {
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videos);
  }

  @override
  final KnowledgeGraphResult? knowledgeGraph;
  @override
  final int credits;

  @override
  String toString() {
    return 'VideosResponse(searchParameters: $searchParameters, videos: $videos, knowledgeGraph: $knowledgeGraph, credits: $credits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideosResponseImpl &&
            (identical(other.searchParameters, searchParameters) ||
                other.searchParameters == searchParameters) &&
            const DeepCollectionEquality().equals(other._videos, _videos) &&
            (identical(other.knowledgeGraph, knowledgeGraph) ||
                other.knowledgeGraph == knowledgeGraph) &&
            (identical(other.credits, credits) || other.credits == credits));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    searchParameters,
    const DeepCollectionEquality().hash(_videos),
    knowledgeGraph,
    credits,
  );

  /// Create a copy of VideosResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideosResponseImplCopyWith<_$VideosResponseImpl> get copyWith =>
      __$$VideosResponseImplCopyWithImpl<_$VideosResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$VideosResponseImplToJson(this);
  }
}

abstract class _VideosResponse implements VideosResponse {
  const factory _VideosResponse({
    required final VideosQuery searchParameters,
    required final List<VideoResult> videos,
    final KnowledgeGraphResult? knowledgeGraph,
    required final int credits,
  }) = _$VideosResponseImpl;

  factory _VideosResponse.fromJson(Map<String, dynamic> json) =
      _$VideosResponseImpl.fromJson;

  @override
  VideosQuery get searchParameters;
  @override
  List<VideoResult> get videos;
  @override
  KnowledgeGraphResult? get knowledgeGraph;
  @override
  int get credits;

  /// Create a copy of VideosResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideosResponseImplCopyWith<_$VideosResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MapsResponse _$MapsResponseFromJson(Map<String, dynamic> json) {
  return _MapsResponse.fromJson(json);
}

/// @nodoc
mixin _$MapsResponse {
  MapsQuery get searchParameters => throw _privateConstructorUsedError;
  MapResult get place => throw _privateConstructorUsedError;
  int get credits => throw _privateConstructorUsedError;

  /// Serializes this MapsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MapsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MapsResponseCopyWith<MapsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapsResponseCopyWith<$Res> {
  factory $MapsResponseCopyWith(
    MapsResponse value,
    $Res Function(MapsResponse) then,
  ) = _$MapsResponseCopyWithImpl<$Res, MapsResponse>;
  @useResult
  $Res call({MapsQuery searchParameters, MapResult place, int credits});

  $MapsQueryCopyWith<$Res> get searchParameters;
  $MapResultCopyWith<$Res> get place;
}

/// @nodoc
class _$MapsResponseCopyWithImpl<$Res, $Val extends MapsResponse>
    implements $MapsResponseCopyWith<$Res> {
  _$MapsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MapsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchParameters = null,
    Object? place = null,
    Object? credits = null,
  }) {
    return _then(
      _value.copyWith(
            searchParameters:
                null == searchParameters
                    ? _value.searchParameters
                    : searchParameters // ignore: cast_nullable_to_non_nullable
                        as MapsQuery,
            place:
                null == place
                    ? _value.place
                    : place // ignore: cast_nullable_to_non_nullable
                        as MapResult,
            credits:
                null == credits
                    ? _value.credits
                    : credits // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }

  /// Create a copy of MapsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MapsQueryCopyWith<$Res> get searchParameters {
    return $MapsQueryCopyWith<$Res>(_value.searchParameters, (value) {
      return _then(_value.copyWith(searchParameters: value) as $Val);
    });
  }

  /// Create a copy of MapsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MapResultCopyWith<$Res> get place {
    return $MapResultCopyWith<$Res>(_value.place, (value) {
      return _then(_value.copyWith(place: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MapsResponseImplCopyWith<$Res>
    implements $MapsResponseCopyWith<$Res> {
  factory _$$MapsResponseImplCopyWith(
    _$MapsResponseImpl value,
    $Res Function(_$MapsResponseImpl) then,
  ) = __$$MapsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MapsQuery searchParameters, MapResult place, int credits});

  @override
  $MapsQueryCopyWith<$Res> get searchParameters;
  @override
  $MapResultCopyWith<$Res> get place;
}

/// @nodoc
class __$$MapsResponseImplCopyWithImpl<$Res>
    extends _$MapsResponseCopyWithImpl<$Res, _$MapsResponseImpl>
    implements _$$MapsResponseImplCopyWith<$Res> {
  __$$MapsResponseImplCopyWithImpl(
    _$MapsResponseImpl _value,
    $Res Function(_$MapsResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MapsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchParameters = null,
    Object? place = null,
    Object? credits = null,
  }) {
    return _then(
      _$MapsResponseImpl(
        searchParameters:
            null == searchParameters
                ? _value.searchParameters
                : searchParameters // ignore: cast_nullable_to_non_nullable
                    as MapsQuery,
        place:
            null == place
                ? _value.place
                : place // ignore: cast_nullable_to_non_nullable
                    as MapResult,
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
class _$MapsResponseImpl implements _MapsResponse {
  const _$MapsResponseImpl({
    required this.searchParameters,
    required this.place,
    required this.credits,
  });

  factory _$MapsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MapsResponseImplFromJson(json);

  @override
  final MapsQuery searchParameters;
  @override
  final MapResult place;
  @override
  final int credits;

  @override
  String toString() {
    return 'MapsResponse(searchParameters: $searchParameters, place: $place, credits: $credits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapsResponseImpl &&
            (identical(other.searchParameters, searchParameters) ||
                other.searchParameters == searchParameters) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.credits, credits) || other.credits == credits));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, searchParameters, place, credits);

  /// Create a copy of MapsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MapsResponseImplCopyWith<_$MapsResponseImpl> get copyWith =>
      __$$MapsResponseImplCopyWithImpl<_$MapsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MapsResponseImplToJson(this);
  }
}

abstract class _MapsResponse implements MapsResponse {
  const factory _MapsResponse({
    required final MapsQuery searchParameters,
    required final MapResult place,
    required final int credits,
  }) = _$MapsResponseImpl;

  factory _MapsResponse.fromJson(Map<String, dynamic> json) =
      _$MapsResponseImpl.fromJson;

  @override
  MapsQuery get searchParameters;
  @override
  MapResult get place;
  @override
  int get credits;

  /// Create a copy of MapsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MapsResponseImplCopyWith<_$MapsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReviewsResponse _$ReviewsResponseFromJson(Map<String, dynamic> json) {
  return _ReviewsResponse.fromJson(json);
}

/// @nodoc
mixin _$ReviewsResponse {
  ReviewsQuery get searchParameters => throw _privateConstructorUsedError;
  List<PlaceReview> get reviews => throw _privateConstructorUsedError;
  String? get nextPageToken => throw _privateConstructorUsedError;
  int get credits => throw _privateConstructorUsedError;

  /// Serializes this ReviewsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReviewsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewsResponseCopyWith<ReviewsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewsResponseCopyWith<$Res> {
  factory $ReviewsResponseCopyWith(
    ReviewsResponse value,
    $Res Function(ReviewsResponse) then,
  ) = _$ReviewsResponseCopyWithImpl<$Res, ReviewsResponse>;
  @useResult
  $Res call({
    ReviewsQuery searchParameters,
    List<PlaceReview> reviews,
    String? nextPageToken,
    int credits,
  });

  $ReviewsQueryCopyWith<$Res> get searchParameters;
}

/// @nodoc
class _$ReviewsResponseCopyWithImpl<$Res, $Val extends ReviewsResponse>
    implements $ReviewsResponseCopyWith<$Res> {
  _$ReviewsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchParameters = null,
    Object? reviews = null,
    Object? nextPageToken = freezed,
    Object? credits = null,
  }) {
    return _then(
      _value.copyWith(
            searchParameters:
                null == searchParameters
                    ? _value.searchParameters
                    : searchParameters // ignore: cast_nullable_to_non_nullable
                        as ReviewsQuery,
            reviews:
                null == reviews
                    ? _value.reviews
                    : reviews // ignore: cast_nullable_to_non_nullable
                        as List<PlaceReview>,
            nextPageToken:
                freezed == nextPageToken
                    ? _value.nextPageToken
                    : nextPageToken // ignore: cast_nullable_to_non_nullable
                        as String?,
            credits:
                null == credits
                    ? _value.credits
                    : credits // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }

  /// Create a copy of ReviewsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReviewsQueryCopyWith<$Res> get searchParameters {
    return $ReviewsQueryCopyWith<$Res>(_value.searchParameters, (value) {
      return _then(_value.copyWith(searchParameters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReviewsResponseImplCopyWith<$Res>
    implements $ReviewsResponseCopyWith<$Res> {
  factory _$$ReviewsResponseImplCopyWith(
    _$ReviewsResponseImpl value,
    $Res Function(_$ReviewsResponseImpl) then,
  ) = __$$ReviewsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    ReviewsQuery searchParameters,
    List<PlaceReview> reviews,
    String? nextPageToken,
    int credits,
  });

  @override
  $ReviewsQueryCopyWith<$Res> get searchParameters;
}

/// @nodoc
class __$$ReviewsResponseImplCopyWithImpl<$Res>
    extends _$ReviewsResponseCopyWithImpl<$Res, _$ReviewsResponseImpl>
    implements _$$ReviewsResponseImplCopyWith<$Res> {
  __$$ReviewsResponseImplCopyWithImpl(
    _$ReviewsResponseImpl _value,
    $Res Function(_$ReviewsResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchParameters = null,
    Object? reviews = null,
    Object? nextPageToken = freezed,
    Object? credits = null,
  }) {
    return _then(
      _$ReviewsResponseImpl(
        searchParameters:
            null == searchParameters
                ? _value.searchParameters
                : searchParameters // ignore: cast_nullable_to_non_nullable
                    as ReviewsQuery,
        reviews:
            null == reviews
                ? _value._reviews
                : reviews // ignore: cast_nullable_to_non_nullable
                    as List<PlaceReview>,
        nextPageToken:
            freezed == nextPageToken
                ? _value.nextPageToken
                : nextPageToken // ignore: cast_nullable_to_non_nullable
                    as String?,
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
class _$ReviewsResponseImpl implements _ReviewsResponse {
  const _$ReviewsResponseImpl({
    required this.searchParameters,
    required final List<PlaceReview> reviews,
    this.nextPageToken,
    required this.credits,
  }) : _reviews = reviews;

  factory _$ReviewsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewsResponseImplFromJson(json);

  @override
  final ReviewsQuery searchParameters;
  final List<PlaceReview> _reviews;
  @override
  List<PlaceReview> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  final String? nextPageToken;
  @override
  final int credits;

  @override
  String toString() {
    return 'ReviewsResponse(searchParameters: $searchParameters, reviews: $reviews, nextPageToken: $nextPageToken, credits: $credits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewsResponseImpl &&
            (identical(other.searchParameters, searchParameters) ||
                other.searchParameters == searchParameters) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            (identical(other.nextPageToken, nextPageToken) ||
                other.nextPageToken == nextPageToken) &&
            (identical(other.credits, credits) || other.credits == credits));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    searchParameters,
    const DeepCollectionEquality().hash(_reviews),
    nextPageToken,
    credits,
  );

  /// Create a copy of ReviewsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewsResponseImplCopyWith<_$ReviewsResponseImpl> get copyWith =>
      __$$ReviewsResponseImplCopyWithImpl<_$ReviewsResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewsResponseImplToJson(this);
  }
}

abstract class _ReviewsResponse implements ReviewsResponse {
  const factory _ReviewsResponse({
    required final ReviewsQuery searchParameters,
    required final List<PlaceReview> reviews,
    final String? nextPageToken,
    required final int credits,
  }) = _$ReviewsResponseImpl;

  factory _ReviewsResponse.fromJson(Map<String, dynamic> json) =
      _$ReviewsResponseImpl.fromJson;

  @override
  ReviewsQuery get searchParameters;
  @override
  List<PlaceReview> get reviews;
  @override
  String? get nextPageToken;
  @override
  int get credits;

  /// Create a copy of ReviewsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewsResponseImplCopyWith<_$ReviewsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewsResponse _$NewsResponseFromJson(Map<String, dynamic> json) {
  return _NewsResponse.fromJson(json);
}

/// @nodoc
mixin _$NewsResponse {
  NewsQuery get searchParameters => throw _privateConstructorUsedError;
  List<NewsResult> get news => throw _privateConstructorUsedError;
  KnowledgeGraphResult? get knowledgeGraph =>
      throw _privateConstructorUsedError;
  int get credits => throw _privateConstructorUsedError;

  /// Serializes this NewsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsResponseCopyWith<NewsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsResponseCopyWith<$Res> {
  factory $NewsResponseCopyWith(
    NewsResponse value,
    $Res Function(NewsResponse) then,
  ) = _$NewsResponseCopyWithImpl<$Res, NewsResponse>;
  @useResult
  $Res call({
    NewsQuery searchParameters,
    List<NewsResult> news,
    KnowledgeGraphResult? knowledgeGraph,
    int credits,
  });

  $NewsQueryCopyWith<$Res> get searchParameters;
  $KnowledgeGraphResultCopyWith<$Res>? get knowledgeGraph;
}

/// @nodoc
class _$NewsResponseCopyWithImpl<$Res, $Val extends NewsResponse>
    implements $NewsResponseCopyWith<$Res> {
  _$NewsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchParameters = null,
    Object? news = null,
    Object? knowledgeGraph = freezed,
    Object? credits = null,
  }) {
    return _then(
      _value.copyWith(
            searchParameters:
                null == searchParameters
                    ? _value.searchParameters
                    : searchParameters // ignore: cast_nullable_to_non_nullable
                        as NewsQuery,
            news:
                null == news
                    ? _value.news
                    : news // ignore: cast_nullable_to_non_nullable
                        as List<NewsResult>,
            knowledgeGraph:
                freezed == knowledgeGraph
                    ? _value.knowledgeGraph
                    : knowledgeGraph // ignore: cast_nullable_to_non_nullable
                        as KnowledgeGraphResult?,
            credits:
                null == credits
                    ? _value.credits
                    : credits // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }

  /// Create a copy of NewsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NewsQueryCopyWith<$Res> get searchParameters {
    return $NewsQueryCopyWith<$Res>(_value.searchParameters, (value) {
      return _then(_value.copyWith(searchParameters: value) as $Val);
    });
  }

  /// Create a copy of NewsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KnowledgeGraphResultCopyWith<$Res>? get knowledgeGraph {
    if (_value.knowledgeGraph == null) {
      return null;
    }

    return $KnowledgeGraphResultCopyWith<$Res>(_value.knowledgeGraph!, (value) {
      return _then(_value.copyWith(knowledgeGraph: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NewsResponseImplCopyWith<$Res>
    implements $NewsResponseCopyWith<$Res> {
  factory _$$NewsResponseImplCopyWith(
    _$NewsResponseImpl value,
    $Res Function(_$NewsResponseImpl) then,
  ) = __$$NewsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    NewsQuery searchParameters,
    List<NewsResult> news,
    KnowledgeGraphResult? knowledgeGraph,
    int credits,
  });

  @override
  $NewsQueryCopyWith<$Res> get searchParameters;
  @override
  $KnowledgeGraphResultCopyWith<$Res>? get knowledgeGraph;
}

/// @nodoc
class __$$NewsResponseImplCopyWithImpl<$Res>
    extends _$NewsResponseCopyWithImpl<$Res, _$NewsResponseImpl>
    implements _$$NewsResponseImplCopyWith<$Res> {
  __$$NewsResponseImplCopyWithImpl(
    _$NewsResponseImpl _value,
    $Res Function(_$NewsResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NewsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchParameters = null,
    Object? news = null,
    Object? knowledgeGraph = freezed,
    Object? credits = null,
  }) {
    return _then(
      _$NewsResponseImpl(
        searchParameters:
            null == searchParameters
                ? _value.searchParameters
                : searchParameters // ignore: cast_nullable_to_non_nullable
                    as NewsQuery,
        news:
            null == news
                ? _value._news
                : news // ignore: cast_nullable_to_non_nullable
                    as List<NewsResult>,
        knowledgeGraph:
            freezed == knowledgeGraph
                ? _value.knowledgeGraph
                : knowledgeGraph // ignore: cast_nullable_to_non_nullable
                    as KnowledgeGraphResult?,
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
class _$NewsResponseImpl implements _NewsResponse {
  const _$NewsResponseImpl({
    required this.searchParameters,
    required final List<NewsResult> news,
    this.knowledgeGraph,
    required this.credits,
  }) : _news = news;

  factory _$NewsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsResponseImplFromJson(json);

  @override
  final NewsQuery searchParameters;
  final List<NewsResult> _news;
  @override
  List<NewsResult> get news {
    if (_news is EqualUnmodifiableListView) return _news;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_news);
  }

  @override
  final KnowledgeGraphResult? knowledgeGraph;
  @override
  final int credits;

  @override
  String toString() {
    return 'NewsResponse(searchParameters: $searchParameters, news: $news, knowledgeGraph: $knowledgeGraph, credits: $credits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsResponseImpl &&
            (identical(other.searchParameters, searchParameters) ||
                other.searchParameters == searchParameters) &&
            const DeepCollectionEquality().equals(other._news, _news) &&
            (identical(other.knowledgeGraph, knowledgeGraph) ||
                other.knowledgeGraph == knowledgeGraph) &&
            (identical(other.credits, credits) || other.credits == credits));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    searchParameters,
    const DeepCollectionEquality().hash(_news),
    knowledgeGraph,
    credits,
  );

  /// Create a copy of NewsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsResponseImplCopyWith<_$NewsResponseImpl> get copyWith =>
      __$$NewsResponseImplCopyWithImpl<_$NewsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsResponseImplToJson(this);
  }
}

abstract class _NewsResponse implements NewsResponse {
  const factory _NewsResponse({
    required final NewsQuery searchParameters,
    required final List<NewsResult> news,
    final KnowledgeGraphResult? knowledgeGraph,
    required final int credits,
  }) = _$NewsResponseImpl;

  factory _NewsResponse.fromJson(Map<String, dynamic> json) =
      _$NewsResponseImpl.fromJson;

  @override
  NewsQuery get searchParameters;
  @override
  List<NewsResult> get news;
  @override
  KnowledgeGraphResult? get knowledgeGraph;
  @override
  int get credits;

  /// Create a copy of NewsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsResponseImplCopyWith<_$NewsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShoppingResponse _$ShoppingResponseFromJson(Map<String, dynamic> json) {
  return _ShoppingResponse.fromJson(json);
}

/// @nodoc
mixin _$ShoppingResponse {
  ShoppingQuery get searchParameters => throw _privateConstructorUsedError;
  List<ShoppingResult> get shopping => throw _privateConstructorUsedError;
  KnowledgeGraphResult? get knowledgeGraph =>
      throw _privateConstructorUsedError;
  int get credits => throw _privateConstructorUsedError;

  /// Serializes this ShoppingResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShoppingResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShoppingResponseCopyWith<ShoppingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingResponseCopyWith<$Res> {
  factory $ShoppingResponseCopyWith(
    ShoppingResponse value,
    $Res Function(ShoppingResponse) then,
  ) = _$ShoppingResponseCopyWithImpl<$Res, ShoppingResponse>;
  @useResult
  $Res call({
    ShoppingQuery searchParameters,
    List<ShoppingResult> shopping,
    KnowledgeGraphResult? knowledgeGraph,
    int credits,
  });

  $ShoppingQueryCopyWith<$Res> get searchParameters;
  $KnowledgeGraphResultCopyWith<$Res>? get knowledgeGraph;
}

/// @nodoc
class _$ShoppingResponseCopyWithImpl<$Res, $Val extends ShoppingResponse>
    implements $ShoppingResponseCopyWith<$Res> {
  _$ShoppingResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShoppingResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchParameters = null,
    Object? shopping = null,
    Object? knowledgeGraph = freezed,
    Object? credits = null,
  }) {
    return _then(
      _value.copyWith(
            searchParameters:
                null == searchParameters
                    ? _value.searchParameters
                    : searchParameters // ignore: cast_nullable_to_non_nullable
                        as ShoppingQuery,
            shopping:
                null == shopping
                    ? _value.shopping
                    : shopping // ignore: cast_nullable_to_non_nullable
                        as List<ShoppingResult>,
            knowledgeGraph:
                freezed == knowledgeGraph
                    ? _value.knowledgeGraph
                    : knowledgeGraph // ignore: cast_nullable_to_non_nullable
                        as KnowledgeGraphResult?,
            credits:
                null == credits
                    ? _value.credits
                    : credits // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }

  /// Create a copy of ShoppingResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShoppingQueryCopyWith<$Res> get searchParameters {
    return $ShoppingQueryCopyWith<$Res>(_value.searchParameters, (value) {
      return _then(_value.copyWith(searchParameters: value) as $Val);
    });
  }

  /// Create a copy of ShoppingResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KnowledgeGraphResultCopyWith<$Res>? get knowledgeGraph {
    if (_value.knowledgeGraph == null) {
      return null;
    }

    return $KnowledgeGraphResultCopyWith<$Res>(_value.knowledgeGraph!, (value) {
      return _then(_value.copyWith(knowledgeGraph: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShoppingResponseImplCopyWith<$Res>
    implements $ShoppingResponseCopyWith<$Res> {
  factory _$$ShoppingResponseImplCopyWith(
    _$ShoppingResponseImpl value,
    $Res Function(_$ShoppingResponseImpl) then,
  ) = __$$ShoppingResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    ShoppingQuery searchParameters,
    List<ShoppingResult> shopping,
    KnowledgeGraphResult? knowledgeGraph,
    int credits,
  });

  @override
  $ShoppingQueryCopyWith<$Res> get searchParameters;
  @override
  $KnowledgeGraphResultCopyWith<$Res>? get knowledgeGraph;
}

/// @nodoc
class __$$ShoppingResponseImplCopyWithImpl<$Res>
    extends _$ShoppingResponseCopyWithImpl<$Res, _$ShoppingResponseImpl>
    implements _$$ShoppingResponseImplCopyWith<$Res> {
  __$$ShoppingResponseImplCopyWithImpl(
    _$ShoppingResponseImpl _value,
    $Res Function(_$ShoppingResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ShoppingResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchParameters = null,
    Object? shopping = null,
    Object? knowledgeGraph = freezed,
    Object? credits = null,
  }) {
    return _then(
      _$ShoppingResponseImpl(
        searchParameters:
            null == searchParameters
                ? _value.searchParameters
                : searchParameters // ignore: cast_nullable_to_non_nullable
                    as ShoppingQuery,
        shopping:
            null == shopping
                ? _value._shopping
                : shopping // ignore: cast_nullable_to_non_nullable
                    as List<ShoppingResult>,
        knowledgeGraph:
            freezed == knowledgeGraph
                ? _value.knowledgeGraph
                : knowledgeGraph // ignore: cast_nullable_to_non_nullable
                    as KnowledgeGraphResult?,
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
class _$ShoppingResponseImpl implements _ShoppingResponse {
  const _$ShoppingResponseImpl({
    required this.searchParameters,
    required final List<ShoppingResult> shopping,
    this.knowledgeGraph,
    required this.credits,
  }) : _shopping = shopping;

  factory _$ShoppingResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShoppingResponseImplFromJson(json);

  @override
  final ShoppingQuery searchParameters;
  final List<ShoppingResult> _shopping;
  @override
  List<ShoppingResult> get shopping {
    if (_shopping is EqualUnmodifiableListView) return _shopping;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shopping);
  }

  @override
  final KnowledgeGraphResult? knowledgeGraph;
  @override
  final int credits;

  @override
  String toString() {
    return 'ShoppingResponse(searchParameters: $searchParameters, shopping: $shopping, knowledgeGraph: $knowledgeGraph, credits: $credits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShoppingResponseImpl &&
            (identical(other.searchParameters, searchParameters) ||
                other.searchParameters == searchParameters) &&
            const DeepCollectionEquality().equals(other._shopping, _shopping) &&
            (identical(other.knowledgeGraph, knowledgeGraph) ||
                other.knowledgeGraph == knowledgeGraph) &&
            (identical(other.credits, credits) || other.credits == credits));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    searchParameters,
    const DeepCollectionEquality().hash(_shopping),
    knowledgeGraph,
    credits,
  );

  /// Create a copy of ShoppingResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShoppingResponseImplCopyWith<_$ShoppingResponseImpl> get copyWith =>
      __$$ShoppingResponseImplCopyWithImpl<_$ShoppingResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ShoppingResponseImplToJson(this);
  }
}

abstract class _ShoppingResponse implements ShoppingResponse {
  const factory _ShoppingResponse({
    required final ShoppingQuery searchParameters,
    required final List<ShoppingResult> shopping,
    final KnowledgeGraphResult? knowledgeGraph,
    required final int credits,
  }) = _$ShoppingResponseImpl;

  factory _ShoppingResponse.fromJson(Map<String, dynamic> json) =
      _$ShoppingResponseImpl.fromJson;

  @override
  ShoppingQuery get searchParameters;
  @override
  List<ShoppingResult> get shopping;
  @override
  KnowledgeGraphResult? get knowledgeGraph;
  @override
  int get credits;

  /// Create a copy of ShoppingResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShoppingResponseImplCopyWith<_$ShoppingResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LensResponse _$LensResponseFromJson(Map<String, dynamic> json) {
  return _LensResponse.fromJson(json);
}

/// @nodoc
mixin _$LensResponse {
  LensQuery get searchParameters => throw _privateConstructorUsedError;
  List<LensResult> get organic => throw _privateConstructorUsedError;
  int get credits => throw _privateConstructorUsedError;

  /// Serializes this LensResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LensResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LensResponseCopyWith<LensResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LensResponseCopyWith<$Res> {
  factory $LensResponseCopyWith(
    LensResponse value,
    $Res Function(LensResponse) then,
  ) = _$LensResponseCopyWithImpl<$Res, LensResponse>;
  @useResult
  $Res call({
    LensQuery searchParameters,
    List<LensResult> organic,
    int credits,
  });

  $LensQueryCopyWith<$Res> get searchParameters;
}

/// @nodoc
class _$LensResponseCopyWithImpl<$Res, $Val extends LensResponse>
    implements $LensResponseCopyWith<$Res> {
  _$LensResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LensResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchParameters = null,
    Object? organic = null,
    Object? credits = null,
  }) {
    return _then(
      _value.copyWith(
            searchParameters:
                null == searchParameters
                    ? _value.searchParameters
                    : searchParameters // ignore: cast_nullable_to_non_nullable
                        as LensQuery,
            organic:
                null == organic
                    ? _value.organic
                    : organic // ignore: cast_nullable_to_non_nullable
                        as List<LensResult>,
            credits:
                null == credits
                    ? _value.credits
                    : credits // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }

  /// Create a copy of LensResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LensQueryCopyWith<$Res> get searchParameters {
    return $LensQueryCopyWith<$Res>(_value.searchParameters, (value) {
      return _then(_value.copyWith(searchParameters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LensResponseImplCopyWith<$Res>
    implements $LensResponseCopyWith<$Res> {
  factory _$$LensResponseImplCopyWith(
    _$LensResponseImpl value,
    $Res Function(_$LensResponseImpl) then,
  ) = __$$LensResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    LensQuery searchParameters,
    List<LensResult> organic,
    int credits,
  });

  @override
  $LensQueryCopyWith<$Res> get searchParameters;
}

/// @nodoc
class __$$LensResponseImplCopyWithImpl<$Res>
    extends _$LensResponseCopyWithImpl<$Res, _$LensResponseImpl>
    implements _$$LensResponseImplCopyWith<$Res> {
  __$$LensResponseImplCopyWithImpl(
    _$LensResponseImpl _value,
    $Res Function(_$LensResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LensResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchParameters = null,
    Object? organic = null,
    Object? credits = null,
  }) {
    return _then(
      _$LensResponseImpl(
        searchParameters:
            null == searchParameters
                ? _value.searchParameters
                : searchParameters // ignore: cast_nullable_to_non_nullable
                    as LensQuery,
        organic:
            null == organic
                ? _value._organic
                : organic // ignore: cast_nullable_to_non_nullable
                    as List<LensResult>,
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
class _$LensResponseImpl implements _LensResponse {
  const _$LensResponseImpl({
    required this.searchParameters,
    required final List<LensResult> organic,
    required this.credits,
  }) : _organic = organic;

  factory _$LensResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LensResponseImplFromJson(json);

  @override
  final LensQuery searchParameters;
  final List<LensResult> _organic;
  @override
  List<LensResult> get organic {
    if (_organic is EqualUnmodifiableListView) return _organic;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_organic);
  }

  @override
  final int credits;

  @override
  String toString() {
    return 'LensResponse(searchParameters: $searchParameters, organic: $organic, credits: $credits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LensResponseImpl &&
            (identical(other.searchParameters, searchParameters) ||
                other.searchParameters == searchParameters) &&
            const DeepCollectionEquality().equals(other._organic, _organic) &&
            (identical(other.credits, credits) || other.credits == credits));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    searchParameters,
    const DeepCollectionEquality().hash(_organic),
    credits,
  );

  /// Create a copy of LensResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LensResponseImplCopyWith<_$LensResponseImpl> get copyWith =>
      __$$LensResponseImplCopyWithImpl<_$LensResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LensResponseImplToJson(this);
  }
}

abstract class _LensResponse implements LensResponse {
  const factory _LensResponse({
    required final LensQuery searchParameters,
    required final List<LensResult> organic,
    required final int credits,
  }) = _$LensResponseImpl;

  factory _LensResponse.fromJson(Map<String, dynamic> json) =
      _$LensResponseImpl.fromJson;

  @override
  LensQuery get searchParameters;
  @override
  List<LensResult> get organic;
  @override
  int get credits;

  /// Create a copy of LensResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LensResponseImplCopyWith<_$LensResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ScholarResponse _$ScholarResponseFromJson(Map<String, dynamic> json) {
  return _ScholarResponse.fromJson(json);
}

/// @nodoc
mixin _$ScholarResponse {
  ScholarQuery get searchParameters => throw _privateConstructorUsedError;
  List<ScholarResult> get organic => throw _privateConstructorUsedError;
  int get credits => throw _privateConstructorUsedError;

  /// Serializes this ScholarResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScholarResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScholarResponseCopyWith<ScholarResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScholarResponseCopyWith<$Res> {
  factory $ScholarResponseCopyWith(
    ScholarResponse value,
    $Res Function(ScholarResponse) then,
  ) = _$ScholarResponseCopyWithImpl<$Res, ScholarResponse>;
  @useResult
  $Res call({
    ScholarQuery searchParameters,
    List<ScholarResult> organic,
    int credits,
  });

  $ScholarQueryCopyWith<$Res> get searchParameters;
}

/// @nodoc
class _$ScholarResponseCopyWithImpl<$Res, $Val extends ScholarResponse>
    implements $ScholarResponseCopyWith<$Res> {
  _$ScholarResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScholarResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchParameters = null,
    Object? organic = null,
    Object? credits = null,
  }) {
    return _then(
      _value.copyWith(
            searchParameters:
                null == searchParameters
                    ? _value.searchParameters
                    : searchParameters // ignore: cast_nullable_to_non_nullable
                        as ScholarQuery,
            organic:
                null == organic
                    ? _value.organic
                    : organic // ignore: cast_nullable_to_non_nullable
                        as List<ScholarResult>,
            credits:
                null == credits
                    ? _value.credits
                    : credits // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }

  /// Create a copy of ScholarResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScholarQueryCopyWith<$Res> get searchParameters {
    return $ScholarQueryCopyWith<$Res>(_value.searchParameters, (value) {
      return _then(_value.copyWith(searchParameters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScholarResponseImplCopyWith<$Res>
    implements $ScholarResponseCopyWith<$Res> {
  factory _$$ScholarResponseImplCopyWith(
    _$ScholarResponseImpl value,
    $Res Function(_$ScholarResponseImpl) then,
  ) = __$$ScholarResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    ScholarQuery searchParameters,
    List<ScholarResult> organic,
    int credits,
  });

  @override
  $ScholarQueryCopyWith<$Res> get searchParameters;
}

/// @nodoc
class __$$ScholarResponseImplCopyWithImpl<$Res>
    extends _$ScholarResponseCopyWithImpl<$Res, _$ScholarResponseImpl>
    implements _$$ScholarResponseImplCopyWith<$Res> {
  __$$ScholarResponseImplCopyWithImpl(
    _$ScholarResponseImpl _value,
    $Res Function(_$ScholarResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ScholarResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchParameters = null,
    Object? organic = null,
    Object? credits = null,
  }) {
    return _then(
      _$ScholarResponseImpl(
        searchParameters:
            null == searchParameters
                ? _value.searchParameters
                : searchParameters // ignore: cast_nullable_to_non_nullable
                    as ScholarQuery,
        organic:
            null == organic
                ? _value._organic
                : organic // ignore: cast_nullable_to_non_nullable
                    as List<ScholarResult>,
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
class _$ScholarResponseImpl implements _ScholarResponse {
  const _$ScholarResponseImpl({
    required this.searchParameters,
    required final List<ScholarResult> organic,
    required this.credits,
  }) : _organic = organic;

  factory _$ScholarResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScholarResponseImplFromJson(json);

  @override
  final ScholarQuery searchParameters;
  final List<ScholarResult> _organic;
  @override
  List<ScholarResult> get organic {
    if (_organic is EqualUnmodifiableListView) return _organic;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_organic);
  }

  @override
  final int credits;

  @override
  String toString() {
    return 'ScholarResponse(searchParameters: $searchParameters, organic: $organic, credits: $credits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScholarResponseImpl &&
            (identical(other.searchParameters, searchParameters) ||
                other.searchParameters == searchParameters) &&
            const DeepCollectionEquality().equals(other._organic, _organic) &&
            (identical(other.credits, credits) || other.credits == credits));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    searchParameters,
    const DeepCollectionEquality().hash(_organic),
    credits,
  );

  /// Create a copy of ScholarResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScholarResponseImplCopyWith<_$ScholarResponseImpl> get copyWith =>
      __$$ScholarResponseImplCopyWithImpl<_$ScholarResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ScholarResponseImplToJson(this);
  }
}

abstract class _ScholarResponse implements ScholarResponse {
  const factory _ScholarResponse({
    required final ScholarQuery searchParameters,
    required final List<ScholarResult> organic,
    required final int credits,
  }) = _$ScholarResponseImpl;

  factory _ScholarResponse.fromJson(Map<String, dynamic> json) =
      _$ScholarResponseImpl.fromJson;

  @override
  ScholarQuery get searchParameters;
  @override
  List<ScholarResult> get organic;
  @override
  int get credits;

  /// Create a copy of ScholarResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScholarResponseImplCopyWith<_$ScholarResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PatentsResponse _$PatentsResponseFromJson(Map<String, dynamic> json) {
  return _PatentsResponse.fromJson(json);
}

/// @nodoc
mixin _$PatentsResponse {
  PatentsQuery get searchParameters => throw _privateConstructorUsedError;
  List<PatentResult> get organic => throw _privateConstructorUsedError;
  int get credits => throw _privateConstructorUsedError;

  /// Serializes this PatentsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PatentsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PatentsResponseCopyWith<PatentsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatentsResponseCopyWith<$Res> {
  factory $PatentsResponseCopyWith(
    PatentsResponse value,
    $Res Function(PatentsResponse) then,
  ) = _$PatentsResponseCopyWithImpl<$Res, PatentsResponse>;
  @useResult
  $Res call({
    PatentsQuery searchParameters,
    List<PatentResult> organic,
    int credits,
  });

  $PatentsQueryCopyWith<$Res> get searchParameters;
}

/// @nodoc
class _$PatentsResponseCopyWithImpl<$Res, $Val extends PatentsResponse>
    implements $PatentsResponseCopyWith<$Res> {
  _$PatentsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PatentsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchParameters = null,
    Object? organic = null,
    Object? credits = null,
  }) {
    return _then(
      _value.copyWith(
            searchParameters:
                null == searchParameters
                    ? _value.searchParameters
                    : searchParameters // ignore: cast_nullable_to_non_nullable
                        as PatentsQuery,
            organic:
                null == organic
                    ? _value.organic
                    : organic // ignore: cast_nullable_to_non_nullable
                        as List<PatentResult>,
            credits:
                null == credits
                    ? _value.credits
                    : credits // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }

  /// Create a copy of PatentsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PatentsQueryCopyWith<$Res> get searchParameters {
    return $PatentsQueryCopyWith<$Res>(_value.searchParameters, (value) {
      return _then(_value.copyWith(searchParameters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PatentsResponseImplCopyWith<$Res>
    implements $PatentsResponseCopyWith<$Res> {
  factory _$$PatentsResponseImplCopyWith(
    _$PatentsResponseImpl value,
    $Res Function(_$PatentsResponseImpl) then,
  ) = __$$PatentsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    PatentsQuery searchParameters,
    List<PatentResult> organic,
    int credits,
  });

  @override
  $PatentsQueryCopyWith<$Res> get searchParameters;
}

/// @nodoc
class __$$PatentsResponseImplCopyWithImpl<$Res>
    extends _$PatentsResponseCopyWithImpl<$Res, _$PatentsResponseImpl>
    implements _$$PatentsResponseImplCopyWith<$Res> {
  __$$PatentsResponseImplCopyWithImpl(
    _$PatentsResponseImpl _value,
    $Res Function(_$PatentsResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PatentsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchParameters = null,
    Object? organic = null,
    Object? credits = null,
  }) {
    return _then(
      _$PatentsResponseImpl(
        searchParameters:
            null == searchParameters
                ? _value.searchParameters
                : searchParameters // ignore: cast_nullable_to_non_nullable
                    as PatentsQuery,
        organic:
            null == organic
                ? _value._organic
                : organic // ignore: cast_nullable_to_non_nullable
                    as List<PatentResult>,
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
class _$PatentsResponseImpl implements _PatentsResponse {
  const _$PatentsResponseImpl({
    required this.searchParameters,
    required final List<PatentResult> organic,
    required this.credits,
  }) : _organic = organic;

  factory _$PatentsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatentsResponseImplFromJson(json);

  @override
  final PatentsQuery searchParameters;
  final List<PatentResult> _organic;
  @override
  List<PatentResult> get organic {
    if (_organic is EqualUnmodifiableListView) return _organic;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_organic);
  }

  @override
  final int credits;

  @override
  String toString() {
    return 'PatentsResponse(searchParameters: $searchParameters, organic: $organic, credits: $credits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatentsResponseImpl &&
            (identical(other.searchParameters, searchParameters) ||
                other.searchParameters == searchParameters) &&
            const DeepCollectionEquality().equals(other._organic, _organic) &&
            (identical(other.credits, credits) || other.credits == credits));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    searchParameters,
    const DeepCollectionEquality().hash(_organic),
    credits,
  );

  /// Create a copy of PatentsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PatentsResponseImplCopyWith<_$PatentsResponseImpl> get copyWith =>
      __$$PatentsResponseImplCopyWithImpl<_$PatentsResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PatentsResponseImplToJson(this);
  }
}

abstract class _PatentsResponse implements PatentsResponse {
  const factory _PatentsResponse({
    required final PatentsQuery searchParameters,
    required final List<PatentResult> organic,
    required final int credits,
  }) = _$PatentsResponseImpl;

  factory _PatentsResponse.fromJson(Map<String, dynamic> json) =
      _$PatentsResponseImpl.fromJson;

  @override
  PatentsQuery get searchParameters;
  @override
  List<PatentResult> get organic;
  @override
  int get credits;

  /// Create a copy of PatentsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PatentsResponseImplCopyWith<_$PatentsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AutocompleteResponse _$AutocompleteResponseFromJson(Map<String, dynamic> json) {
  return _AutocompleteResponse.fromJson(json);
}

/// @nodoc
mixin _$AutocompleteResponse {
  AutocompleteQuery get searchParameters => throw _privateConstructorUsedError;
  List<AutocompleteSuggestion> get suggestions =>
      throw _privateConstructorUsedError;
  int get credits => throw _privateConstructorUsedError;

  /// Serializes this AutocompleteResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AutocompleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AutocompleteResponseCopyWith<AutocompleteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutocompleteResponseCopyWith<$Res> {
  factory $AutocompleteResponseCopyWith(
    AutocompleteResponse value,
    $Res Function(AutocompleteResponse) then,
  ) = _$AutocompleteResponseCopyWithImpl<$Res, AutocompleteResponse>;
  @useResult
  $Res call({
    AutocompleteQuery searchParameters,
    List<AutocompleteSuggestion> suggestions,
    int credits,
  });

  $AutocompleteQueryCopyWith<$Res> get searchParameters;
}

/// @nodoc
class _$AutocompleteResponseCopyWithImpl<
  $Res,
  $Val extends AutocompleteResponse
>
    implements $AutocompleteResponseCopyWith<$Res> {
  _$AutocompleteResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AutocompleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchParameters = null,
    Object? suggestions = null,
    Object? credits = null,
  }) {
    return _then(
      _value.copyWith(
            searchParameters:
                null == searchParameters
                    ? _value.searchParameters
                    : searchParameters // ignore: cast_nullable_to_non_nullable
                        as AutocompleteQuery,
            suggestions:
                null == suggestions
                    ? _value.suggestions
                    : suggestions // ignore: cast_nullable_to_non_nullable
                        as List<AutocompleteSuggestion>,
            credits:
                null == credits
                    ? _value.credits
                    : credits // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }

  /// Create a copy of AutocompleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AutocompleteQueryCopyWith<$Res> get searchParameters {
    return $AutocompleteQueryCopyWith<$Res>(_value.searchParameters, (value) {
      return _then(_value.copyWith(searchParameters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AutocompleteResponseImplCopyWith<$Res>
    implements $AutocompleteResponseCopyWith<$Res> {
  factory _$$AutocompleteResponseImplCopyWith(
    _$AutocompleteResponseImpl value,
    $Res Function(_$AutocompleteResponseImpl) then,
  ) = __$$AutocompleteResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    AutocompleteQuery searchParameters,
    List<AutocompleteSuggestion> suggestions,
    int credits,
  });

  @override
  $AutocompleteQueryCopyWith<$Res> get searchParameters;
}

/// @nodoc
class __$$AutocompleteResponseImplCopyWithImpl<$Res>
    extends _$AutocompleteResponseCopyWithImpl<$Res, _$AutocompleteResponseImpl>
    implements _$$AutocompleteResponseImplCopyWith<$Res> {
  __$$AutocompleteResponseImplCopyWithImpl(
    _$AutocompleteResponseImpl _value,
    $Res Function(_$AutocompleteResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AutocompleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchParameters = null,
    Object? suggestions = null,
    Object? credits = null,
  }) {
    return _then(
      _$AutocompleteResponseImpl(
        searchParameters:
            null == searchParameters
                ? _value.searchParameters
                : searchParameters // ignore: cast_nullable_to_non_nullable
                    as AutocompleteQuery,
        suggestions:
            null == suggestions
                ? _value._suggestions
                : suggestions // ignore: cast_nullable_to_non_nullable
                    as List<AutocompleteSuggestion>,
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
class _$AutocompleteResponseImpl implements _AutocompleteResponse {
  const _$AutocompleteResponseImpl({
    required this.searchParameters,
    required final List<AutocompleteSuggestion> suggestions,
    required this.credits,
  }) : _suggestions = suggestions;

  factory _$AutocompleteResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AutocompleteResponseImplFromJson(json);

  @override
  final AutocompleteQuery searchParameters;
  final List<AutocompleteSuggestion> _suggestions;
  @override
  List<AutocompleteSuggestion> get suggestions {
    if (_suggestions is EqualUnmodifiableListView) return _suggestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestions);
  }

  @override
  final int credits;

  @override
  String toString() {
    return 'AutocompleteResponse(searchParameters: $searchParameters, suggestions: $suggestions, credits: $credits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutocompleteResponseImpl &&
            (identical(other.searchParameters, searchParameters) ||
                other.searchParameters == searchParameters) &&
            const DeepCollectionEquality().equals(
              other._suggestions,
              _suggestions,
            ) &&
            (identical(other.credits, credits) || other.credits == credits));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    searchParameters,
    const DeepCollectionEquality().hash(_suggestions),
    credits,
  );

  /// Create a copy of AutocompleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AutocompleteResponseImplCopyWith<_$AutocompleteResponseImpl>
  get copyWith =>
      __$$AutocompleteResponseImplCopyWithImpl<_$AutocompleteResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AutocompleteResponseImplToJson(this);
  }
}

abstract class _AutocompleteResponse implements AutocompleteResponse {
  const factory _AutocompleteResponse({
    required final AutocompleteQuery searchParameters,
    required final List<AutocompleteSuggestion> suggestions,
    required final int credits,
  }) = _$AutocompleteResponseImpl;

  factory _AutocompleteResponse.fromJson(Map<String, dynamic> json) =
      _$AutocompleteResponseImpl.fromJson;

  @override
  AutocompleteQuery get searchParameters;
  @override
  List<AutocompleteSuggestion> get suggestions;
  @override
  int get credits;

  /// Create a copy of AutocompleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AutocompleteResponseImplCopyWith<_$AutocompleteResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

WebpageResponse _$WebpageResponseFromJson(Map<String, dynamic> json) {
  return _WebpageResponse.fromJson(json);
}

/// @nodoc
mixin _$WebpageResponse {
  List<WebpageResult> get results => throw _privateConstructorUsedError;

  /// Serializes this WebpageResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebpageResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebpageResponseCopyWith<WebpageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebpageResponseCopyWith<$Res> {
  factory $WebpageResponseCopyWith(
    WebpageResponse value,
    $Res Function(WebpageResponse) then,
  ) = _$WebpageResponseCopyWithImpl<$Res, WebpageResponse>;
  @useResult
  $Res call({List<WebpageResult> results});
}

/// @nodoc
class _$WebpageResponseCopyWithImpl<$Res, $Val extends WebpageResponse>
    implements $WebpageResponseCopyWith<$Res> {
  _$WebpageResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebpageResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? results = null}) {
    return _then(
      _value.copyWith(
            results:
                null == results
                    ? _value.results
                    : results // ignore: cast_nullable_to_non_nullable
                        as List<WebpageResult>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WebpageResponseImplCopyWith<$Res>
    implements $WebpageResponseCopyWith<$Res> {
  factory _$$WebpageResponseImplCopyWith(
    _$WebpageResponseImpl value,
    $Res Function(_$WebpageResponseImpl) then,
  ) = __$$WebpageResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<WebpageResult> results});
}

/// @nodoc
class __$$WebpageResponseImplCopyWithImpl<$Res>
    extends _$WebpageResponseCopyWithImpl<$Res, _$WebpageResponseImpl>
    implements _$$WebpageResponseImplCopyWith<$Res> {
  __$$WebpageResponseImplCopyWithImpl(
    _$WebpageResponseImpl _value,
    $Res Function(_$WebpageResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WebpageResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? results = null}) {
    return _then(
      _$WebpageResponseImpl(
        results:
            null == results
                ? _value._results
                : results // ignore: cast_nullable_to_non_nullable
                    as List<WebpageResult>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WebpageResponseImpl implements _WebpageResponse {
  const _$WebpageResponseImpl({required final List<WebpageResult> results})
    : _results = results;

  factory _$WebpageResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebpageResponseImplFromJson(json);

  final List<WebpageResult> _results;
  @override
  List<WebpageResult> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'WebpageResponse(results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebpageResponseImpl &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  /// Create a copy of WebpageResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebpageResponseImplCopyWith<_$WebpageResponseImpl> get copyWith =>
      __$$WebpageResponseImplCopyWithImpl<_$WebpageResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WebpageResponseImplToJson(this);
  }
}

abstract class _WebpageResponse implements WebpageResponse {
  const factory _WebpageResponse({required final List<WebpageResult> results}) =
      _$WebpageResponseImpl;

  factory _WebpageResponse.fromJson(Map<String, dynamic> json) =
      _$WebpageResponseImpl.fromJson;

  @override
  List<WebpageResult> get results;

  /// Create a copy of WebpageResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebpageResponseImplCopyWith<_$WebpageResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
