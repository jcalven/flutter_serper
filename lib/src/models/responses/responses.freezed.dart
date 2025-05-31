// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'responses.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchResponse {

/// {@macro flutter_serper.responses.searchParameters}
 SearchQuery get searchParameters;/// {@template flutter_serper.responses.organic}
/// List of organic search results returned by the API.
///
/// Organic results are the main search results that match the query criteria,
/// similar to the standard results you would see in a search engine.
/// {@endtemplate}
 List<OrganicResult> get organic;/// {@template flutter_serper.responses.knowledgeGraph}
/// Knowledge Graph information related to the search query, if available.
///
/// The Knowledge Graph provides structured information about the entity
/// being searched for, such as a person, place, organization, or concept.
/// {@endtemplate}
 KnowledgeGraphResult? get knowledgeGraph;/// List of related search suggestions
///
/// Contains search terms related to the original query.
 List<RelatedSearchResult>? get relatedSearches;/// List of "People Also Ask" questions
///
/// Contains common questions related to the search query.
 List<PeopleAlsoAskResult>? get peopleAlsoAsk;/// List of top stories, if any
///
/// Shown when the search query is related to news or current events.
 List<TopStoriesResult>? get topStories;/// {@macro flutter_serper.responses.credits}
 int get credits;
/// Create a copy of SearchResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchResponseCopyWith<SearchResponse> get copyWith => _$SearchResponseCopyWithImpl<SearchResponse>(this as SearchResponse, _$identity);

  /// Serializes this SearchResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchResponse&&(identical(other.searchParameters, searchParameters) || other.searchParameters == searchParameters)&&const DeepCollectionEquality().equals(other.organic, organic)&&(identical(other.knowledgeGraph, knowledgeGraph) || other.knowledgeGraph == knowledgeGraph)&&const DeepCollectionEquality().equals(other.relatedSearches, relatedSearches)&&const DeepCollectionEquality().equals(other.peopleAlsoAsk, peopleAlsoAsk)&&const DeepCollectionEquality().equals(other.topStories, topStories)&&(identical(other.credits, credits) || other.credits == credits));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,searchParameters,const DeepCollectionEquality().hash(organic),knowledgeGraph,const DeepCollectionEquality().hash(relatedSearches),const DeepCollectionEquality().hash(peopleAlsoAsk),const DeepCollectionEquality().hash(topStories),credits);

@override
String toString() {
  return 'SearchResponse(searchParameters: $searchParameters, organic: $organic, knowledgeGraph: $knowledgeGraph, relatedSearches: $relatedSearches, peopleAlsoAsk: $peopleAlsoAsk, topStories: $topStories, credits: $credits)';
}


}

/// @nodoc
abstract mixin class $SearchResponseCopyWith<$Res>  {
  factory $SearchResponseCopyWith(SearchResponse value, $Res Function(SearchResponse) _then) = _$SearchResponseCopyWithImpl;
@useResult
$Res call({
 SearchQuery searchParameters, List<OrganicResult> organic, KnowledgeGraphResult? knowledgeGraph, List<RelatedSearchResult>? relatedSearches, List<PeopleAlsoAskResult>? peopleAlsoAsk, List<TopStoriesResult>? topStories, int credits
});


$SearchQueryCopyWith<$Res> get searchParameters;$KnowledgeGraphResultCopyWith<$Res>? get knowledgeGraph;

}
/// @nodoc
class _$SearchResponseCopyWithImpl<$Res>
    implements $SearchResponseCopyWith<$Res> {
  _$SearchResponseCopyWithImpl(this._self, this._then);

  final SearchResponse _self;
  final $Res Function(SearchResponse) _then;

/// Create a copy of SearchResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? searchParameters = null,Object? organic = null,Object? knowledgeGraph = freezed,Object? relatedSearches = freezed,Object? peopleAlsoAsk = freezed,Object? topStories = freezed,Object? credits = null,}) {
  return _then(_self.copyWith(
searchParameters: null == searchParameters ? _self.searchParameters : searchParameters // ignore: cast_nullable_to_non_nullable
as SearchQuery,organic: null == organic ? _self.organic : organic // ignore: cast_nullable_to_non_nullable
as List<OrganicResult>,knowledgeGraph: freezed == knowledgeGraph ? _self.knowledgeGraph : knowledgeGraph // ignore: cast_nullable_to_non_nullable
as KnowledgeGraphResult?,relatedSearches: freezed == relatedSearches ? _self.relatedSearches : relatedSearches // ignore: cast_nullable_to_non_nullable
as List<RelatedSearchResult>?,peopleAlsoAsk: freezed == peopleAlsoAsk ? _self.peopleAlsoAsk : peopleAlsoAsk // ignore: cast_nullable_to_non_nullable
as List<PeopleAlsoAskResult>?,topStories: freezed == topStories ? _self.topStories : topStories // ignore: cast_nullable_to_non_nullable
as List<TopStoriesResult>?,credits: null == credits ? _self.credits : credits // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of SearchResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchQueryCopyWith<$Res> get searchParameters {
  
  return $SearchQueryCopyWith<$Res>(_self.searchParameters, (value) {
    return _then(_self.copyWith(searchParameters: value));
  });
}/// Create a copy of SearchResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KnowledgeGraphResultCopyWith<$Res>? get knowledgeGraph {
    if (_self.knowledgeGraph == null) {
    return null;
  }

  return $KnowledgeGraphResultCopyWith<$Res>(_self.knowledgeGraph!, (value) {
    return _then(_self.copyWith(knowledgeGraph: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _SearchResponse extends SearchResponse {
  const _SearchResponse({required this.searchParameters, required final  List<OrganicResult> organic, this.knowledgeGraph, final  List<RelatedSearchResult>? relatedSearches, final  List<PeopleAlsoAskResult>? peopleAlsoAsk, final  List<TopStoriesResult>? topStories, required this.credits}): _organic = organic,_relatedSearches = relatedSearches,_peopleAlsoAsk = peopleAlsoAsk,_topStories = topStories,super._();
  factory _SearchResponse.fromJson(Map<String, dynamic> json) => _$SearchResponseFromJson(json);

/// {@macro flutter_serper.responses.searchParameters}
@override final  SearchQuery searchParameters;
/// {@template flutter_serper.responses.organic}
/// List of organic search results returned by the API.
///
/// Organic results are the main search results that match the query criteria,
/// similar to the standard results you would see in a search engine.
/// {@endtemplate}
 final  List<OrganicResult> _organic;
/// {@template flutter_serper.responses.organic}
/// List of organic search results returned by the API.
///
/// Organic results are the main search results that match the query criteria,
/// similar to the standard results you would see in a search engine.
/// {@endtemplate}
@override List<OrganicResult> get organic {
  if (_organic is EqualUnmodifiableListView) return _organic;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_organic);
}

/// {@template flutter_serper.responses.knowledgeGraph}
/// Knowledge Graph information related to the search query, if available.
///
/// The Knowledge Graph provides structured information about the entity
/// being searched for, such as a person, place, organization, or concept.
/// {@endtemplate}
@override final  KnowledgeGraphResult? knowledgeGraph;
/// List of related search suggestions
///
/// Contains search terms related to the original query.
 final  List<RelatedSearchResult>? _relatedSearches;
/// List of related search suggestions
///
/// Contains search terms related to the original query.
@override List<RelatedSearchResult>? get relatedSearches {
  final value = _relatedSearches;
  if (value == null) return null;
  if (_relatedSearches is EqualUnmodifiableListView) return _relatedSearches;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// List of "People Also Ask" questions
///
/// Contains common questions related to the search query.
 final  List<PeopleAlsoAskResult>? _peopleAlsoAsk;
/// List of "People Also Ask" questions
///
/// Contains common questions related to the search query.
@override List<PeopleAlsoAskResult>? get peopleAlsoAsk {
  final value = _peopleAlsoAsk;
  if (value == null) return null;
  if (_peopleAlsoAsk is EqualUnmodifiableListView) return _peopleAlsoAsk;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// List of top stories, if any
///
/// Shown when the search query is related to news or current events.
 final  List<TopStoriesResult>? _topStories;
/// List of top stories, if any
///
/// Shown when the search query is related to news or current events.
@override List<TopStoriesResult>? get topStories {
  final value = _topStories;
  if (value == null) return null;
  if (_topStories is EqualUnmodifiableListView) return _topStories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// {@macro flutter_serper.responses.credits}
@override final  int credits;

/// Create a copy of SearchResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchResponseCopyWith<_SearchResponse> get copyWith => __$SearchResponseCopyWithImpl<_SearchResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchResponse&&(identical(other.searchParameters, searchParameters) || other.searchParameters == searchParameters)&&const DeepCollectionEquality().equals(other._organic, _organic)&&(identical(other.knowledgeGraph, knowledgeGraph) || other.knowledgeGraph == knowledgeGraph)&&const DeepCollectionEquality().equals(other._relatedSearches, _relatedSearches)&&const DeepCollectionEquality().equals(other._peopleAlsoAsk, _peopleAlsoAsk)&&const DeepCollectionEquality().equals(other._topStories, _topStories)&&(identical(other.credits, credits) || other.credits == credits));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,searchParameters,const DeepCollectionEquality().hash(_organic),knowledgeGraph,const DeepCollectionEquality().hash(_relatedSearches),const DeepCollectionEquality().hash(_peopleAlsoAsk),const DeepCollectionEquality().hash(_topStories),credits);

@override
String toString() {
  return 'SearchResponse(searchParameters: $searchParameters, organic: $organic, knowledgeGraph: $knowledgeGraph, relatedSearches: $relatedSearches, peopleAlsoAsk: $peopleAlsoAsk, topStories: $topStories, credits: $credits)';
}


}

/// @nodoc
abstract mixin class _$SearchResponseCopyWith<$Res> implements $SearchResponseCopyWith<$Res> {
  factory _$SearchResponseCopyWith(_SearchResponse value, $Res Function(_SearchResponse) _then) = __$SearchResponseCopyWithImpl;
@override @useResult
$Res call({
 SearchQuery searchParameters, List<OrganicResult> organic, KnowledgeGraphResult? knowledgeGraph, List<RelatedSearchResult>? relatedSearches, List<PeopleAlsoAskResult>? peopleAlsoAsk, List<TopStoriesResult>? topStories, int credits
});


@override $SearchQueryCopyWith<$Res> get searchParameters;@override $KnowledgeGraphResultCopyWith<$Res>? get knowledgeGraph;

}
/// @nodoc
class __$SearchResponseCopyWithImpl<$Res>
    implements _$SearchResponseCopyWith<$Res> {
  __$SearchResponseCopyWithImpl(this._self, this._then);

  final _SearchResponse _self;
  final $Res Function(_SearchResponse) _then;

/// Create a copy of SearchResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? searchParameters = null,Object? organic = null,Object? knowledgeGraph = freezed,Object? relatedSearches = freezed,Object? peopleAlsoAsk = freezed,Object? topStories = freezed,Object? credits = null,}) {
  return _then(_SearchResponse(
searchParameters: null == searchParameters ? _self.searchParameters : searchParameters // ignore: cast_nullable_to_non_nullable
as SearchQuery,organic: null == organic ? _self._organic : organic // ignore: cast_nullable_to_non_nullable
as List<OrganicResult>,knowledgeGraph: freezed == knowledgeGraph ? _self.knowledgeGraph : knowledgeGraph // ignore: cast_nullable_to_non_nullable
as KnowledgeGraphResult?,relatedSearches: freezed == relatedSearches ? _self._relatedSearches : relatedSearches // ignore: cast_nullable_to_non_nullable
as List<RelatedSearchResult>?,peopleAlsoAsk: freezed == peopleAlsoAsk ? _self._peopleAlsoAsk : peopleAlsoAsk // ignore: cast_nullable_to_non_nullable
as List<PeopleAlsoAskResult>?,topStories: freezed == topStories ? _self._topStories : topStories // ignore: cast_nullable_to_non_nullable
as List<TopStoriesResult>?,credits: null == credits ? _self.credits : credits // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of SearchResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchQueryCopyWith<$Res> get searchParameters {
  
  return $SearchQueryCopyWith<$Res>(_self.searchParameters, (value) {
    return _then(_self.copyWith(searchParameters: value));
  });
}/// Create a copy of SearchResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KnowledgeGraphResultCopyWith<$Res>? get knowledgeGraph {
    if (_self.knowledgeGraph == null) {
    return null;
  }

  return $KnowledgeGraphResultCopyWith<$Res>(_self.knowledgeGraph!, (value) {
    return _then(_self.copyWith(knowledgeGraph: value));
  });
}
}


/// @nodoc
mixin _$ImagesResponse {

/// {@macro flutter_serper.responses.searchParameters}
 ImagesQuery get searchParameters;/// List of image results returned by the API
///
/// Contains all the image results that match the search query.
 List<ImageResult> get images;/// {@macro flutter_serper.responses.credits}
 int get credits;
/// Create a copy of ImagesResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImagesResponseCopyWith<ImagesResponse> get copyWith => _$ImagesResponseCopyWithImpl<ImagesResponse>(this as ImagesResponse, _$identity);

  /// Serializes this ImagesResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImagesResponse&&(identical(other.searchParameters, searchParameters) || other.searchParameters == searchParameters)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.credits, credits) || other.credits == credits));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,searchParameters,const DeepCollectionEquality().hash(images),credits);

@override
String toString() {
  return 'ImagesResponse(searchParameters: $searchParameters, images: $images, credits: $credits)';
}


}

/// @nodoc
abstract mixin class $ImagesResponseCopyWith<$Res>  {
  factory $ImagesResponseCopyWith(ImagesResponse value, $Res Function(ImagesResponse) _then) = _$ImagesResponseCopyWithImpl;
@useResult
$Res call({
 ImagesQuery searchParameters, List<ImageResult> images, int credits
});


$ImagesQueryCopyWith<$Res> get searchParameters;

}
/// @nodoc
class _$ImagesResponseCopyWithImpl<$Res>
    implements $ImagesResponseCopyWith<$Res> {
  _$ImagesResponseCopyWithImpl(this._self, this._then);

  final ImagesResponse _self;
  final $Res Function(ImagesResponse) _then;

/// Create a copy of ImagesResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? searchParameters = null,Object? images = null,Object? credits = null,}) {
  return _then(_self.copyWith(
searchParameters: null == searchParameters ? _self.searchParameters : searchParameters // ignore: cast_nullable_to_non_nullable
as ImagesQuery,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<ImageResult>,credits: null == credits ? _self.credits : credits // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of ImagesResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImagesQueryCopyWith<$Res> get searchParameters {
  
  return $ImagesQueryCopyWith<$Res>(_self.searchParameters, (value) {
    return _then(_self.copyWith(searchParameters: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _ImagesResponse extends ImagesResponse {
  const _ImagesResponse({required this.searchParameters, required final  List<ImageResult> images, required this.credits}): _images = images,super._();
  factory _ImagesResponse.fromJson(Map<String, dynamic> json) => _$ImagesResponseFromJson(json);

/// {@macro flutter_serper.responses.searchParameters}
@override final  ImagesQuery searchParameters;
/// List of image results returned by the API
///
/// Contains all the image results that match the search query.
 final  List<ImageResult> _images;
/// List of image results returned by the API
///
/// Contains all the image results that match the search query.
@override List<ImageResult> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

/// {@macro flutter_serper.responses.credits}
@override final  int credits;

/// Create a copy of ImagesResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImagesResponseCopyWith<_ImagesResponse> get copyWith => __$ImagesResponseCopyWithImpl<_ImagesResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ImagesResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImagesResponse&&(identical(other.searchParameters, searchParameters) || other.searchParameters == searchParameters)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.credits, credits) || other.credits == credits));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,searchParameters,const DeepCollectionEquality().hash(_images),credits);

@override
String toString() {
  return 'ImagesResponse(searchParameters: $searchParameters, images: $images, credits: $credits)';
}


}

/// @nodoc
abstract mixin class _$ImagesResponseCopyWith<$Res> implements $ImagesResponseCopyWith<$Res> {
  factory _$ImagesResponseCopyWith(_ImagesResponse value, $Res Function(_ImagesResponse) _then) = __$ImagesResponseCopyWithImpl;
@override @useResult
$Res call({
 ImagesQuery searchParameters, List<ImageResult> images, int credits
});


@override $ImagesQueryCopyWith<$Res> get searchParameters;

}
/// @nodoc
class __$ImagesResponseCopyWithImpl<$Res>
    implements _$ImagesResponseCopyWith<$Res> {
  __$ImagesResponseCopyWithImpl(this._self, this._then);

  final _ImagesResponse _self;
  final $Res Function(_ImagesResponse) _then;

/// Create a copy of ImagesResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? searchParameters = null,Object? images = null,Object? credits = null,}) {
  return _then(_ImagesResponse(
searchParameters: null == searchParameters ? _self.searchParameters : searchParameters // ignore: cast_nullable_to_non_nullable
as ImagesQuery,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<ImageResult>,credits: null == credits ? _self.credits : credits // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of ImagesResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImagesQueryCopyWith<$Res> get searchParameters {
  
  return $ImagesQueryCopyWith<$Res>(_self.searchParameters, (value) {
    return _then(_self.copyWith(searchParameters: value));
  });
}
}


/// @nodoc
mixin _$PlacesResponse {

/// {@macro flutter_serper.responses.searchParameters}
 PlacesQuery get searchParameters;/// List of place results returned by the API
///
/// Contains places that match the search query.
 List<PlaceResult> get places;/// {@macro flutter_serper.responses.credits}
 int get credits;
/// Create a copy of PlacesResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlacesResponseCopyWith<PlacesResponse> get copyWith => _$PlacesResponseCopyWithImpl<PlacesResponse>(this as PlacesResponse, _$identity);

  /// Serializes this PlacesResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlacesResponse&&(identical(other.searchParameters, searchParameters) || other.searchParameters == searchParameters)&&const DeepCollectionEquality().equals(other.places, places)&&(identical(other.credits, credits) || other.credits == credits));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,searchParameters,const DeepCollectionEquality().hash(places),credits);

@override
String toString() {
  return 'PlacesResponse(searchParameters: $searchParameters, places: $places, credits: $credits)';
}


}

/// @nodoc
abstract mixin class $PlacesResponseCopyWith<$Res>  {
  factory $PlacesResponseCopyWith(PlacesResponse value, $Res Function(PlacesResponse) _then) = _$PlacesResponseCopyWithImpl;
@useResult
$Res call({
 PlacesQuery searchParameters, List<PlaceResult> places, int credits
});


$PlacesQueryCopyWith<$Res> get searchParameters;

}
/// @nodoc
class _$PlacesResponseCopyWithImpl<$Res>
    implements $PlacesResponseCopyWith<$Res> {
  _$PlacesResponseCopyWithImpl(this._self, this._then);

  final PlacesResponse _self;
  final $Res Function(PlacesResponse) _then;

/// Create a copy of PlacesResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? searchParameters = null,Object? places = null,Object? credits = null,}) {
  return _then(_self.copyWith(
searchParameters: null == searchParameters ? _self.searchParameters : searchParameters // ignore: cast_nullable_to_non_nullable
as PlacesQuery,places: null == places ? _self.places : places // ignore: cast_nullable_to_non_nullable
as List<PlaceResult>,credits: null == credits ? _self.credits : credits // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of PlacesResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlacesQueryCopyWith<$Res> get searchParameters {
  
  return $PlacesQueryCopyWith<$Res>(_self.searchParameters, (value) {
    return _then(_self.copyWith(searchParameters: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _PlacesResponse extends PlacesResponse {
  const _PlacesResponse({required this.searchParameters, required final  List<PlaceResult> places, required this.credits}): _places = places,super._();
  factory _PlacesResponse.fromJson(Map<String, dynamic> json) => _$PlacesResponseFromJson(json);

/// {@macro flutter_serper.responses.searchParameters}
@override final  PlacesQuery searchParameters;
/// List of place results returned by the API
///
/// Contains places that match the search query.
 final  List<PlaceResult> _places;
/// List of place results returned by the API
///
/// Contains places that match the search query.
@override List<PlaceResult> get places {
  if (_places is EqualUnmodifiableListView) return _places;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_places);
}

/// {@macro flutter_serper.responses.credits}
@override final  int credits;

/// Create a copy of PlacesResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlacesResponseCopyWith<_PlacesResponse> get copyWith => __$PlacesResponseCopyWithImpl<_PlacesResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlacesResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlacesResponse&&(identical(other.searchParameters, searchParameters) || other.searchParameters == searchParameters)&&const DeepCollectionEquality().equals(other._places, _places)&&(identical(other.credits, credits) || other.credits == credits));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,searchParameters,const DeepCollectionEquality().hash(_places),credits);

@override
String toString() {
  return 'PlacesResponse(searchParameters: $searchParameters, places: $places, credits: $credits)';
}


}

/// @nodoc
abstract mixin class _$PlacesResponseCopyWith<$Res> implements $PlacesResponseCopyWith<$Res> {
  factory _$PlacesResponseCopyWith(_PlacesResponse value, $Res Function(_PlacesResponse) _then) = __$PlacesResponseCopyWithImpl;
@override @useResult
$Res call({
 PlacesQuery searchParameters, List<PlaceResult> places, int credits
});


@override $PlacesQueryCopyWith<$Res> get searchParameters;

}
/// @nodoc
class __$PlacesResponseCopyWithImpl<$Res>
    implements _$PlacesResponseCopyWith<$Res> {
  __$PlacesResponseCopyWithImpl(this._self, this._then);

  final _PlacesResponse _self;
  final $Res Function(_PlacesResponse) _then;

/// Create a copy of PlacesResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? searchParameters = null,Object? places = null,Object? credits = null,}) {
  return _then(_PlacesResponse(
searchParameters: null == searchParameters ? _self.searchParameters : searchParameters // ignore: cast_nullable_to_non_nullable
as PlacesQuery,places: null == places ? _self._places : places // ignore: cast_nullable_to_non_nullable
as List<PlaceResult>,credits: null == credits ? _self.credits : credits // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of PlacesResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlacesQueryCopyWith<$Res> get searchParameters {
  
  return $PlacesQueryCopyWith<$Res>(_self.searchParameters, (value) {
    return _then(_self.copyWith(searchParameters: value));
  });
}
}


/// @nodoc
mixin _$VideosResponse {

/// {@macro flutter_serper.responses.searchParameters}
 VideosQuery get searchParameters;/// List of video results returned by the API
///
/// Contains videos that match the search query.
 List<VideoResult> get videos;// /// {@macro flutter_serper.responses.knowledgeGraph}
// KnowledgeGraphResult? knowledgeGraph,
/// {@macro flutter_serper.responses.credits}
 int get credits;
/// Create a copy of VideosResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideosResponseCopyWith<VideosResponse> get copyWith => _$VideosResponseCopyWithImpl<VideosResponse>(this as VideosResponse, _$identity);

  /// Serializes this VideosResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideosResponse&&(identical(other.searchParameters, searchParameters) || other.searchParameters == searchParameters)&&const DeepCollectionEquality().equals(other.videos, videos)&&(identical(other.credits, credits) || other.credits == credits));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,searchParameters,const DeepCollectionEquality().hash(videos),credits);

@override
String toString() {
  return 'VideosResponse(searchParameters: $searchParameters, videos: $videos, credits: $credits)';
}


}

/// @nodoc
abstract mixin class $VideosResponseCopyWith<$Res>  {
  factory $VideosResponseCopyWith(VideosResponse value, $Res Function(VideosResponse) _then) = _$VideosResponseCopyWithImpl;
@useResult
$Res call({
 VideosQuery searchParameters, List<VideoResult> videos, int credits
});


$VideosQueryCopyWith<$Res> get searchParameters;

}
/// @nodoc
class _$VideosResponseCopyWithImpl<$Res>
    implements $VideosResponseCopyWith<$Res> {
  _$VideosResponseCopyWithImpl(this._self, this._then);

  final VideosResponse _self;
  final $Res Function(VideosResponse) _then;

/// Create a copy of VideosResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? searchParameters = null,Object? videos = null,Object? credits = null,}) {
  return _then(_self.copyWith(
searchParameters: null == searchParameters ? _self.searchParameters : searchParameters // ignore: cast_nullable_to_non_nullable
as VideosQuery,videos: null == videos ? _self.videos : videos // ignore: cast_nullable_to_non_nullable
as List<VideoResult>,credits: null == credits ? _self.credits : credits // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of VideosResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideosQueryCopyWith<$Res> get searchParameters {
  
  return $VideosQueryCopyWith<$Res>(_self.searchParameters, (value) {
    return _then(_self.copyWith(searchParameters: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _VideosResponse extends VideosResponse {
  const _VideosResponse({required this.searchParameters, required final  List<VideoResult> videos, required this.credits}): _videos = videos,super._();
  factory _VideosResponse.fromJson(Map<String, dynamic> json) => _$VideosResponseFromJson(json);

/// {@macro flutter_serper.responses.searchParameters}
@override final  VideosQuery searchParameters;
/// List of video results returned by the API
///
/// Contains videos that match the search query.
 final  List<VideoResult> _videos;
/// List of video results returned by the API
///
/// Contains videos that match the search query.
@override List<VideoResult> get videos {
  if (_videos is EqualUnmodifiableListView) return _videos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_videos);
}

// /// {@macro flutter_serper.responses.knowledgeGraph}
// KnowledgeGraphResult? knowledgeGraph,
/// {@macro flutter_serper.responses.credits}
@override final  int credits;

/// Create a copy of VideosResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideosResponseCopyWith<_VideosResponse> get copyWith => __$VideosResponseCopyWithImpl<_VideosResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VideosResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideosResponse&&(identical(other.searchParameters, searchParameters) || other.searchParameters == searchParameters)&&const DeepCollectionEquality().equals(other._videos, _videos)&&(identical(other.credits, credits) || other.credits == credits));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,searchParameters,const DeepCollectionEquality().hash(_videos),credits);

@override
String toString() {
  return 'VideosResponse(searchParameters: $searchParameters, videos: $videos, credits: $credits)';
}


}

/// @nodoc
abstract mixin class _$VideosResponseCopyWith<$Res> implements $VideosResponseCopyWith<$Res> {
  factory _$VideosResponseCopyWith(_VideosResponse value, $Res Function(_VideosResponse) _then) = __$VideosResponseCopyWithImpl;
@override @useResult
$Res call({
 VideosQuery searchParameters, List<VideoResult> videos, int credits
});


@override $VideosQueryCopyWith<$Res> get searchParameters;

}
/// @nodoc
class __$VideosResponseCopyWithImpl<$Res>
    implements _$VideosResponseCopyWith<$Res> {
  __$VideosResponseCopyWithImpl(this._self, this._then);

  final _VideosResponse _self;
  final $Res Function(_VideosResponse) _then;

/// Create a copy of VideosResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? searchParameters = null,Object? videos = null,Object? credits = null,}) {
  return _then(_VideosResponse(
searchParameters: null == searchParameters ? _self.searchParameters : searchParameters // ignore: cast_nullable_to_non_nullable
as VideosQuery,videos: null == videos ? _self._videos : videos // ignore: cast_nullable_to_non_nullable
as List<VideoResult>,credits: null == credits ? _self.credits : credits // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of VideosResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideosQueryCopyWith<$Res> get searchParameters {
  
  return $VideosQueryCopyWith<$Res>(_self.searchParameters, (value) {
    return _then(_self.copyWith(searchParameters: value));
  });
}
}


/// @nodoc
mixin _$MapsResponse {

/// {@macro flutter_serper.responses.searchParameters}
 MapsQuery get searchParameters;/// The latitude and longitude coordinates returned by the Maps API
///
/// Contains the location coordinates in the format "@lat,lng,zoom"
@JsonKey(name: 'll')@LatLngConverter() LatLng? get latLng;/// List of places returned by the Maps API
///
/// Contains basic place information including position and place ID.
 List<MapResult> get places;/// {@macro flutter_serper.responses.credits}
 int get credits;
/// Create a copy of MapsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MapsResponseCopyWith<MapsResponse> get copyWith => _$MapsResponseCopyWithImpl<MapsResponse>(this as MapsResponse, _$identity);

  /// Serializes this MapsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MapsResponse&&(identical(other.searchParameters, searchParameters) || other.searchParameters == searchParameters)&&(identical(other.latLng, latLng) || other.latLng == latLng)&&const DeepCollectionEquality().equals(other.places, places)&&(identical(other.credits, credits) || other.credits == credits));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,searchParameters,latLng,const DeepCollectionEquality().hash(places),credits);

@override
String toString() {
  return 'MapsResponse(searchParameters: $searchParameters, latLng: $latLng, places: $places, credits: $credits)';
}


}

/// @nodoc
abstract mixin class $MapsResponseCopyWith<$Res>  {
  factory $MapsResponseCopyWith(MapsResponse value, $Res Function(MapsResponse) _then) = _$MapsResponseCopyWithImpl;
@useResult
$Res call({
 MapsQuery searchParameters,@JsonKey(name: 'll')@LatLngConverter() LatLng? latLng, List<MapResult> places, int credits
});


$MapsQueryCopyWith<$Res> get searchParameters;

}
/// @nodoc
class _$MapsResponseCopyWithImpl<$Res>
    implements $MapsResponseCopyWith<$Res> {
  _$MapsResponseCopyWithImpl(this._self, this._then);

  final MapsResponse _self;
  final $Res Function(MapsResponse) _then;

/// Create a copy of MapsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? searchParameters = null,Object? latLng = freezed,Object? places = null,Object? credits = null,}) {
  return _then(_self.copyWith(
searchParameters: null == searchParameters ? _self.searchParameters : searchParameters // ignore: cast_nullable_to_non_nullable
as MapsQuery,latLng: freezed == latLng ? _self.latLng : latLng // ignore: cast_nullable_to_non_nullable
as LatLng?,places: null == places ? _self.places : places // ignore: cast_nullable_to_non_nullable
as List<MapResult>,credits: null == credits ? _self.credits : credits // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of MapsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MapsQueryCopyWith<$Res> get searchParameters {
  
  return $MapsQueryCopyWith<$Res>(_self.searchParameters, (value) {
    return _then(_self.copyWith(searchParameters: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _MapsResponse extends MapsResponse {
  const _MapsResponse({required this.searchParameters, @JsonKey(name: 'll')@LatLngConverter() this.latLng, required final  List<MapResult> places, required this.credits}): _places = places,super._();
  factory _MapsResponse.fromJson(Map<String, dynamic> json) => _$MapsResponseFromJson(json);

/// {@macro flutter_serper.responses.searchParameters}
@override final  MapsQuery searchParameters;
/// The latitude and longitude coordinates returned by the Maps API
///
/// Contains the location coordinates in the format "@lat,lng,zoom"
@override@JsonKey(name: 'll')@LatLngConverter() final  LatLng? latLng;
/// List of places returned by the Maps API
///
/// Contains basic place information including position and place ID.
 final  List<MapResult> _places;
/// List of places returned by the Maps API
///
/// Contains basic place information including position and place ID.
@override List<MapResult> get places {
  if (_places is EqualUnmodifiableListView) return _places;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_places);
}

/// {@macro flutter_serper.responses.credits}
@override final  int credits;

/// Create a copy of MapsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MapsResponseCopyWith<_MapsResponse> get copyWith => __$MapsResponseCopyWithImpl<_MapsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MapsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MapsResponse&&(identical(other.searchParameters, searchParameters) || other.searchParameters == searchParameters)&&(identical(other.latLng, latLng) || other.latLng == latLng)&&const DeepCollectionEquality().equals(other._places, _places)&&(identical(other.credits, credits) || other.credits == credits));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,searchParameters,latLng,const DeepCollectionEquality().hash(_places),credits);

@override
String toString() {
  return 'MapsResponse(searchParameters: $searchParameters, latLng: $latLng, places: $places, credits: $credits)';
}


}

/// @nodoc
abstract mixin class _$MapsResponseCopyWith<$Res> implements $MapsResponseCopyWith<$Res> {
  factory _$MapsResponseCopyWith(_MapsResponse value, $Res Function(_MapsResponse) _then) = __$MapsResponseCopyWithImpl;
@override @useResult
$Res call({
 MapsQuery searchParameters,@JsonKey(name: 'll')@LatLngConverter() LatLng? latLng, List<MapResult> places, int credits
});


@override $MapsQueryCopyWith<$Res> get searchParameters;

}
/// @nodoc
class __$MapsResponseCopyWithImpl<$Res>
    implements _$MapsResponseCopyWith<$Res> {
  __$MapsResponseCopyWithImpl(this._self, this._then);

  final _MapsResponse _self;
  final $Res Function(_MapsResponse) _then;

/// Create a copy of MapsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? searchParameters = null,Object? latLng = freezed,Object? places = null,Object? credits = null,}) {
  return _then(_MapsResponse(
searchParameters: null == searchParameters ? _self.searchParameters : searchParameters // ignore: cast_nullable_to_non_nullable
as MapsQuery,latLng: freezed == latLng ? _self.latLng : latLng // ignore: cast_nullable_to_non_nullable
as LatLng?,places: null == places ? _self._places : places // ignore: cast_nullable_to_non_nullable
as List<MapResult>,credits: null == credits ? _self.credits : credits // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of MapsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MapsQueryCopyWith<$Res> get searchParameters {
  
  return $MapsQueryCopyWith<$Res>(_self.searchParameters, (value) {
    return _then(_self.copyWith(searchParameters: value));
  });
}
}


/// @nodoc
mixin _$ReviewsResponse {

/// {@macro flutter_serper.responses.searchParameters}
 ReviewsQuery get searchParameters;/// List of place reviews returned by the API
///
/// Contains reviews for the specified place.
 List<PlaceReview> get reviews;/// List of topics related to the reviews
 List<PlaceReviewTopic> get topics;/// Token for fetching the next page of reviews
///
/// If more reviews are available, this token can be used to fetch the next batch.
 String? get nextPageToken;/// {@macro flutter_serper.responses.credits}
 int get credits;
/// Create a copy of ReviewsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewsResponseCopyWith<ReviewsResponse> get copyWith => _$ReviewsResponseCopyWithImpl<ReviewsResponse>(this as ReviewsResponse, _$identity);

  /// Serializes this ReviewsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewsResponse&&(identical(other.searchParameters, searchParameters) || other.searchParameters == searchParameters)&&const DeepCollectionEquality().equals(other.reviews, reviews)&&const DeepCollectionEquality().equals(other.topics, topics)&&(identical(other.nextPageToken, nextPageToken) || other.nextPageToken == nextPageToken)&&(identical(other.credits, credits) || other.credits == credits));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,searchParameters,const DeepCollectionEquality().hash(reviews),const DeepCollectionEquality().hash(topics),nextPageToken,credits);

@override
String toString() {
  return 'ReviewsResponse(searchParameters: $searchParameters, reviews: $reviews, topics: $topics, nextPageToken: $nextPageToken, credits: $credits)';
}


}

/// @nodoc
abstract mixin class $ReviewsResponseCopyWith<$Res>  {
  factory $ReviewsResponseCopyWith(ReviewsResponse value, $Res Function(ReviewsResponse) _then) = _$ReviewsResponseCopyWithImpl;
@useResult
$Res call({
 ReviewsQuery searchParameters, List<PlaceReview> reviews, List<PlaceReviewTopic> topics, String? nextPageToken, int credits
});


$ReviewsQueryCopyWith<$Res> get searchParameters;

}
/// @nodoc
class _$ReviewsResponseCopyWithImpl<$Res>
    implements $ReviewsResponseCopyWith<$Res> {
  _$ReviewsResponseCopyWithImpl(this._self, this._then);

  final ReviewsResponse _self;
  final $Res Function(ReviewsResponse) _then;

/// Create a copy of ReviewsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? searchParameters = null,Object? reviews = null,Object? topics = null,Object? nextPageToken = freezed,Object? credits = null,}) {
  return _then(_self.copyWith(
searchParameters: null == searchParameters ? _self.searchParameters : searchParameters // ignore: cast_nullable_to_non_nullable
as ReviewsQuery,reviews: null == reviews ? _self.reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<PlaceReview>,topics: null == topics ? _self.topics : topics // ignore: cast_nullable_to_non_nullable
as List<PlaceReviewTopic>,nextPageToken: freezed == nextPageToken ? _self.nextPageToken : nextPageToken // ignore: cast_nullable_to_non_nullable
as String?,credits: null == credits ? _self.credits : credits // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of ReviewsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewsQueryCopyWith<$Res> get searchParameters {
  
  return $ReviewsQueryCopyWith<$Res>(_self.searchParameters, (value) {
    return _then(_self.copyWith(searchParameters: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _ReviewsResponse extends ReviewsResponse {
  const _ReviewsResponse({required this.searchParameters, required final  List<PlaceReview> reviews, required final  List<PlaceReviewTopic> topics, this.nextPageToken, required this.credits}): _reviews = reviews,_topics = topics,super._();
  factory _ReviewsResponse.fromJson(Map<String, dynamic> json) => _$ReviewsResponseFromJson(json);

/// {@macro flutter_serper.responses.searchParameters}
@override final  ReviewsQuery searchParameters;
/// List of place reviews returned by the API
///
/// Contains reviews for the specified place.
 final  List<PlaceReview> _reviews;
/// List of place reviews returned by the API
///
/// Contains reviews for the specified place.
@override List<PlaceReview> get reviews {
  if (_reviews is EqualUnmodifiableListView) return _reviews;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reviews);
}

/// List of topics related to the reviews
 final  List<PlaceReviewTopic> _topics;
/// List of topics related to the reviews
@override List<PlaceReviewTopic> get topics {
  if (_topics is EqualUnmodifiableListView) return _topics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topics);
}

/// Token for fetching the next page of reviews
///
/// If more reviews are available, this token can be used to fetch the next batch.
@override final  String? nextPageToken;
/// {@macro flutter_serper.responses.credits}
@override final  int credits;

/// Create a copy of ReviewsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewsResponseCopyWith<_ReviewsResponse> get copyWith => __$ReviewsResponseCopyWithImpl<_ReviewsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewsResponse&&(identical(other.searchParameters, searchParameters) || other.searchParameters == searchParameters)&&const DeepCollectionEquality().equals(other._reviews, _reviews)&&const DeepCollectionEquality().equals(other._topics, _topics)&&(identical(other.nextPageToken, nextPageToken) || other.nextPageToken == nextPageToken)&&(identical(other.credits, credits) || other.credits == credits));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,searchParameters,const DeepCollectionEquality().hash(_reviews),const DeepCollectionEquality().hash(_topics),nextPageToken,credits);

@override
String toString() {
  return 'ReviewsResponse(searchParameters: $searchParameters, reviews: $reviews, topics: $topics, nextPageToken: $nextPageToken, credits: $credits)';
}


}

/// @nodoc
abstract mixin class _$ReviewsResponseCopyWith<$Res> implements $ReviewsResponseCopyWith<$Res> {
  factory _$ReviewsResponseCopyWith(_ReviewsResponse value, $Res Function(_ReviewsResponse) _then) = __$ReviewsResponseCopyWithImpl;
@override @useResult
$Res call({
 ReviewsQuery searchParameters, List<PlaceReview> reviews, List<PlaceReviewTopic> topics, String? nextPageToken, int credits
});


@override $ReviewsQueryCopyWith<$Res> get searchParameters;

}
/// @nodoc
class __$ReviewsResponseCopyWithImpl<$Res>
    implements _$ReviewsResponseCopyWith<$Res> {
  __$ReviewsResponseCopyWithImpl(this._self, this._then);

  final _ReviewsResponse _self;
  final $Res Function(_ReviewsResponse) _then;

/// Create a copy of ReviewsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? searchParameters = null,Object? reviews = null,Object? topics = null,Object? nextPageToken = freezed,Object? credits = null,}) {
  return _then(_ReviewsResponse(
searchParameters: null == searchParameters ? _self.searchParameters : searchParameters // ignore: cast_nullable_to_non_nullable
as ReviewsQuery,reviews: null == reviews ? _self._reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<PlaceReview>,topics: null == topics ? _self._topics : topics // ignore: cast_nullable_to_non_nullable
as List<PlaceReviewTopic>,nextPageToken: freezed == nextPageToken ? _self.nextPageToken : nextPageToken // ignore: cast_nullable_to_non_nullable
as String?,credits: null == credits ? _self.credits : credits // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of ReviewsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewsQueryCopyWith<$Res> get searchParameters {
  
  return $ReviewsQueryCopyWith<$Res>(_self.searchParameters, (value) {
    return _then(_self.copyWith(searchParameters: value));
  });
}
}


/// @nodoc
mixin _$NewsResponse {

/// {@macro flutter_serper.responses.searchParameters}
 NewsQuery get searchParameters;/// List of news results returned by the API
///
/// Contains news articles that match the search query.
 List<NewsResult> get news;/// {@macro flutter_serper.responses.credits}
 int get credits;
/// Create a copy of NewsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewsResponseCopyWith<NewsResponse> get copyWith => _$NewsResponseCopyWithImpl<NewsResponse>(this as NewsResponse, _$identity);

  /// Serializes this NewsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewsResponse&&(identical(other.searchParameters, searchParameters) || other.searchParameters == searchParameters)&&const DeepCollectionEquality().equals(other.news, news)&&(identical(other.credits, credits) || other.credits == credits));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,searchParameters,const DeepCollectionEquality().hash(news),credits);

@override
String toString() {
  return 'NewsResponse(searchParameters: $searchParameters, news: $news, credits: $credits)';
}


}

/// @nodoc
abstract mixin class $NewsResponseCopyWith<$Res>  {
  factory $NewsResponseCopyWith(NewsResponse value, $Res Function(NewsResponse) _then) = _$NewsResponseCopyWithImpl;
@useResult
$Res call({
 NewsQuery searchParameters, List<NewsResult> news, int credits
});


$NewsQueryCopyWith<$Res> get searchParameters;

}
/// @nodoc
class _$NewsResponseCopyWithImpl<$Res>
    implements $NewsResponseCopyWith<$Res> {
  _$NewsResponseCopyWithImpl(this._self, this._then);

  final NewsResponse _self;
  final $Res Function(NewsResponse) _then;

/// Create a copy of NewsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? searchParameters = null,Object? news = null,Object? credits = null,}) {
  return _then(_self.copyWith(
searchParameters: null == searchParameters ? _self.searchParameters : searchParameters // ignore: cast_nullable_to_non_nullable
as NewsQuery,news: null == news ? _self.news : news // ignore: cast_nullable_to_non_nullable
as List<NewsResult>,credits: null == credits ? _self.credits : credits // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of NewsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NewsQueryCopyWith<$Res> get searchParameters {
  
  return $NewsQueryCopyWith<$Res>(_self.searchParameters, (value) {
    return _then(_self.copyWith(searchParameters: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _NewsResponse extends NewsResponse {
  const _NewsResponse({required this.searchParameters, required final  List<NewsResult> news, required this.credits}): _news = news,super._();
  factory _NewsResponse.fromJson(Map<String, dynamic> json) => _$NewsResponseFromJson(json);

/// {@macro flutter_serper.responses.searchParameters}
@override final  NewsQuery searchParameters;
/// List of news results returned by the API
///
/// Contains news articles that match the search query.
 final  List<NewsResult> _news;
/// List of news results returned by the API
///
/// Contains news articles that match the search query.
@override List<NewsResult> get news {
  if (_news is EqualUnmodifiableListView) return _news;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_news);
}

/// {@macro flutter_serper.responses.credits}
@override final  int credits;

/// Create a copy of NewsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NewsResponseCopyWith<_NewsResponse> get copyWith => __$NewsResponseCopyWithImpl<_NewsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NewsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewsResponse&&(identical(other.searchParameters, searchParameters) || other.searchParameters == searchParameters)&&const DeepCollectionEquality().equals(other._news, _news)&&(identical(other.credits, credits) || other.credits == credits));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,searchParameters,const DeepCollectionEquality().hash(_news),credits);

@override
String toString() {
  return 'NewsResponse(searchParameters: $searchParameters, news: $news, credits: $credits)';
}


}

/// @nodoc
abstract mixin class _$NewsResponseCopyWith<$Res> implements $NewsResponseCopyWith<$Res> {
  factory _$NewsResponseCopyWith(_NewsResponse value, $Res Function(_NewsResponse) _then) = __$NewsResponseCopyWithImpl;
@override @useResult
$Res call({
 NewsQuery searchParameters, List<NewsResult> news, int credits
});


@override $NewsQueryCopyWith<$Res> get searchParameters;

}
/// @nodoc
class __$NewsResponseCopyWithImpl<$Res>
    implements _$NewsResponseCopyWith<$Res> {
  __$NewsResponseCopyWithImpl(this._self, this._then);

  final _NewsResponse _self;
  final $Res Function(_NewsResponse) _then;

/// Create a copy of NewsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? searchParameters = null,Object? news = null,Object? credits = null,}) {
  return _then(_NewsResponse(
searchParameters: null == searchParameters ? _self.searchParameters : searchParameters // ignore: cast_nullable_to_non_nullable
as NewsQuery,news: null == news ? _self._news : news // ignore: cast_nullable_to_non_nullable
as List<NewsResult>,credits: null == credits ? _self.credits : credits // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of NewsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NewsQueryCopyWith<$Res> get searchParameters {
  
  return $NewsQueryCopyWith<$Res>(_self.searchParameters, (value) {
    return _then(_self.copyWith(searchParameters: value));
  });
}
}


/// @nodoc
mixin _$ShoppingResponse {

/// {@macro flutter_serper.responses.searchParameters}
 ShoppingQuery get searchParameters;/// List of shopping results returned by the API
///
/// Contains products that match the search query.
 List<ShoppingResult> get shopping;// /// {@macro flutter_serper.responses.knowledgeGraph}
// KnowledgeGraphResult? knowledgeGraph,
/// {@macro flutter_serper.responses.credits}
 int get credits;
/// Create a copy of ShoppingResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShoppingResponseCopyWith<ShoppingResponse> get copyWith => _$ShoppingResponseCopyWithImpl<ShoppingResponse>(this as ShoppingResponse, _$identity);

  /// Serializes this ShoppingResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShoppingResponse&&(identical(other.searchParameters, searchParameters) || other.searchParameters == searchParameters)&&const DeepCollectionEquality().equals(other.shopping, shopping)&&(identical(other.credits, credits) || other.credits == credits));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,searchParameters,const DeepCollectionEquality().hash(shopping),credits);

@override
String toString() {
  return 'ShoppingResponse(searchParameters: $searchParameters, shopping: $shopping, credits: $credits)';
}


}

/// @nodoc
abstract mixin class $ShoppingResponseCopyWith<$Res>  {
  factory $ShoppingResponseCopyWith(ShoppingResponse value, $Res Function(ShoppingResponse) _then) = _$ShoppingResponseCopyWithImpl;
@useResult
$Res call({
 ShoppingQuery searchParameters, List<ShoppingResult> shopping, int credits
});


$ShoppingQueryCopyWith<$Res> get searchParameters;

}
/// @nodoc
class _$ShoppingResponseCopyWithImpl<$Res>
    implements $ShoppingResponseCopyWith<$Res> {
  _$ShoppingResponseCopyWithImpl(this._self, this._then);

  final ShoppingResponse _self;
  final $Res Function(ShoppingResponse) _then;

/// Create a copy of ShoppingResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? searchParameters = null,Object? shopping = null,Object? credits = null,}) {
  return _then(_self.copyWith(
searchParameters: null == searchParameters ? _self.searchParameters : searchParameters // ignore: cast_nullable_to_non_nullable
as ShoppingQuery,shopping: null == shopping ? _self.shopping : shopping // ignore: cast_nullable_to_non_nullable
as List<ShoppingResult>,credits: null == credits ? _self.credits : credits // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of ShoppingResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShoppingQueryCopyWith<$Res> get searchParameters {
  
  return $ShoppingQueryCopyWith<$Res>(_self.searchParameters, (value) {
    return _then(_self.copyWith(searchParameters: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _ShoppingResponse extends ShoppingResponse {
  const _ShoppingResponse({required this.searchParameters, required final  List<ShoppingResult> shopping, required this.credits}): _shopping = shopping,super._();
  factory _ShoppingResponse.fromJson(Map<String, dynamic> json) => _$ShoppingResponseFromJson(json);

/// {@macro flutter_serper.responses.searchParameters}
@override final  ShoppingQuery searchParameters;
/// List of shopping results returned by the API
///
/// Contains products that match the search query.
 final  List<ShoppingResult> _shopping;
/// List of shopping results returned by the API
///
/// Contains products that match the search query.
@override List<ShoppingResult> get shopping {
  if (_shopping is EqualUnmodifiableListView) return _shopping;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_shopping);
}

// /// {@macro flutter_serper.responses.knowledgeGraph}
// KnowledgeGraphResult? knowledgeGraph,
/// {@macro flutter_serper.responses.credits}
@override final  int credits;

/// Create a copy of ShoppingResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShoppingResponseCopyWith<_ShoppingResponse> get copyWith => __$ShoppingResponseCopyWithImpl<_ShoppingResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShoppingResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShoppingResponse&&(identical(other.searchParameters, searchParameters) || other.searchParameters == searchParameters)&&const DeepCollectionEquality().equals(other._shopping, _shopping)&&(identical(other.credits, credits) || other.credits == credits));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,searchParameters,const DeepCollectionEquality().hash(_shopping),credits);

@override
String toString() {
  return 'ShoppingResponse(searchParameters: $searchParameters, shopping: $shopping, credits: $credits)';
}


}

/// @nodoc
abstract mixin class _$ShoppingResponseCopyWith<$Res> implements $ShoppingResponseCopyWith<$Res> {
  factory _$ShoppingResponseCopyWith(_ShoppingResponse value, $Res Function(_ShoppingResponse) _then) = __$ShoppingResponseCopyWithImpl;
@override @useResult
$Res call({
 ShoppingQuery searchParameters, List<ShoppingResult> shopping, int credits
});


@override $ShoppingQueryCopyWith<$Res> get searchParameters;

}
/// @nodoc
class __$ShoppingResponseCopyWithImpl<$Res>
    implements _$ShoppingResponseCopyWith<$Res> {
  __$ShoppingResponseCopyWithImpl(this._self, this._then);

  final _ShoppingResponse _self;
  final $Res Function(_ShoppingResponse) _then;

/// Create a copy of ShoppingResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? searchParameters = null,Object? shopping = null,Object? credits = null,}) {
  return _then(_ShoppingResponse(
searchParameters: null == searchParameters ? _self.searchParameters : searchParameters // ignore: cast_nullable_to_non_nullable
as ShoppingQuery,shopping: null == shopping ? _self._shopping : shopping // ignore: cast_nullable_to_non_nullable
as List<ShoppingResult>,credits: null == credits ? _self.credits : credits // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of ShoppingResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShoppingQueryCopyWith<$Res> get searchParameters {
  
  return $ShoppingQueryCopyWith<$Res>(_self.searchParameters, (value) {
    return _then(_self.copyWith(searchParameters: value));
  });
}
}


/// @nodoc
mixin _$LensResponse {

/// {@macro flutter_serper.responses.searchParameters}
 LensQuery get searchParameters;/// {@macro flutter_serper.responses.organic}
///
/// For Lens API, these are results related to the image that was searched.
 List<LensResult> get organic;/// {@macro flutter_serper.responses.credits}
 int get credits;
/// Create a copy of LensResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LensResponseCopyWith<LensResponse> get copyWith => _$LensResponseCopyWithImpl<LensResponse>(this as LensResponse, _$identity);

  /// Serializes this LensResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LensResponse&&(identical(other.searchParameters, searchParameters) || other.searchParameters == searchParameters)&&const DeepCollectionEquality().equals(other.organic, organic)&&(identical(other.credits, credits) || other.credits == credits));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,searchParameters,const DeepCollectionEquality().hash(organic),credits);

@override
String toString() {
  return 'LensResponse(searchParameters: $searchParameters, organic: $organic, credits: $credits)';
}


}

/// @nodoc
abstract mixin class $LensResponseCopyWith<$Res>  {
  factory $LensResponseCopyWith(LensResponse value, $Res Function(LensResponse) _then) = _$LensResponseCopyWithImpl;
@useResult
$Res call({
 LensQuery searchParameters, List<LensResult> organic, int credits
});


$LensQueryCopyWith<$Res> get searchParameters;

}
/// @nodoc
class _$LensResponseCopyWithImpl<$Res>
    implements $LensResponseCopyWith<$Res> {
  _$LensResponseCopyWithImpl(this._self, this._then);

  final LensResponse _self;
  final $Res Function(LensResponse) _then;

/// Create a copy of LensResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? searchParameters = null,Object? organic = null,Object? credits = null,}) {
  return _then(_self.copyWith(
searchParameters: null == searchParameters ? _self.searchParameters : searchParameters // ignore: cast_nullable_to_non_nullable
as LensQuery,organic: null == organic ? _self.organic : organic // ignore: cast_nullable_to_non_nullable
as List<LensResult>,credits: null == credits ? _self.credits : credits // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of LensResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LensQueryCopyWith<$Res> get searchParameters {
  
  return $LensQueryCopyWith<$Res>(_self.searchParameters, (value) {
    return _then(_self.copyWith(searchParameters: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _LensResponse extends LensResponse {
  const _LensResponse({required this.searchParameters, required final  List<LensResult> organic, required this.credits}): _organic = organic,super._();
  factory _LensResponse.fromJson(Map<String, dynamic> json) => _$LensResponseFromJson(json);

/// {@macro flutter_serper.responses.searchParameters}
@override final  LensQuery searchParameters;
/// {@macro flutter_serper.responses.organic}
///
/// For Lens API, these are results related to the image that was searched.
 final  List<LensResult> _organic;
/// {@macro flutter_serper.responses.organic}
///
/// For Lens API, these are results related to the image that was searched.
@override List<LensResult> get organic {
  if (_organic is EqualUnmodifiableListView) return _organic;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_organic);
}

/// {@macro flutter_serper.responses.credits}
@override final  int credits;

/// Create a copy of LensResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LensResponseCopyWith<_LensResponse> get copyWith => __$LensResponseCopyWithImpl<_LensResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LensResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LensResponse&&(identical(other.searchParameters, searchParameters) || other.searchParameters == searchParameters)&&const DeepCollectionEquality().equals(other._organic, _organic)&&(identical(other.credits, credits) || other.credits == credits));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,searchParameters,const DeepCollectionEquality().hash(_organic),credits);

@override
String toString() {
  return 'LensResponse(searchParameters: $searchParameters, organic: $organic, credits: $credits)';
}


}

/// @nodoc
abstract mixin class _$LensResponseCopyWith<$Res> implements $LensResponseCopyWith<$Res> {
  factory _$LensResponseCopyWith(_LensResponse value, $Res Function(_LensResponse) _then) = __$LensResponseCopyWithImpl;
@override @useResult
$Res call({
 LensQuery searchParameters, List<LensResult> organic, int credits
});


@override $LensQueryCopyWith<$Res> get searchParameters;

}
/// @nodoc
class __$LensResponseCopyWithImpl<$Res>
    implements _$LensResponseCopyWith<$Res> {
  __$LensResponseCopyWithImpl(this._self, this._then);

  final _LensResponse _self;
  final $Res Function(_LensResponse) _then;

/// Create a copy of LensResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? searchParameters = null,Object? organic = null,Object? credits = null,}) {
  return _then(_LensResponse(
searchParameters: null == searchParameters ? _self.searchParameters : searchParameters // ignore: cast_nullable_to_non_nullable
as LensQuery,organic: null == organic ? _self._organic : organic // ignore: cast_nullable_to_non_nullable
as List<LensResult>,credits: null == credits ? _self.credits : credits // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of LensResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LensQueryCopyWith<$Res> get searchParameters {
  
  return $LensQueryCopyWith<$Res>(_self.searchParameters, (value) {
    return _then(_self.copyWith(searchParameters: value));
  });
}
}


/// @nodoc
mixin _$ScholarResponse {

/// {@macro flutter_serper.responses.searchParameters}
 ScholarQuery get searchParameters;/// {@macro flutter_serper.responses.organic}
///
/// For Scholar API, these are the academic results that match the search query.
 List<ScholarResult> get organic;/// {@macro flutter_serper.responses.credits}
 int get credits;
/// Create a copy of ScholarResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScholarResponseCopyWith<ScholarResponse> get copyWith => _$ScholarResponseCopyWithImpl<ScholarResponse>(this as ScholarResponse, _$identity);

  /// Serializes this ScholarResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScholarResponse&&(identical(other.searchParameters, searchParameters) || other.searchParameters == searchParameters)&&const DeepCollectionEquality().equals(other.organic, organic)&&(identical(other.credits, credits) || other.credits == credits));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,searchParameters,const DeepCollectionEquality().hash(organic),credits);

@override
String toString() {
  return 'ScholarResponse(searchParameters: $searchParameters, organic: $organic, credits: $credits)';
}


}

/// @nodoc
abstract mixin class $ScholarResponseCopyWith<$Res>  {
  factory $ScholarResponseCopyWith(ScholarResponse value, $Res Function(ScholarResponse) _then) = _$ScholarResponseCopyWithImpl;
@useResult
$Res call({
 ScholarQuery searchParameters, List<ScholarResult> organic, int credits
});


$ScholarQueryCopyWith<$Res> get searchParameters;

}
/// @nodoc
class _$ScholarResponseCopyWithImpl<$Res>
    implements $ScholarResponseCopyWith<$Res> {
  _$ScholarResponseCopyWithImpl(this._self, this._then);

  final ScholarResponse _self;
  final $Res Function(ScholarResponse) _then;

/// Create a copy of ScholarResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? searchParameters = null,Object? organic = null,Object? credits = null,}) {
  return _then(_self.copyWith(
searchParameters: null == searchParameters ? _self.searchParameters : searchParameters // ignore: cast_nullable_to_non_nullable
as ScholarQuery,organic: null == organic ? _self.organic : organic // ignore: cast_nullable_to_non_nullable
as List<ScholarResult>,credits: null == credits ? _self.credits : credits // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of ScholarResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScholarQueryCopyWith<$Res> get searchParameters {
  
  return $ScholarQueryCopyWith<$Res>(_self.searchParameters, (value) {
    return _then(_self.copyWith(searchParameters: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _ScholarResponse extends ScholarResponse {
  const _ScholarResponse({required this.searchParameters, required final  List<ScholarResult> organic, required this.credits}): _organic = organic,super._();
  factory _ScholarResponse.fromJson(Map<String, dynamic> json) => _$ScholarResponseFromJson(json);

/// {@macro flutter_serper.responses.searchParameters}
@override final  ScholarQuery searchParameters;
/// {@macro flutter_serper.responses.organic}
///
/// For Scholar API, these are the academic results that match the search query.
 final  List<ScholarResult> _organic;
/// {@macro flutter_serper.responses.organic}
///
/// For Scholar API, these are the academic results that match the search query.
@override List<ScholarResult> get organic {
  if (_organic is EqualUnmodifiableListView) return _organic;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_organic);
}

/// {@macro flutter_serper.responses.credits}
@override final  int credits;

/// Create a copy of ScholarResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScholarResponseCopyWith<_ScholarResponse> get copyWith => __$ScholarResponseCopyWithImpl<_ScholarResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScholarResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScholarResponse&&(identical(other.searchParameters, searchParameters) || other.searchParameters == searchParameters)&&const DeepCollectionEquality().equals(other._organic, _organic)&&(identical(other.credits, credits) || other.credits == credits));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,searchParameters,const DeepCollectionEquality().hash(_organic),credits);

@override
String toString() {
  return 'ScholarResponse(searchParameters: $searchParameters, organic: $organic, credits: $credits)';
}


}

/// @nodoc
abstract mixin class _$ScholarResponseCopyWith<$Res> implements $ScholarResponseCopyWith<$Res> {
  factory _$ScholarResponseCopyWith(_ScholarResponse value, $Res Function(_ScholarResponse) _then) = __$ScholarResponseCopyWithImpl;
@override @useResult
$Res call({
 ScholarQuery searchParameters, List<ScholarResult> organic, int credits
});


@override $ScholarQueryCopyWith<$Res> get searchParameters;

}
/// @nodoc
class __$ScholarResponseCopyWithImpl<$Res>
    implements _$ScholarResponseCopyWith<$Res> {
  __$ScholarResponseCopyWithImpl(this._self, this._then);

  final _ScholarResponse _self;
  final $Res Function(_ScholarResponse) _then;

/// Create a copy of ScholarResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? searchParameters = null,Object? organic = null,Object? credits = null,}) {
  return _then(_ScholarResponse(
searchParameters: null == searchParameters ? _self.searchParameters : searchParameters // ignore: cast_nullable_to_non_nullable
as ScholarQuery,organic: null == organic ? _self._organic : organic // ignore: cast_nullable_to_non_nullable
as List<ScholarResult>,credits: null == credits ? _self.credits : credits // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of ScholarResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScholarQueryCopyWith<$Res> get searchParameters {
  
  return $ScholarQueryCopyWith<$Res>(_self.searchParameters, (value) {
    return _then(_self.copyWith(searchParameters: value));
  });
}
}


/// @nodoc
mixin _$PatentsResponse {

/// {@macro flutter_serper.responses.searchParameters}
 PatentsQuery get searchParameters;/// {@macro flutter_serper.responses.organic}
///
/// For Patents API, these are the patent results that match the search query.
 List<PatentResult> get organic;/// {@macro flutter_serper.responses.credits}
 int get credits;
/// Create a copy of PatentsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatentsResponseCopyWith<PatentsResponse> get copyWith => _$PatentsResponseCopyWithImpl<PatentsResponse>(this as PatentsResponse, _$identity);

  /// Serializes this PatentsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatentsResponse&&(identical(other.searchParameters, searchParameters) || other.searchParameters == searchParameters)&&const DeepCollectionEquality().equals(other.organic, organic)&&(identical(other.credits, credits) || other.credits == credits));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,searchParameters,const DeepCollectionEquality().hash(organic),credits);

@override
String toString() {
  return 'PatentsResponse(searchParameters: $searchParameters, organic: $organic, credits: $credits)';
}


}

/// @nodoc
abstract mixin class $PatentsResponseCopyWith<$Res>  {
  factory $PatentsResponseCopyWith(PatentsResponse value, $Res Function(PatentsResponse) _then) = _$PatentsResponseCopyWithImpl;
@useResult
$Res call({
 PatentsQuery searchParameters, List<PatentResult> organic, int credits
});


$PatentsQueryCopyWith<$Res> get searchParameters;

}
/// @nodoc
class _$PatentsResponseCopyWithImpl<$Res>
    implements $PatentsResponseCopyWith<$Res> {
  _$PatentsResponseCopyWithImpl(this._self, this._then);

  final PatentsResponse _self;
  final $Res Function(PatentsResponse) _then;

/// Create a copy of PatentsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? searchParameters = null,Object? organic = null,Object? credits = null,}) {
  return _then(_self.copyWith(
searchParameters: null == searchParameters ? _self.searchParameters : searchParameters // ignore: cast_nullable_to_non_nullable
as PatentsQuery,organic: null == organic ? _self.organic : organic // ignore: cast_nullable_to_non_nullable
as List<PatentResult>,credits: null == credits ? _self.credits : credits // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of PatentsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PatentsQueryCopyWith<$Res> get searchParameters {
  
  return $PatentsQueryCopyWith<$Res>(_self.searchParameters, (value) {
    return _then(_self.copyWith(searchParameters: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _PatentsResponse extends PatentsResponse {
  const _PatentsResponse({required this.searchParameters, required final  List<PatentResult> organic, required this.credits}): _organic = organic,super._();
  factory _PatentsResponse.fromJson(Map<String, dynamic> json) => _$PatentsResponseFromJson(json);

/// {@macro flutter_serper.responses.searchParameters}
@override final  PatentsQuery searchParameters;
/// {@macro flutter_serper.responses.organic}
///
/// For Patents API, these are the patent results that match the search query.
 final  List<PatentResult> _organic;
/// {@macro flutter_serper.responses.organic}
///
/// For Patents API, these are the patent results that match the search query.
@override List<PatentResult> get organic {
  if (_organic is EqualUnmodifiableListView) return _organic;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_organic);
}

/// {@macro flutter_serper.responses.credits}
@override final  int credits;

/// Create a copy of PatentsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatentsResponseCopyWith<_PatentsResponse> get copyWith => __$PatentsResponseCopyWithImpl<_PatentsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PatentsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatentsResponse&&(identical(other.searchParameters, searchParameters) || other.searchParameters == searchParameters)&&const DeepCollectionEquality().equals(other._organic, _organic)&&(identical(other.credits, credits) || other.credits == credits));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,searchParameters,const DeepCollectionEquality().hash(_organic),credits);

@override
String toString() {
  return 'PatentsResponse(searchParameters: $searchParameters, organic: $organic, credits: $credits)';
}


}

/// @nodoc
abstract mixin class _$PatentsResponseCopyWith<$Res> implements $PatentsResponseCopyWith<$Res> {
  factory _$PatentsResponseCopyWith(_PatentsResponse value, $Res Function(_PatentsResponse) _then) = __$PatentsResponseCopyWithImpl;
@override @useResult
$Res call({
 PatentsQuery searchParameters, List<PatentResult> organic, int credits
});


@override $PatentsQueryCopyWith<$Res> get searchParameters;

}
/// @nodoc
class __$PatentsResponseCopyWithImpl<$Res>
    implements _$PatentsResponseCopyWith<$Res> {
  __$PatentsResponseCopyWithImpl(this._self, this._then);

  final _PatentsResponse _self;
  final $Res Function(_PatentsResponse) _then;

/// Create a copy of PatentsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? searchParameters = null,Object? organic = null,Object? credits = null,}) {
  return _then(_PatentsResponse(
searchParameters: null == searchParameters ? _self.searchParameters : searchParameters // ignore: cast_nullable_to_non_nullable
as PatentsQuery,organic: null == organic ? _self._organic : organic // ignore: cast_nullable_to_non_nullable
as List<PatentResult>,credits: null == credits ? _self.credits : credits // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of PatentsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PatentsQueryCopyWith<$Res> get searchParameters {
  
  return $PatentsQueryCopyWith<$Res>(_self.searchParameters, (value) {
    return _then(_self.copyWith(searchParameters: value));
  });
}
}


/// @nodoc
mixin _$AutocompleteResponse {

/// {@macro flutter_serper.responses.searchParameters}
 AutocompleteQuery get searchParameters;/// List of autocomplete suggestions returned by the API
///
/// Each suggestion is a possible completion of the user's query.
 List<AutocompleteSuggestion> get suggestions;/// {@macro flutter_serper.responses.credits}
 int get credits;
/// Create a copy of AutocompleteResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AutocompleteResponseCopyWith<AutocompleteResponse> get copyWith => _$AutocompleteResponseCopyWithImpl<AutocompleteResponse>(this as AutocompleteResponse, _$identity);

  /// Serializes this AutocompleteResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AutocompleteResponse&&(identical(other.searchParameters, searchParameters) || other.searchParameters == searchParameters)&&const DeepCollectionEquality().equals(other.suggestions, suggestions)&&(identical(other.credits, credits) || other.credits == credits));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,searchParameters,const DeepCollectionEquality().hash(suggestions),credits);

@override
String toString() {
  return 'AutocompleteResponse(searchParameters: $searchParameters, suggestions: $suggestions, credits: $credits)';
}


}

/// @nodoc
abstract mixin class $AutocompleteResponseCopyWith<$Res>  {
  factory $AutocompleteResponseCopyWith(AutocompleteResponse value, $Res Function(AutocompleteResponse) _then) = _$AutocompleteResponseCopyWithImpl;
@useResult
$Res call({
 AutocompleteQuery searchParameters, List<AutocompleteSuggestion> suggestions, int credits
});


$AutocompleteQueryCopyWith<$Res> get searchParameters;

}
/// @nodoc
class _$AutocompleteResponseCopyWithImpl<$Res>
    implements $AutocompleteResponseCopyWith<$Res> {
  _$AutocompleteResponseCopyWithImpl(this._self, this._then);

  final AutocompleteResponse _self;
  final $Res Function(AutocompleteResponse) _then;

/// Create a copy of AutocompleteResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? searchParameters = null,Object? suggestions = null,Object? credits = null,}) {
  return _then(_self.copyWith(
searchParameters: null == searchParameters ? _self.searchParameters : searchParameters // ignore: cast_nullable_to_non_nullable
as AutocompleteQuery,suggestions: null == suggestions ? _self.suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<AutocompleteSuggestion>,credits: null == credits ? _self.credits : credits // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of AutocompleteResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AutocompleteQueryCopyWith<$Res> get searchParameters {
  
  return $AutocompleteQueryCopyWith<$Res>(_self.searchParameters, (value) {
    return _then(_self.copyWith(searchParameters: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _AutocompleteResponse extends AutocompleteResponse {
  const _AutocompleteResponse({required this.searchParameters, required final  List<AutocompleteSuggestion> suggestions, required this.credits}): _suggestions = suggestions,super._();
  factory _AutocompleteResponse.fromJson(Map<String, dynamic> json) => _$AutocompleteResponseFromJson(json);

/// {@macro flutter_serper.responses.searchParameters}
@override final  AutocompleteQuery searchParameters;
/// List of autocomplete suggestions returned by the API
///
/// Each suggestion is a possible completion of the user's query.
 final  List<AutocompleteSuggestion> _suggestions;
/// List of autocomplete suggestions returned by the API
///
/// Each suggestion is a possible completion of the user's query.
@override List<AutocompleteSuggestion> get suggestions {
  if (_suggestions is EqualUnmodifiableListView) return _suggestions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_suggestions);
}

/// {@macro flutter_serper.responses.credits}
@override final  int credits;

/// Create a copy of AutocompleteResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AutocompleteResponseCopyWith<_AutocompleteResponse> get copyWith => __$AutocompleteResponseCopyWithImpl<_AutocompleteResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AutocompleteResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AutocompleteResponse&&(identical(other.searchParameters, searchParameters) || other.searchParameters == searchParameters)&&const DeepCollectionEquality().equals(other._suggestions, _suggestions)&&(identical(other.credits, credits) || other.credits == credits));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,searchParameters,const DeepCollectionEquality().hash(_suggestions),credits);

@override
String toString() {
  return 'AutocompleteResponse(searchParameters: $searchParameters, suggestions: $suggestions, credits: $credits)';
}


}

/// @nodoc
abstract mixin class _$AutocompleteResponseCopyWith<$Res> implements $AutocompleteResponseCopyWith<$Res> {
  factory _$AutocompleteResponseCopyWith(_AutocompleteResponse value, $Res Function(_AutocompleteResponse) _then) = __$AutocompleteResponseCopyWithImpl;
@override @useResult
$Res call({
 AutocompleteQuery searchParameters, List<AutocompleteSuggestion> suggestions, int credits
});


@override $AutocompleteQueryCopyWith<$Res> get searchParameters;

}
/// @nodoc
class __$AutocompleteResponseCopyWithImpl<$Res>
    implements _$AutocompleteResponseCopyWith<$Res> {
  __$AutocompleteResponseCopyWithImpl(this._self, this._then);

  final _AutocompleteResponse _self;
  final $Res Function(_AutocompleteResponse) _then;

/// Create a copy of AutocompleteResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? searchParameters = null,Object? suggestions = null,Object? credits = null,}) {
  return _then(_AutocompleteResponse(
searchParameters: null == searchParameters ? _self.searchParameters : searchParameters // ignore: cast_nullable_to_non_nullable
as AutocompleteQuery,suggestions: null == suggestions ? _self._suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<AutocompleteSuggestion>,credits: null == credits ? _self.credits : credits // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of AutocompleteResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AutocompleteQueryCopyWith<$Res> get searchParameters {
  
  return $AutocompleteQueryCopyWith<$Res>(_self.searchParameters, (value) {
    return _then(_self.copyWith(searchParameters: value));
  });
}
}


/// @nodoc
mixin _$WebpageResponse {

/// List of webpage content results returned by the API
///
/// Contains webpages that match the search query.
 List<WebpageResult> get results;
/// Create a copy of WebpageResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WebpageResponseCopyWith<WebpageResponse> get copyWith => _$WebpageResponseCopyWithImpl<WebpageResponse>(this as WebpageResponse, _$identity);

  /// Serializes this WebpageResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WebpageResponse&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'WebpageResponse(results: $results)';
}


}

/// @nodoc
abstract mixin class $WebpageResponseCopyWith<$Res>  {
  factory $WebpageResponseCopyWith(WebpageResponse value, $Res Function(WebpageResponse) _then) = _$WebpageResponseCopyWithImpl;
@useResult
$Res call({
 List<WebpageResult> results
});




}
/// @nodoc
class _$WebpageResponseCopyWithImpl<$Res>
    implements $WebpageResponseCopyWith<$Res> {
  _$WebpageResponseCopyWithImpl(this._self, this._then);

  final WebpageResponse _self;
  final $Res Function(WebpageResponse) _then;

/// Create a copy of WebpageResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? results = null,}) {
  return _then(_self.copyWith(
results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<WebpageResult>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _WebpageResponse extends WebpageResponse {
  const _WebpageResponse({required final  List<WebpageResult> results}): _results = results,super._();
  factory _WebpageResponse.fromJson(Map<String, dynamic> json) => _$WebpageResponseFromJson(json);

/// List of webpage content results returned by the API
///
/// Contains webpages that match the search query.
 final  List<WebpageResult> _results;
/// List of webpage content results returned by the API
///
/// Contains webpages that match the search query.
@override List<WebpageResult> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of WebpageResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WebpageResponseCopyWith<_WebpageResponse> get copyWith => __$WebpageResponseCopyWithImpl<_WebpageResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WebpageResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WebpageResponse&&const DeepCollectionEquality().equals(other._results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'WebpageResponse(results: $results)';
}


}

/// @nodoc
abstract mixin class _$WebpageResponseCopyWith<$Res> implements $WebpageResponseCopyWith<$Res> {
  factory _$WebpageResponseCopyWith(_WebpageResponse value, $Res Function(_WebpageResponse) _then) = __$WebpageResponseCopyWithImpl;
@override @useResult
$Res call({
 List<WebpageResult> results
});




}
/// @nodoc
class __$WebpageResponseCopyWithImpl<$Res>
    implements _$WebpageResponseCopyWith<$Res> {
  __$WebpageResponseCopyWithImpl(this._self, this._then);

  final _WebpageResponse _self;
  final $Res Function(_WebpageResponse) _then;

/// Create a copy of WebpageResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? results = null,}) {
  return _then(_WebpageResponse(
results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<WebpageResult>,
  ));
}


}

// dart format on
