// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'results.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AutocompleteSuggestion {

/// The suggested search query completion.
///
/// This is a possible completion of the user's partial query.
 String get value;
/// Create a copy of AutocompleteSuggestion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AutocompleteSuggestionCopyWith<AutocompleteSuggestion> get copyWith => _$AutocompleteSuggestionCopyWithImpl<AutocompleteSuggestion>(this as AutocompleteSuggestion, _$identity);

  /// Serializes this AutocompleteSuggestion to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AutocompleteSuggestion&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'AutocompleteSuggestion(value: $value)';
}


}

/// @nodoc
abstract mixin class $AutocompleteSuggestionCopyWith<$Res>  {
  factory $AutocompleteSuggestionCopyWith(AutocompleteSuggestion value, $Res Function(AutocompleteSuggestion) _then) = _$AutocompleteSuggestionCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$AutocompleteSuggestionCopyWithImpl<$Res>
    implements $AutocompleteSuggestionCopyWith<$Res> {
  _$AutocompleteSuggestionCopyWithImpl(this._self, this._then);

  final AutocompleteSuggestion _self;
  final $Res Function(AutocompleteSuggestion) _then;

/// Create a copy of AutocompleteSuggestion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AutocompleteSuggestion implements AutocompleteSuggestion {
  const _AutocompleteSuggestion({required this.value});
  factory _AutocompleteSuggestion.fromJson(Map<String, dynamic> json) => _$AutocompleteSuggestionFromJson(json);

/// The suggested search query completion.
///
/// This is a possible completion of the user's partial query.
@override final  String value;

/// Create a copy of AutocompleteSuggestion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AutocompleteSuggestionCopyWith<_AutocompleteSuggestion> get copyWith => __$AutocompleteSuggestionCopyWithImpl<_AutocompleteSuggestion>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AutocompleteSuggestionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AutocompleteSuggestion&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'AutocompleteSuggestion(value: $value)';
}


}

/// @nodoc
abstract mixin class _$AutocompleteSuggestionCopyWith<$Res> implements $AutocompleteSuggestionCopyWith<$Res> {
  factory _$AutocompleteSuggestionCopyWith(_AutocompleteSuggestion value, $Res Function(_AutocompleteSuggestion) _then) = __$AutocompleteSuggestionCopyWithImpl;
@override @useResult
$Res call({
 String value
});




}
/// @nodoc
class __$AutocompleteSuggestionCopyWithImpl<$Res>
    implements _$AutocompleteSuggestionCopyWith<$Res> {
  __$AutocompleteSuggestionCopyWithImpl(this._self, this._then);

  final _AutocompleteSuggestion _self;
  final $Res Function(_AutocompleteSuggestion) _then;

/// Create a copy of AutocompleteSuggestion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_AutocompleteSuggestion(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$OrganicResult {

/// {@template flutter_serper.results.title}
/// The title of the result.
///
/// This is typically the main heading or name associated with the search result.
/// {@endtemplate}
 String? get title;/// {@template flutter_serper.results.link}
/// The URL link to the result.
///
/// This URL can be used to navigate to the full content of the search result.
/// {@endtemplate}
 String? get link;/// {@template flutter_serper.results.snippet}
/// A brief excerpt or description of the result.
///
/// This provides a summary of the content to help users understand what the result contains.
/// {@endtemplate}
 String? get snippet;/// {@template flutter_serper.results.date}
/// The date associated with the result.
///
/// This could be a publication date, review date, or other relevant date information.
/// {@endtemplate}
 String? get date;/// {@template flutter_serper.results.rating}
/// The rating associated with the result.
///
/// Typically represented as a number (often between 0-5) indicating user satisfaction or quality.
/// {@endtemplate}
 double? get rating;/// The count of ratings for this result.
///
/// Represents the number of user ratings that contributed to the overall rating.
 int? get ratingCount;/// {@template flutter_serper.results.imageUrl}
/// The URL to the full-size image.
///
/// This URL can be used to display or download the full-size image.
/// {@endtemplate}
 String? get imageUrl;/// {@template flutter_serper.results.position}
/// The position of this result in the search results list.
///
/// Position is zero-based, with 0 being the first result.
/// {@endtemplate}
 int? get position;/// Additional links to specific sections within the result website.
///
/// These are subcategory links that provide direct access to different
/// sections of the website.
 List<OrganicSitelink>? get sitelinks;
/// Create a copy of OrganicResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrganicResultCopyWith<OrganicResult> get copyWith => _$OrganicResultCopyWithImpl<OrganicResult>(this as OrganicResult, _$identity);

  /// Serializes this OrganicResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrganicResult&&(identical(other.title, title) || other.title == title)&&(identical(other.link, link) || other.link == link)&&(identical(other.snippet, snippet) || other.snippet == snippet)&&(identical(other.date, date) || other.date == date)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.ratingCount, ratingCount) || other.ratingCount == ratingCount)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.position, position) || other.position == position)&&const DeepCollectionEquality().equals(other.sitelinks, sitelinks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,link,snippet,date,rating,ratingCount,imageUrl,position,const DeepCollectionEquality().hash(sitelinks));

@override
String toString() {
  return 'OrganicResult(title: $title, link: $link, snippet: $snippet, date: $date, rating: $rating, ratingCount: $ratingCount, imageUrl: $imageUrl, position: $position, sitelinks: $sitelinks)';
}


}

/// @nodoc
abstract mixin class $OrganicResultCopyWith<$Res>  {
  factory $OrganicResultCopyWith(OrganicResult value, $Res Function(OrganicResult) _then) = _$OrganicResultCopyWithImpl;
@useResult
$Res call({
 String? title, String? link, String? snippet, String? date, double? rating, int? ratingCount, String? imageUrl, int? position, List<OrganicSitelink>? sitelinks
});




}
/// @nodoc
class _$OrganicResultCopyWithImpl<$Res>
    implements $OrganicResultCopyWith<$Res> {
  _$OrganicResultCopyWithImpl(this._self, this._then);

  final OrganicResult _self;
  final $Res Function(OrganicResult) _then;

/// Create a copy of OrganicResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? link = freezed,Object? snippet = freezed,Object? date = freezed,Object? rating = freezed,Object? ratingCount = freezed,Object? imageUrl = freezed,Object? position = freezed,Object? sitelinks = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,snippet: freezed == snippet ? _self.snippet : snippet // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,ratingCount: freezed == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as int?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,sitelinks: freezed == sitelinks ? _self.sitelinks : sitelinks // ignore: cast_nullable_to_non_nullable
as List<OrganicSitelink>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _OrganicResult implements OrganicResult {
  const _OrganicResult({this.title, this.link, this.snippet, this.date, this.rating, this.ratingCount, this.imageUrl, this.position, final  List<OrganicSitelink>? sitelinks}): _sitelinks = sitelinks;
  factory _OrganicResult.fromJson(Map<String, dynamic> json) => _$OrganicResultFromJson(json);

/// {@template flutter_serper.results.title}
/// The title of the result.
///
/// This is typically the main heading or name associated with the search result.
/// {@endtemplate}
@override final  String? title;
/// {@template flutter_serper.results.link}
/// The URL link to the result.
///
/// This URL can be used to navigate to the full content of the search result.
/// {@endtemplate}
@override final  String? link;
/// {@template flutter_serper.results.snippet}
/// A brief excerpt or description of the result.
///
/// This provides a summary of the content to help users understand what the result contains.
/// {@endtemplate}
@override final  String? snippet;
/// {@template flutter_serper.results.date}
/// The date associated with the result.
///
/// This could be a publication date, review date, or other relevant date information.
/// {@endtemplate}
@override final  String? date;
/// {@template flutter_serper.results.rating}
/// The rating associated with the result.
///
/// Typically represented as a number (often between 0-5) indicating user satisfaction or quality.
/// {@endtemplate}
@override final  double? rating;
/// The count of ratings for this result.
///
/// Represents the number of user ratings that contributed to the overall rating.
@override final  int? ratingCount;
/// {@template flutter_serper.results.imageUrl}
/// The URL to the full-size image.
///
/// This URL can be used to display or download the full-size image.
/// {@endtemplate}
@override final  String? imageUrl;
/// {@template flutter_serper.results.position}
/// The position of this result in the search results list.
///
/// Position is zero-based, with 0 being the first result.
/// {@endtemplate}
@override final  int? position;
/// Additional links to specific sections within the result website.
///
/// These are subcategory links that provide direct access to different
/// sections of the website.
 final  List<OrganicSitelink>? _sitelinks;
/// Additional links to specific sections within the result website.
///
/// These are subcategory links that provide direct access to different
/// sections of the website.
@override List<OrganicSitelink>? get sitelinks {
  final value = _sitelinks;
  if (value == null) return null;
  if (_sitelinks is EqualUnmodifiableListView) return _sitelinks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of OrganicResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrganicResultCopyWith<_OrganicResult> get copyWith => __$OrganicResultCopyWithImpl<_OrganicResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrganicResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrganicResult&&(identical(other.title, title) || other.title == title)&&(identical(other.link, link) || other.link == link)&&(identical(other.snippet, snippet) || other.snippet == snippet)&&(identical(other.date, date) || other.date == date)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.ratingCount, ratingCount) || other.ratingCount == ratingCount)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.position, position) || other.position == position)&&const DeepCollectionEquality().equals(other._sitelinks, _sitelinks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,link,snippet,date,rating,ratingCount,imageUrl,position,const DeepCollectionEquality().hash(_sitelinks));

@override
String toString() {
  return 'OrganicResult(title: $title, link: $link, snippet: $snippet, date: $date, rating: $rating, ratingCount: $ratingCount, imageUrl: $imageUrl, position: $position, sitelinks: $sitelinks)';
}


}

/// @nodoc
abstract mixin class _$OrganicResultCopyWith<$Res> implements $OrganicResultCopyWith<$Res> {
  factory _$OrganicResultCopyWith(_OrganicResult value, $Res Function(_OrganicResult) _then) = __$OrganicResultCopyWithImpl;
@override @useResult
$Res call({
 String? title, String? link, String? snippet, String? date, double? rating, int? ratingCount, String? imageUrl, int? position, List<OrganicSitelink>? sitelinks
});




}
/// @nodoc
class __$OrganicResultCopyWithImpl<$Res>
    implements _$OrganicResultCopyWith<$Res> {
  __$OrganicResultCopyWithImpl(this._self, this._then);

  final _OrganicResult _self;
  final $Res Function(_OrganicResult) _then;

/// Create a copy of OrganicResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? link = freezed,Object? snippet = freezed,Object? date = freezed,Object? rating = freezed,Object? ratingCount = freezed,Object? imageUrl = freezed,Object? position = freezed,Object? sitelinks = freezed,}) {
  return _then(_OrganicResult(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,snippet: freezed == snippet ? _self.snippet : snippet // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,ratingCount: freezed == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as int?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,sitelinks: freezed == sitelinks ? _self._sitelinks : sitelinks // ignore: cast_nullable_to_non_nullable
as List<OrganicSitelink>?,
  ));
}


}


/// @nodoc
mixin _$OrganicSitelink {

/// The title of the sitelink.
 String? get title;/// The URL link to the sitelink.
 String? get link;
/// Create a copy of OrganicSitelink
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrganicSitelinkCopyWith<OrganicSitelink> get copyWith => _$OrganicSitelinkCopyWithImpl<OrganicSitelink>(this as OrganicSitelink, _$identity);

  /// Serializes this OrganicSitelink to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrganicSitelink&&(identical(other.title, title) || other.title == title)&&(identical(other.link, link) || other.link == link));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,link);

@override
String toString() {
  return 'OrganicSitelink(title: $title, link: $link)';
}


}

/// @nodoc
abstract mixin class $OrganicSitelinkCopyWith<$Res>  {
  factory $OrganicSitelinkCopyWith(OrganicSitelink value, $Res Function(OrganicSitelink) _then) = _$OrganicSitelinkCopyWithImpl;
@useResult
$Res call({
 String? title, String? link
});




}
/// @nodoc
class _$OrganicSitelinkCopyWithImpl<$Res>
    implements $OrganicSitelinkCopyWith<$Res> {
  _$OrganicSitelinkCopyWithImpl(this._self, this._then);

  final OrganicSitelink _self;
  final $Res Function(OrganicSitelink) _then;

/// Create a copy of OrganicSitelink
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? link = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _OrganicSitelink implements OrganicSitelink {
  const _OrganicSitelink({this.title, this.link});
  factory _OrganicSitelink.fromJson(Map<String, dynamic> json) => _$OrganicSitelinkFromJson(json);

/// The title of the sitelink.
@override final  String? title;
/// The URL link to the sitelink.
@override final  String? link;

/// Create a copy of OrganicSitelink
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrganicSitelinkCopyWith<_OrganicSitelink> get copyWith => __$OrganicSitelinkCopyWithImpl<_OrganicSitelink>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrganicSitelinkToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrganicSitelink&&(identical(other.title, title) || other.title == title)&&(identical(other.link, link) || other.link == link));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,link);

@override
String toString() {
  return 'OrganicSitelink(title: $title, link: $link)';
}


}

/// @nodoc
abstract mixin class _$OrganicSitelinkCopyWith<$Res> implements $OrganicSitelinkCopyWith<$Res> {
  factory _$OrganicSitelinkCopyWith(_OrganicSitelink value, $Res Function(_OrganicSitelink) _then) = __$OrganicSitelinkCopyWithImpl;
@override @useResult
$Res call({
 String? title, String? link
});




}
/// @nodoc
class __$OrganicSitelinkCopyWithImpl<$Res>
    implements _$OrganicSitelinkCopyWith<$Res> {
  __$OrganicSitelinkCopyWithImpl(this._self, this._then);

  final _OrganicSitelink _self;
  final $Res Function(_OrganicSitelink) _then;

/// Create a copy of OrganicSitelink
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? link = freezed,}) {
  return _then(_OrganicSitelink(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$RelatedSearchResult {

/// The related search query text.
///
/// This is an alternative search term that users might be interested in.
 String? get query;
/// Create a copy of RelatedSearchResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RelatedSearchResultCopyWith<RelatedSearchResult> get copyWith => _$RelatedSearchResultCopyWithImpl<RelatedSearchResult>(this as RelatedSearchResult, _$identity);

  /// Serializes this RelatedSearchResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RelatedSearchResult&&(identical(other.query, query) || other.query == query));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'RelatedSearchResult(query: $query)';
}


}

/// @nodoc
abstract mixin class $RelatedSearchResultCopyWith<$Res>  {
  factory $RelatedSearchResultCopyWith(RelatedSearchResult value, $Res Function(RelatedSearchResult) _then) = _$RelatedSearchResultCopyWithImpl;
@useResult
$Res call({
 String? query
});




}
/// @nodoc
class _$RelatedSearchResultCopyWithImpl<$Res>
    implements $RelatedSearchResultCopyWith<$Res> {
  _$RelatedSearchResultCopyWithImpl(this._self, this._then);

  final RelatedSearchResult _self;
  final $Res Function(RelatedSearchResult) _then;

/// Create a copy of RelatedSearchResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = freezed,}) {
  return _then(_self.copyWith(
query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _RelatedSearchResult implements RelatedSearchResult {
  const _RelatedSearchResult({this.query});
  factory _RelatedSearchResult.fromJson(Map<String, dynamic> json) => _$RelatedSearchResultFromJson(json);

/// The related search query text.
///
/// This is an alternative search term that users might be interested in.
@override final  String? query;

/// Create a copy of RelatedSearchResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RelatedSearchResultCopyWith<_RelatedSearchResult> get copyWith => __$RelatedSearchResultCopyWithImpl<_RelatedSearchResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RelatedSearchResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RelatedSearchResult&&(identical(other.query, query) || other.query == query));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'RelatedSearchResult(query: $query)';
}


}

/// @nodoc
abstract mixin class _$RelatedSearchResultCopyWith<$Res> implements $RelatedSearchResultCopyWith<$Res> {
  factory _$RelatedSearchResultCopyWith(_RelatedSearchResult value, $Res Function(_RelatedSearchResult) _then) = __$RelatedSearchResultCopyWithImpl;
@override @useResult
$Res call({
 String? query
});




}
/// @nodoc
class __$RelatedSearchResultCopyWithImpl<$Res>
    implements _$RelatedSearchResultCopyWith<$Res> {
  __$RelatedSearchResultCopyWithImpl(this._self, this._then);

  final _RelatedSearchResult _self;
  final $Res Function(_RelatedSearchResult) _then;

/// Create a copy of RelatedSearchResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = freezed,}) {
  return _then(_RelatedSearchResult(
query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PeopleAlsoAskResult {

/// The question that people also ask about the search topic.
 String? get question;/// {@macro flutter_serper.results.snippet}
///
/// This is a brief answer to the question.
 String? get snippet;/// {@macro flutter_serper.results.title}
///
/// The title of the source that provides the answer.
 String? get title;/// {@macro flutter_serper.results.link}
///
/// Link to the source that provides more detailed information about the question.
 String? get link;
/// Create a copy of PeopleAlsoAskResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PeopleAlsoAskResultCopyWith<PeopleAlsoAskResult> get copyWith => _$PeopleAlsoAskResultCopyWithImpl<PeopleAlsoAskResult>(this as PeopleAlsoAskResult, _$identity);

  /// Serializes this PeopleAlsoAskResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PeopleAlsoAskResult&&(identical(other.question, question) || other.question == question)&&(identical(other.snippet, snippet) || other.snippet == snippet)&&(identical(other.title, title) || other.title == title)&&(identical(other.link, link) || other.link == link));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,question,snippet,title,link);

@override
String toString() {
  return 'PeopleAlsoAskResult(question: $question, snippet: $snippet, title: $title, link: $link)';
}


}

/// @nodoc
abstract mixin class $PeopleAlsoAskResultCopyWith<$Res>  {
  factory $PeopleAlsoAskResultCopyWith(PeopleAlsoAskResult value, $Res Function(PeopleAlsoAskResult) _then) = _$PeopleAlsoAskResultCopyWithImpl;
@useResult
$Res call({
 String? question, String? snippet, String? title, String? link
});




}
/// @nodoc
class _$PeopleAlsoAskResultCopyWithImpl<$Res>
    implements $PeopleAlsoAskResultCopyWith<$Res> {
  _$PeopleAlsoAskResultCopyWithImpl(this._self, this._then);

  final PeopleAlsoAskResult _self;
  final $Res Function(PeopleAlsoAskResult) _then;

/// Create a copy of PeopleAlsoAskResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? question = freezed,Object? snippet = freezed,Object? title = freezed,Object? link = freezed,}) {
  return _then(_self.copyWith(
question: freezed == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String?,snippet: freezed == snippet ? _self.snippet : snippet // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PeopleAlsoAskResult implements PeopleAlsoAskResult {
  const _PeopleAlsoAskResult({this.question, this.snippet, this.title, this.link});
  factory _PeopleAlsoAskResult.fromJson(Map<String, dynamic> json) => _$PeopleAlsoAskResultFromJson(json);

/// The question that people also ask about the search topic.
@override final  String? question;
/// {@macro flutter_serper.results.snippet}
///
/// This is a brief answer to the question.
@override final  String? snippet;
/// {@macro flutter_serper.results.title}
///
/// The title of the source that provides the answer.
@override final  String? title;
/// {@macro flutter_serper.results.link}
///
/// Link to the source that provides more detailed information about the question.
@override final  String? link;

/// Create a copy of PeopleAlsoAskResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PeopleAlsoAskResultCopyWith<_PeopleAlsoAskResult> get copyWith => __$PeopleAlsoAskResultCopyWithImpl<_PeopleAlsoAskResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PeopleAlsoAskResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PeopleAlsoAskResult&&(identical(other.question, question) || other.question == question)&&(identical(other.snippet, snippet) || other.snippet == snippet)&&(identical(other.title, title) || other.title == title)&&(identical(other.link, link) || other.link == link));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,question,snippet,title,link);

@override
String toString() {
  return 'PeopleAlsoAskResult(question: $question, snippet: $snippet, title: $title, link: $link)';
}


}

/// @nodoc
abstract mixin class _$PeopleAlsoAskResultCopyWith<$Res> implements $PeopleAlsoAskResultCopyWith<$Res> {
  factory _$PeopleAlsoAskResultCopyWith(_PeopleAlsoAskResult value, $Res Function(_PeopleAlsoAskResult) _then) = __$PeopleAlsoAskResultCopyWithImpl;
@override @useResult
$Res call({
 String? question, String? snippet, String? title, String? link
});




}
/// @nodoc
class __$PeopleAlsoAskResultCopyWithImpl<$Res>
    implements _$PeopleAlsoAskResultCopyWith<$Res> {
  __$PeopleAlsoAskResultCopyWithImpl(this._self, this._then);

  final _PeopleAlsoAskResult _self;
  final $Res Function(_PeopleAlsoAskResult) _then;

/// Create a copy of PeopleAlsoAskResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? question = freezed,Object? snippet = freezed,Object? title = freezed,Object? link = freezed,}) {
  return _then(_PeopleAlsoAskResult(
question: freezed == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String?,snippet: freezed == snippet ? _self.snippet : snippet // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$TopStoriesResult {

/// {@macro flutter_serper.results.title}
 String? get title;/// {@macro flutter_serper.results.link}
 String? get link;/// {@macro flutter_serper.results.date}
 String? get date;/// {@macro flutter_serper.results.source}
///
/// For top stories, this is the name of the news outlet.
 String? get source;/// {@macro ResultDocTemplates.snippetDoc}
 String? get snippet;/// {@macro flutter_serper.results.imageUrl}
 String? get imageUrl;
/// Create a copy of TopStoriesResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopStoriesResultCopyWith<TopStoriesResult> get copyWith => _$TopStoriesResultCopyWithImpl<TopStoriesResult>(this as TopStoriesResult, _$identity);

  /// Serializes this TopStoriesResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopStoriesResult&&(identical(other.title, title) || other.title == title)&&(identical(other.link, link) || other.link == link)&&(identical(other.date, date) || other.date == date)&&(identical(other.source, source) || other.source == source)&&(identical(other.snippet, snippet) || other.snippet == snippet)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,link,date,source,snippet,imageUrl);

@override
String toString() {
  return 'TopStoriesResult(title: $title, link: $link, date: $date, source: $source, snippet: $snippet, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class $TopStoriesResultCopyWith<$Res>  {
  factory $TopStoriesResultCopyWith(TopStoriesResult value, $Res Function(TopStoriesResult) _then) = _$TopStoriesResultCopyWithImpl;
@useResult
$Res call({
 String? title, String? link, String? date, String? source, String? snippet, String? imageUrl
});




}
/// @nodoc
class _$TopStoriesResultCopyWithImpl<$Res>
    implements $TopStoriesResultCopyWith<$Res> {
  _$TopStoriesResultCopyWithImpl(this._self, this._then);

  final TopStoriesResult _self;
  final $Res Function(TopStoriesResult) _then;

/// Create a copy of TopStoriesResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? link = freezed,Object? date = freezed,Object? source = freezed,Object? snippet = freezed,Object? imageUrl = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,snippet: freezed == snippet ? _self.snippet : snippet // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TopStoriesResult implements TopStoriesResult {
  const _TopStoriesResult({this.title, this.link, this.date, this.source, this.snippet, this.imageUrl});
  factory _TopStoriesResult.fromJson(Map<String, dynamic> json) => _$TopStoriesResultFromJson(json);

/// {@macro flutter_serper.results.title}
@override final  String? title;
/// {@macro flutter_serper.results.link}
@override final  String? link;
/// {@macro flutter_serper.results.date}
@override final  String? date;
/// {@macro flutter_serper.results.source}
///
/// For top stories, this is the name of the news outlet.
@override final  String? source;
/// {@macro ResultDocTemplates.snippetDoc}
@override final  String? snippet;
/// {@macro flutter_serper.results.imageUrl}
@override final  String? imageUrl;

/// Create a copy of TopStoriesResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopStoriesResultCopyWith<_TopStoriesResult> get copyWith => __$TopStoriesResultCopyWithImpl<_TopStoriesResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TopStoriesResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopStoriesResult&&(identical(other.title, title) || other.title == title)&&(identical(other.link, link) || other.link == link)&&(identical(other.date, date) || other.date == date)&&(identical(other.source, source) || other.source == source)&&(identical(other.snippet, snippet) || other.snippet == snippet)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,link,date,source,snippet,imageUrl);

@override
String toString() {
  return 'TopStoriesResult(title: $title, link: $link, date: $date, source: $source, snippet: $snippet, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$TopStoriesResultCopyWith<$Res> implements $TopStoriesResultCopyWith<$Res> {
  factory _$TopStoriesResultCopyWith(_TopStoriesResult value, $Res Function(_TopStoriesResult) _then) = __$TopStoriesResultCopyWithImpl;
@override @useResult
$Res call({
 String? title, String? link, String? date, String? source, String? snippet, String? imageUrl
});




}
/// @nodoc
class __$TopStoriesResultCopyWithImpl<$Res>
    implements _$TopStoriesResultCopyWith<$Res> {
  __$TopStoriesResultCopyWithImpl(this._self, this._then);

  final _TopStoriesResult _self;
  final $Res Function(_TopStoriesResult) _then;

/// Create a copy of TopStoriesResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? link = freezed,Object? date = freezed,Object? source = freezed,Object? snippet = freezed,Object? imageUrl = freezed,}) {
  return _then(_TopStoriesResult(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,snippet: freezed == snippet ? _self.snippet : snippet // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$KnowledgeGraphResult {

/// {@macro flutter_serper.results.title}
 String? get title;/// The type of entity represented in the Knowledge Graph.
///
/// Examples include "Person", "Organization", "Place", etc.
 String? get type;/// {@macro flutter_serper.results.imageUrl}
 String? get imageUrl;/// Additional attributes associated with this entity.
///
/// This is a map of key-value pairs containing various facts about the entity.
 KnowledgeGraphAttributes? get attributes;/// A description of the entity.
///
/// This provides additional context or explanation about the entity.
 String? get description;/// A link to the source of the description.
///
/// This URL can be used to find more information about the entity.
 String? get descriptionLink;/// The source of the description.
///
/// Indicates where the description text originated from.
 String? get descriptionSource;
/// Create a copy of KnowledgeGraphResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KnowledgeGraphResultCopyWith<KnowledgeGraphResult> get copyWith => _$KnowledgeGraphResultCopyWithImpl<KnowledgeGraphResult>(this as KnowledgeGraphResult, _$identity);

  /// Serializes this KnowledgeGraphResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KnowledgeGraphResult&&(identical(other.title, title) || other.title == title)&&(identical(other.type, type) || other.type == type)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.attributes, attributes) || other.attributes == attributes)&&(identical(other.description, description) || other.description == description)&&(identical(other.descriptionLink, descriptionLink) || other.descriptionLink == descriptionLink)&&(identical(other.descriptionSource, descriptionSource) || other.descriptionSource == descriptionSource));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,type,imageUrl,attributes,description,descriptionLink,descriptionSource);

@override
String toString() {
  return 'KnowledgeGraphResult(title: $title, type: $type, imageUrl: $imageUrl, attributes: $attributes, description: $description, descriptionLink: $descriptionLink, descriptionSource: $descriptionSource)';
}


}

/// @nodoc
abstract mixin class $KnowledgeGraphResultCopyWith<$Res>  {
  factory $KnowledgeGraphResultCopyWith(KnowledgeGraphResult value, $Res Function(KnowledgeGraphResult) _then) = _$KnowledgeGraphResultCopyWithImpl;
@useResult
$Res call({
 String? title, String? type, String? imageUrl, KnowledgeGraphAttributes? attributes, String? description, String? descriptionLink, String? descriptionSource
});


$KnowledgeGraphAttributesCopyWith<$Res>? get attributes;

}
/// @nodoc
class _$KnowledgeGraphResultCopyWithImpl<$Res>
    implements $KnowledgeGraphResultCopyWith<$Res> {
  _$KnowledgeGraphResultCopyWithImpl(this._self, this._then);

  final KnowledgeGraphResult _self;
  final $Res Function(KnowledgeGraphResult) _then;

/// Create a copy of KnowledgeGraphResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? type = freezed,Object? imageUrl = freezed,Object? attributes = freezed,Object? description = freezed,Object? descriptionLink = freezed,Object? descriptionSource = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,attributes: freezed == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as KnowledgeGraphAttributes?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,descriptionLink: freezed == descriptionLink ? _self.descriptionLink : descriptionLink // ignore: cast_nullable_to_non_nullable
as String?,descriptionSource: freezed == descriptionSource ? _self.descriptionSource : descriptionSource // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of KnowledgeGraphResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KnowledgeGraphAttributesCopyWith<$Res>? get attributes {
    if (_self.attributes == null) {
    return null;
  }

  return $KnowledgeGraphAttributesCopyWith<$Res>(_self.attributes!, (value) {
    return _then(_self.copyWith(attributes: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _KnowledgeGraphResult implements KnowledgeGraphResult {
  const _KnowledgeGraphResult({this.title, this.type, this.imageUrl, this.attributes, this.description, this.descriptionLink, this.descriptionSource});
  factory _KnowledgeGraphResult.fromJson(Map<String, dynamic> json) => _$KnowledgeGraphResultFromJson(json);

/// {@macro flutter_serper.results.title}
@override final  String? title;
/// The type of entity represented in the Knowledge Graph.
///
/// Examples include "Person", "Organization", "Place", etc.
@override final  String? type;
/// {@macro flutter_serper.results.imageUrl}
@override final  String? imageUrl;
/// Additional attributes associated with this entity.
///
/// This is a map of key-value pairs containing various facts about the entity.
@override final  KnowledgeGraphAttributes? attributes;
/// A description of the entity.
///
/// This provides additional context or explanation about the entity.
@override final  String? description;
/// A link to the source of the description.
///
/// This URL can be used to find more information about the entity.
@override final  String? descriptionLink;
/// The source of the description.
///
/// Indicates where the description text originated from.
@override final  String? descriptionSource;

/// Create a copy of KnowledgeGraphResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KnowledgeGraphResultCopyWith<_KnowledgeGraphResult> get copyWith => __$KnowledgeGraphResultCopyWithImpl<_KnowledgeGraphResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KnowledgeGraphResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KnowledgeGraphResult&&(identical(other.title, title) || other.title == title)&&(identical(other.type, type) || other.type == type)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.attributes, attributes) || other.attributes == attributes)&&(identical(other.description, description) || other.description == description)&&(identical(other.descriptionLink, descriptionLink) || other.descriptionLink == descriptionLink)&&(identical(other.descriptionSource, descriptionSource) || other.descriptionSource == descriptionSource));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,type,imageUrl,attributes,description,descriptionLink,descriptionSource);

@override
String toString() {
  return 'KnowledgeGraphResult(title: $title, type: $type, imageUrl: $imageUrl, attributes: $attributes, description: $description, descriptionLink: $descriptionLink, descriptionSource: $descriptionSource)';
}


}

/// @nodoc
abstract mixin class _$KnowledgeGraphResultCopyWith<$Res> implements $KnowledgeGraphResultCopyWith<$Res> {
  factory _$KnowledgeGraphResultCopyWith(_KnowledgeGraphResult value, $Res Function(_KnowledgeGraphResult) _then) = __$KnowledgeGraphResultCopyWithImpl;
@override @useResult
$Res call({
 String? title, String? type, String? imageUrl, KnowledgeGraphAttributes? attributes, String? description, String? descriptionLink, String? descriptionSource
});


@override $KnowledgeGraphAttributesCopyWith<$Res>? get attributes;

}
/// @nodoc
class __$KnowledgeGraphResultCopyWithImpl<$Res>
    implements _$KnowledgeGraphResultCopyWith<$Res> {
  __$KnowledgeGraphResultCopyWithImpl(this._self, this._then);

  final _KnowledgeGraphResult _self;
  final $Res Function(_KnowledgeGraphResult) _then;

/// Create a copy of KnowledgeGraphResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? type = freezed,Object? imageUrl = freezed,Object? attributes = freezed,Object? description = freezed,Object? descriptionLink = freezed,Object? descriptionSource = freezed,}) {
  return _then(_KnowledgeGraphResult(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,attributes: freezed == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as KnowledgeGraphAttributes?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,descriptionLink: freezed == descriptionLink ? _self.descriptionLink : descriptionLink // ignore: cast_nullable_to_non_nullable
as String?,descriptionSource: freezed == descriptionSource ? _self.descriptionSource : descriptionSource // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of KnowledgeGraphResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KnowledgeGraphAttributesCopyWith<$Res>? get attributes {
    if (_self.attributes == null) {
    return null;
  }

  return $KnowledgeGraphAttributesCopyWith<$Res>(_self.attributes!, (value) {
    return _then(_self.copyWith(attributes: value));
  });
}
}


/// @nodoc
mixin _$KnowledgeGraphAttributes {

/// The typical lifespan of the entity (e.g., for animals).
 String? get lifespan;/// The gestation period (e.g., for animals).
 String? get gestationPeriod;/// The collective noun for the entity (e.g., for animals).
 String? get collectiveNoun;/// The typical daily sleep duration.
 String? get dailySleep;/// The biological class of the entity.
 String? get biologicalClass;/// The biological domain of the entity.
 String? get domain;
/// Create a copy of KnowledgeGraphAttributes
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KnowledgeGraphAttributesCopyWith<KnowledgeGraphAttributes> get copyWith => _$KnowledgeGraphAttributesCopyWithImpl<KnowledgeGraphAttributes>(this as KnowledgeGraphAttributes, _$identity);

  /// Serializes this KnowledgeGraphAttributes to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KnowledgeGraphAttributes&&(identical(other.lifespan, lifespan) || other.lifespan == lifespan)&&(identical(other.gestationPeriod, gestationPeriod) || other.gestationPeriod == gestationPeriod)&&(identical(other.collectiveNoun, collectiveNoun) || other.collectiveNoun == collectiveNoun)&&(identical(other.dailySleep, dailySleep) || other.dailySleep == dailySleep)&&(identical(other.biologicalClass, biologicalClass) || other.biologicalClass == biologicalClass)&&(identical(other.domain, domain) || other.domain == domain));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lifespan,gestationPeriod,collectiveNoun,dailySleep,biologicalClass,domain);

@override
String toString() {
  return 'KnowledgeGraphAttributes(lifespan: $lifespan, gestationPeriod: $gestationPeriod, collectiveNoun: $collectiveNoun, dailySleep: $dailySleep, biologicalClass: $biologicalClass, domain: $domain)';
}


}

/// @nodoc
abstract mixin class $KnowledgeGraphAttributesCopyWith<$Res>  {
  factory $KnowledgeGraphAttributesCopyWith(KnowledgeGraphAttributes value, $Res Function(KnowledgeGraphAttributes) _then) = _$KnowledgeGraphAttributesCopyWithImpl;
@useResult
$Res call({
 String? lifespan, String? gestationPeriod, String? collectiveNoun, String? dailySleep, String? biologicalClass, String? domain
});




}
/// @nodoc
class _$KnowledgeGraphAttributesCopyWithImpl<$Res>
    implements $KnowledgeGraphAttributesCopyWith<$Res> {
  _$KnowledgeGraphAttributesCopyWithImpl(this._self, this._then);

  final KnowledgeGraphAttributes _self;
  final $Res Function(KnowledgeGraphAttributes) _then;

/// Create a copy of KnowledgeGraphAttributes
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lifespan = freezed,Object? gestationPeriod = freezed,Object? collectiveNoun = freezed,Object? dailySleep = freezed,Object? biologicalClass = freezed,Object? domain = freezed,}) {
  return _then(_self.copyWith(
lifespan: freezed == lifespan ? _self.lifespan : lifespan // ignore: cast_nullable_to_non_nullable
as String?,gestationPeriod: freezed == gestationPeriod ? _self.gestationPeriod : gestationPeriod // ignore: cast_nullable_to_non_nullable
as String?,collectiveNoun: freezed == collectiveNoun ? _self.collectiveNoun : collectiveNoun // ignore: cast_nullable_to_non_nullable
as String?,dailySleep: freezed == dailySleep ? _self.dailySleep : dailySleep // ignore: cast_nullable_to_non_nullable
as String?,biologicalClass: freezed == biologicalClass ? _self.biologicalClass : biologicalClass // ignore: cast_nullable_to_non_nullable
as String?,domain: freezed == domain ? _self.domain : domain // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _KnowledgeGraphAttributes implements KnowledgeGraphAttributes {
  const _KnowledgeGraphAttributes({this.lifespan, this.gestationPeriod, this.collectiveNoun, this.dailySleep, this.biologicalClass, this.domain});
  factory _KnowledgeGraphAttributes.fromJson(Map<String, dynamic> json) => _$KnowledgeGraphAttributesFromJson(json);

/// The typical lifespan of the entity (e.g., for animals).
@override final  String? lifespan;
/// The gestation period (e.g., for animals).
@override final  String? gestationPeriod;
/// The collective noun for the entity (e.g., for animals).
@override final  String? collectiveNoun;
/// The typical daily sleep duration.
@override final  String? dailySleep;
/// The biological class of the entity.
@override final  String? biologicalClass;
/// The biological domain of the entity.
@override final  String? domain;

/// Create a copy of KnowledgeGraphAttributes
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KnowledgeGraphAttributesCopyWith<_KnowledgeGraphAttributes> get copyWith => __$KnowledgeGraphAttributesCopyWithImpl<_KnowledgeGraphAttributes>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KnowledgeGraphAttributesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KnowledgeGraphAttributes&&(identical(other.lifespan, lifespan) || other.lifespan == lifespan)&&(identical(other.gestationPeriod, gestationPeriod) || other.gestationPeriod == gestationPeriod)&&(identical(other.collectiveNoun, collectiveNoun) || other.collectiveNoun == collectiveNoun)&&(identical(other.dailySleep, dailySleep) || other.dailySleep == dailySleep)&&(identical(other.biologicalClass, biologicalClass) || other.biologicalClass == biologicalClass)&&(identical(other.domain, domain) || other.domain == domain));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lifespan,gestationPeriod,collectiveNoun,dailySleep,biologicalClass,domain);

@override
String toString() {
  return 'KnowledgeGraphAttributes(lifespan: $lifespan, gestationPeriod: $gestationPeriod, collectiveNoun: $collectiveNoun, dailySleep: $dailySleep, biologicalClass: $biologicalClass, domain: $domain)';
}


}

/// @nodoc
abstract mixin class _$KnowledgeGraphAttributesCopyWith<$Res> implements $KnowledgeGraphAttributesCopyWith<$Res> {
  factory _$KnowledgeGraphAttributesCopyWith(_KnowledgeGraphAttributes value, $Res Function(_KnowledgeGraphAttributes) _then) = __$KnowledgeGraphAttributesCopyWithImpl;
@override @useResult
$Res call({
 String? lifespan, String? gestationPeriod, String? collectiveNoun, String? dailySleep, String? biologicalClass, String? domain
});




}
/// @nodoc
class __$KnowledgeGraphAttributesCopyWithImpl<$Res>
    implements _$KnowledgeGraphAttributesCopyWith<$Res> {
  __$KnowledgeGraphAttributesCopyWithImpl(this._self, this._then);

  final _KnowledgeGraphAttributes _self;
  final $Res Function(_KnowledgeGraphAttributes) _then;

/// Create a copy of KnowledgeGraphAttributes
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lifespan = freezed,Object? gestationPeriod = freezed,Object? collectiveNoun = freezed,Object? dailySleep = freezed,Object? biologicalClass = freezed,Object? domain = freezed,}) {
  return _then(_KnowledgeGraphAttributes(
lifespan: freezed == lifespan ? _self.lifespan : lifespan // ignore: cast_nullable_to_non_nullable
as String?,gestationPeriod: freezed == gestationPeriod ? _self.gestationPeriod : gestationPeriod // ignore: cast_nullable_to_non_nullable
as String?,collectiveNoun: freezed == collectiveNoun ? _self.collectiveNoun : collectiveNoun // ignore: cast_nullable_to_non_nullable
as String?,dailySleep: freezed == dailySleep ? _self.dailySleep : dailySleep // ignore: cast_nullable_to_non_nullable
as String?,biologicalClass: freezed == biologicalClass ? _self.biologicalClass : biologicalClass // ignore: cast_nullable_to_non_nullable
as String?,domain: freezed == domain ? _self.domain : domain // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ImageResult {

/// {@macro flutter_serper.results.title}
 String? get title;/// {@template flutter_serper.results.imageUrl}
/// The URL to the full-size image.
///
/// This URL can be used to display or download the full-size image.
/// {@endtemplate}
 String? get imageUrl;/// The width of the full-size image in pixels.
 int? get imageWidth;/// The height of the full-size image in pixels.
 int? get imageHeight;/// {@template flutter_serper.results.thumbnailUrl}
/// The URL to a thumbnail version of the image.
///
/// This URL can be used to display a smaller, preview version of the image.
/// {@endtemplate}
 String? get thumbnailUrl;/// The width of the thumbnail image in pixels.
 int? get thumbnailWidth;/// The height of the thumbnail image in pixels.
 int? get thumbnailHeight;/// {@template flutter_serper.results.source}
/// The source or provider of the result.
///
/// Indicates where the content originated from, such as a website name or publisher.
/// {@endtemplate}
 String? get source;/// {@macro flutter_serper.results.link}
 String? get link;/// The Google Images result URL for this image.
 String? get googleUrl;/// {@template flutter_serper.results.price}
/// The price associated with the result.
///
/// For shopping results, this represents the cost of the item, typically including currency symbol.
/// {@endtemplate}
 String? get price;/// The domain of the website hosting the image.
///
/// This is the root domain name of the source website.
 String? get domain;/// {@macro flutter_serper.results.position}
 int get position;
/// Create a copy of ImageResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageResultCopyWith<ImageResult> get copyWith => _$ImageResultCopyWithImpl<ImageResult>(this as ImageResult, _$identity);

  /// Serializes this ImageResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageResult&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.imageWidth, imageWidth) || other.imageWidth == imageWidth)&&(identical(other.imageHeight, imageHeight) || other.imageHeight == imageHeight)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.thumbnailWidth, thumbnailWidth) || other.thumbnailWidth == thumbnailWidth)&&(identical(other.thumbnailHeight, thumbnailHeight) || other.thumbnailHeight == thumbnailHeight)&&(identical(other.source, source) || other.source == source)&&(identical(other.link, link) || other.link == link)&&(identical(other.googleUrl, googleUrl) || other.googleUrl == googleUrl)&&(identical(other.price, price) || other.price == price)&&(identical(other.domain, domain) || other.domain == domain)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,imageUrl,imageWidth,imageHeight,thumbnailUrl,thumbnailWidth,thumbnailHeight,source,link,googleUrl,price,domain,position);

@override
String toString() {
  return 'ImageResult(title: $title, imageUrl: $imageUrl, imageWidth: $imageWidth, imageHeight: $imageHeight, thumbnailUrl: $thumbnailUrl, thumbnailWidth: $thumbnailWidth, thumbnailHeight: $thumbnailHeight, source: $source, link: $link, googleUrl: $googleUrl, price: $price, domain: $domain, position: $position)';
}


}

/// @nodoc
abstract mixin class $ImageResultCopyWith<$Res>  {
  factory $ImageResultCopyWith(ImageResult value, $Res Function(ImageResult) _then) = _$ImageResultCopyWithImpl;
@useResult
$Res call({
 String? title, String? imageUrl, int? imageWidth, int? imageHeight, String? thumbnailUrl, int? thumbnailWidth, int? thumbnailHeight, String? source, String? link, String? googleUrl, String? price, String? domain, int position
});




}
/// @nodoc
class _$ImageResultCopyWithImpl<$Res>
    implements $ImageResultCopyWith<$Res> {
  _$ImageResultCopyWithImpl(this._self, this._then);

  final ImageResult _self;
  final $Res Function(ImageResult) _then;

/// Create a copy of ImageResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? imageUrl = freezed,Object? imageWidth = freezed,Object? imageHeight = freezed,Object? thumbnailUrl = freezed,Object? thumbnailWidth = freezed,Object? thumbnailHeight = freezed,Object? source = freezed,Object? link = freezed,Object? googleUrl = freezed,Object? price = freezed,Object? domain = freezed,Object? position = null,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,imageWidth: freezed == imageWidth ? _self.imageWidth : imageWidth // ignore: cast_nullable_to_non_nullable
as int?,imageHeight: freezed == imageHeight ? _self.imageHeight : imageHeight // ignore: cast_nullable_to_non_nullable
as int?,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,thumbnailWidth: freezed == thumbnailWidth ? _self.thumbnailWidth : thumbnailWidth // ignore: cast_nullable_to_non_nullable
as int?,thumbnailHeight: freezed == thumbnailHeight ? _self.thumbnailHeight : thumbnailHeight // ignore: cast_nullable_to_non_nullable
as int?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,googleUrl: freezed == googleUrl ? _self.googleUrl : googleUrl // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,domain: freezed == domain ? _self.domain : domain // ignore: cast_nullable_to_non_nullable
as String?,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ImageResult implements ImageResult {
  const _ImageResult({this.title, this.imageUrl, this.imageWidth, this.imageHeight, this.thumbnailUrl, this.thumbnailWidth, this.thumbnailHeight, this.source, this.link, this.googleUrl, this.price, this.domain, required this.position});
  factory _ImageResult.fromJson(Map<String, dynamic> json) => _$ImageResultFromJson(json);

/// {@macro flutter_serper.results.title}
@override final  String? title;
/// {@template flutter_serper.results.imageUrl}
/// The URL to the full-size image.
///
/// This URL can be used to display or download the full-size image.
/// {@endtemplate}
@override final  String? imageUrl;
/// The width of the full-size image in pixels.
@override final  int? imageWidth;
/// The height of the full-size image in pixels.
@override final  int? imageHeight;
/// {@template flutter_serper.results.thumbnailUrl}
/// The URL to a thumbnail version of the image.
///
/// This URL can be used to display a smaller, preview version of the image.
/// {@endtemplate}
@override final  String? thumbnailUrl;
/// The width of the thumbnail image in pixels.
@override final  int? thumbnailWidth;
/// The height of the thumbnail image in pixels.
@override final  int? thumbnailHeight;
/// {@template flutter_serper.results.source}
/// The source or provider of the result.
///
/// Indicates where the content originated from, such as a website name or publisher.
/// {@endtemplate}
@override final  String? source;
/// {@macro flutter_serper.results.link}
@override final  String? link;
/// The Google Images result URL for this image.
@override final  String? googleUrl;
/// {@template flutter_serper.results.price}
/// The price associated with the result.
///
/// For shopping results, this represents the cost of the item, typically including currency symbol.
/// {@endtemplate}
@override final  String? price;
/// The domain of the website hosting the image.
///
/// This is the root domain name of the source website.
@override final  String? domain;
/// {@macro flutter_serper.results.position}
@override final  int position;

/// Create a copy of ImageResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImageResultCopyWith<_ImageResult> get copyWith => __$ImageResultCopyWithImpl<_ImageResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ImageResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImageResult&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.imageWidth, imageWidth) || other.imageWidth == imageWidth)&&(identical(other.imageHeight, imageHeight) || other.imageHeight == imageHeight)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.thumbnailWidth, thumbnailWidth) || other.thumbnailWidth == thumbnailWidth)&&(identical(other.thumbnailHeight, thumbnailHeight) || other.thumbnailHeight == thumbnailHeight)&&(identical(other.source, source) || other.source == source)&&(identical(other.link, link) || other.link == link)&&(identical(other.googleUrl, googleUrl) || other.googleUrl == googleUrl)&&(identical(other.price, price) || other.price == price)&&(identical(other.domain, domain) || other.domain == domain)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,imageUrl,imageWidth,imageHeight,thumbnailUrl,thumbnailWidth,thumbnailHeight,source,link,googleUrl,price,domain,position);

@override
String toString() {
  return 'ImageResult(title: $title, imageUrl: $imageUrl, imageWidth: $imageWidth, imageHeight: $imageHeight, thumbnailUrl: $thumbnailUrl, thumbnailWidth: $thumbnailWidth, thumbnailHeight: $thumbnailHeight, source: $source, link: $link, googleUrl: $googleUrl, price: $price, domain: $domain, position: $position)';
}


}

/// @nodoc
abstract mixin class _$ImageResultCopyWith<$Res> implements $ImageResultCopyWith<$Res> {
  factory _$ImageResultCopyWith(_ImageResult value, $Res Function(_ImageResult) _then) = __$ImageResultCopyWithImpl;
@override @useResult
$Res call({
 String? title, String? imageUrl, int? imageWidth, int? imageHeight, String? thumbnailUrl, int? thumbnailWidth, int? thumbnailHeight, String? source, String? link, String? googleUrl, String? price, String? domain, int position
});




}
/// @nodoc
class __$ImageResultCopyWithImpl<$Res>
    implements _$ImageResultCopyWith<$Res> {
  __$ImageResultCopyWithImpl(this._self, this._then);

  final _ImageResult _self;
  final $Res Function(_ImageResult) _then;

/// Create a copy of ImageResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? imageUrl = freezed,Object? imageWidth = freezed,Object? imageHeight = freezed,Object? thumbnailUrl = freezed,Object? thumbnailWidth = freezed,Object? thumbnailHeight = freezed,Object? source = freezed,Object? link = freezed,Object? googleUrl = freezed,Object? price = freezed,Object? domain = freezed,Object? position = null,}) {
  return _then(_ImageResult(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,imageWidth: freezed == imageWidth ? _self.imageWidth : imageWidth // ignore: cast_nullable_to_non_nullable
as int?,imageHeight: freezed == imageHeight ? _self.imageHeight : imageHeight // ignore: cast_nullable_to_non_nullable
as int?,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,thumbnailWidth: freezed == thumbnailWidth ? _self.thumbnailWidth : thumbnailWidth // ignore: cast_nullable_to_non_nullable
as int?,thumbnailHeight: freezed == thumbnailHeight ? _self.thumbnailHeight : thumbnailHeight // ignore: cast_nullable_to_non_nullable
as int?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,googleUrl: freezed == googleUrl ? _self.googleUrl : googleUrl // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,domain: freezed == domain ? _self.domain : domain // ignore: cast_nullable_to_non_nullable
as String?,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$PlaceResult {

/// {@macro flutter_serper.results.title}
 String? get title;/// The full address of the place.
///
/// Typically includes street, city, state/province, and postal code.
 String? get address;/// The latitude of the place.
 double? get latitude;/// The longitude of the place.
 double? get longitude;// {@macro flutter_serper.results.phoneNumber}
 String? get phoneNumber;/// {@macro flutter_serper.results.rating}
 double? get rating;/// {@macro flutter_serper.results.reviewCount}
 int? get reviewCount;/// The URL of the place's website.
 String? get website;/// The type or category of the place.
///
/// Examples include "Restaurant", "Hotel", "Attraction", etc.
@JsonKey(name: 'category') String? get type;/// The price level of the place.
///
/// Typically represented as "$", "$$", "$$$", etc., indicating relative expense.
 String? get priceLevel;/// The business hours of operation.
///
/// A list of strings representing the opening hours for each day.
 List<String>? get openingHours;/// The unique Customer ID (CID) of the place in Google Maps.
///
/// This identifier can be used to look up the place in Google Maps.
 String? get cid;/// {@macro ResultDocTemplates.positionDoc}
 int? get position;
/// Create a copy of PlaceResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaceResultCopyWith<PlaceResult> get copyWith => _$PlaceResultCopyWithImpl<PlaceResult>(this as PlaceResult, _$identity);

  /// Serializes this PlaceResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlaceResult&&(identical(other.title, title) || other.title == title)&&(identical(other.address, address) || other.address == address)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.website, website) || other.website == website)&&(identical(other.type, type) || other.type == type)&&(identical(other.priceLevel, priceLevel) || other.priceLevel == priceLevel)&&const DeepCollectionEquality().equals(other.openingHours, openingHours)&&(identical(other.cid, cid) || other.cid == cid)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,address,latitude,longitude,phoneNumber,rating,reviewCount,website,type,priceLevel,const DeepCollectionEquality().hash(openingHours),cid,position);

@override
String toString() {
  return 'PlaceResult(title: $title, address: $address, latitude: $latitude, longitude: $longitude, phoneNumber: $phoneNumber, rating: $rating, reviewCount: $reviewCount, website: $website, type: $type, priceLevel: $priceLevel, openingHours: $openingHours, cid: $cid, position: $position)';
}


}

/// @nodoc
abstract mixin class $PlaceResultCopyWith<$Res>  {
  factory $PlaceResultCopyWith(PlaceResult value, $Res Function(PlaceResult) _then) = _$PlaceResultCopyWithImpl;
@useResult
$Res call({
 String? title, String? address, double? latitude, double? longitude, String? phoneNumber, double? rating, int? reviewCount, String? website,@JsonKey(name: 'category') String? type, String? priceLevel, List<String>? openingHours, String? cid, int? position
});




}
/// @nodoc
class _$PlaceResultCopyWithImpl<$Res>
    implements $PlaceResultCopyWith<$Res> {
  _$PlaceResultCopyWithImpl(this._self, this._then);

  final PlaceResult _self;
  final $Res Function(PlaceResult) _then;

/// Create a copy of PlaceResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? address = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? phoneNumber = freezed,Object? rating = freezed,Object? reviewCount = freezed,Object? website = freezed,Object? type = freezed,Object? priceLevel = freezed,Object? openingHours = freezed,Object? cid = freezed,Object? position = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,reviewCount: freezed == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int?,website: freezed == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,priceLevel: freezed == priceLevel ? _self.priceLevel : priceLevel // ignore: cast_nullable_to_non_nullable
as String?,openingHours: freezed == openingHours ? _self.openingHours : openingHours // ignore: cast_nullable_to_non_nullable
as List<String>?,cid: freezed == cid ? _self.cid : cid // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PlaceResult extends PlaceResult {
  const _PlaceResult({this.title, this.address, this.latitude, this.longitude, this.phoneNumber, this.rating, this.reviewCount, this.website, @JsonKey(name: 'category') this.type, this.priceLevel, final  List<String>? openingHours, this.cid, this.position}): _openingHours = openingHours,super._();
  factory _PlaceResult.fromJson(Map<String, dynamic> json) => _$PlaceResultFromJson(json);

/// {@macro flutter_serper.results.title}
@override final  String? title;
/// The full address of the place.
///
/// Typically includes street, city, state/province, and postal code.
@override final  String? address;
/// The latitude of the place.
@override final  double? latitude;
/// The longitude of the place.
@override final  double? longitude;
// {@macro flutter_serper.results.phoneNumber}
@override final  String? phoneNumber;
/// {@macro flutter_serper.results.rating}
@override final  double? rating;
/// {@macro flutter_serper.results.reviewCount}
@override final  int? reviewCount;
/// The URL of the place's website.
@override final  String? website;
/// The type or category of the place.
///
/// Examples include "Restaurant", "Hotel", "Attraction", etc.
@override@JsonKey(name: 'category') final  String? type;
/// The price level of the place.
///
/// Typically represented as "$", "$$", "$$$", etc., indicating relative expense.
@override final  String? priceLevel;
/// The business hours of operation.
///
/// A list of strings representing the opening hours for each day.
 final  List<String>? _openingHours;
/// The business hours of operation.
///
/// A list of strings representing the opening hours for each day.
@override List<String>? get openingHours {
  final value = _openingHours;
  if (value == null) return null;
  if (_openingHours is EqualUnmodifiableListView) return _openingHours;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// The unique Customer ID (CID) of the place in Google Maps.
///
/// This identifier can be used to look up the place in Google Maps.
@override final  String? cid;
/// {@macro ResultDocTemplates.positionDoc}
@override final  int? position;

/// Create a copy of PlaceResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlaceResultCopyWith<_PlaceResult> get copyWith => __$PlaceResultCopyWithImpl<_PlaceResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlaceResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlaceResult&&(identical(other.title, title) || other.title == title)&&(identical(other.address, address) || other.address == address)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.website, website) || other.website == website)&&(identical(other.type, type) || other.type == type)&&(identical(other.priceLevel, priceLevel) || other.priceLevel == priceLevel)&&const DeepCollectionEquality().equals(other._openingHours, _openingHours)&&(identical(other.cid, cid) || other.cid == cid)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,address,latitude,longitude,phoneNumber,rating,reviewCount,website,type,priceLevel,const DeepCollectionEquality().hash(_openingHours),cid,position);

@override
String toString() {
  return 'PlaceResult(title: $title, address: $address, latitude: $latitude, longitude: $longitude, phoneNumber: $phoneNumber, rating: $rating, reviewCount: $reviewCount, website: $website, type: $type, priceLevel: $priceLevel, openingHours: $openingHours, cid: $cid, position: $position)';
}


}

/// @nodoc
abstract mixin class _$PlaceResultCopyWith<$Res> implements $PlaceResultCopyWith<$Res> {
  factory _$PlaceResultCopyWith(_PlaceResult value, $Res Function(_PlaceResult) _then) = __$PlaceResultCopyWithImpl;
@override @useResult
$Res call({
 String? title, String? address, double? latitude, double? longitude, String? phoneNumber, double? rating, int? reviewCount, String? website,@JsonKey(name: 'category') String? type, String? priceLevel, List<String>? openingHours, String? cid, int? position
});




}
/// @nodoc
class __$PlaceResultCopyWithImpl<$Res>
    implements _$PlaceResultCopyWith<$Res> {
  __$PlaceResultCopyWithImpl(this._self, this._then);

  final _PlaceResult _self;
  final $Res Function(_PlaceResult) _then;

/// Create a copy of PlaceResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? address = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? phoneNumber = freezed,Object? rating = freezed,Object? reviewCount = freezed,Object? website = freezed,Object? type = freezed,Object? priceLevel = freezed,Object? openingHours = freezed,Object? cid = freezed,Object? position = freezed,}) {
  return _then(_PlaceResult(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,reviewCount: freezed == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int?,website: freezed == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,priceLevel: freezed == priceLevel ? _self.priceLevel : priceLevel // ignore: cast_nullable_to_non_nullable
as String?,openingHours: freezed == openingHours ? _self._openingHours : openingHours // ignore: cast_nullable_to_non_nullable
as List<String>?,cid: freezed == cid ? _self.cid : cid // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$VideoResult {

/// {@macro flutter_serper.results.title}
 String? get title;/// {@macro flutter_serper.results.link}
 String? get link;/// {@macro flutter_serper.results.snippet}
 String? get snippet;/// {@macro flutter_serper.results.imageUrl}
 String? get imageUrl;/// The direct video URL (may be a preview or thumbnail).
 String? get videoUrl;/// {@macro flutter_serper.results.duration}
 String? get duration;/// {@macro flutter_serper.results.source}
///
/// For video results, this is typically the video platform or publisher.
 String? get source;/// The channel or publisher name.
 String? get channel;/// {@macro flutter_serper.results.date}
 String? get date;/// {@macro flutter_serper.results.position}
 int? get position;
/// Create a copy of VideoResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoResultCopyWith<VideoResult> get copyWith => _$VideoResultCopyWithImpl<VideoResult>(this as VideoResult, _$identity);

  /// Serializes this VideoResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoResult&&(identical(other.title, title) || other.title == title)&&(identical(other.link, link) || other.link == link)&&(identical(other.snippet, snippet) || other.snippet == snippet)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.videoUrl, videoUrl) || other.videoUrl == videoUrl)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.source, source) || other.source == source)&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.date, date) || other.date == date)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,link,snippet,imageUrl,videoUrl,duration,source,channel,date,position);

@override
String toString() {
  return 'VideoResult(title: $title, link: $link, snippet: $snippet, imageUrl: $imageUrl, videoUrl: $videoUrl, duration: $duration, source: $source, channel: $channel, date: $date, position: $position)';
}


}

/// @nodoc
abstract mixin class $VideoResultCopyWith<$Res>  {
  factory $VideoResultCopyWith(VideoResult value, $Res Function(VideoResult) _then) = _$VideoResultCopyWithImpl;
@useResult
$Res call({
 String? title, String? link, String? snippet, String? imageUrl, String? videoUrl, String? duration, String? source, String? channel, String? date, int? position
});




}
/// @nodoc
class _$VideoResultCopyWithImpl<$Res>
    implements $VideoResultCopyWith<$Res> {
  _$VideoResultCopyWithImpl(this._self, this._then);

  final VideoResult _self;
  final $Res Function(VideoResult) _then;

/// Create a copy of VideoResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? link = freezed,Object? snippet = freezed,Object? imageUrl = freezed,Object? videoUrl = freezed,Object? duration = freezed,Object? source = freezed,Object? channel = freezed,Object? date = freezed,Object? position = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,snippet: freezed == snippet ? _self.snippet : snippet // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,videoUrl: freezed == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as String?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,channel: freezed == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _VideoResult implements VideoResult {
  const _VideoResult({this.title, this.link, this.snippet, this.imageUrl, this.videoUrl, this.duration, this.source, this.channel, this.date, this.position});
  factory _VideoResult.fromJson(Map<String, dynamic> json) => _$VideoResultFromJson(json);

/// {@macro flutter_serper.results.title}
@override final  String? title;
/// {@macro flutter_serper.results.link}
@override final  String? link;
/// {@macro flutter_serper.results.snippet}
@override final  String? snippet;
/// {@macro flutter_serper.results.imageUrl}
@override final  String? imageUrl;
/// The direct video URL (may be a preview or thumbnail).
@override final  String? videoUrl;
/// {@macro flutter_serper.results.duration}
@override final  String? duration;
/// {@macro flutter_serper.results.source}
///
/// For video results, this is typically the video platform or publisher.
@override final  String? source;
/// The channel or publisher name.
@override final  String? channel;
/// {@macro flutter_serper.results.date}
@override final  String? date;
/// {@macro flutter_serper.results.position}
@override final  int? position;

/// Create a copy of VideoResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoResultCopyWith<_VideoResult> get copyWith => __$VideoResultCopyWithImpl<_VideoResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VideoResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoResult&&(identical(other.title, title) || other.title == title)&&(identical(other.link, link) || other.link == link)&&(identical(other.snippet, snippet) || other.snippet == snippet)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.videoUrl, videoUrl) || other.videoUrl == videoUrl)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.source, source) || other.source == source)&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.date, date) || other.date == date)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,link,snippet,imageUrl,videoUrl,duration,source,channel,date,position);

@override
String toString() {
  return 'VideoResult(title: $title, link: $link, snippet: $snippet, imageUrl: $imageUrl, videoUrl: $videoUrl, duration: $duration, source: $source, channel: $channel, date: $date, position: $position)';
}


}

/// @nodoc
abstract mixin class _$VideoResultCopyWith<$Res> implements $VideoResultCopyWith<$Res> {
  factory _$VideoResultCopyWith(_VideoResult value, $Res Function(_VideoResult) _then) = __$VideoResultCopyWithImpl;
@override @useResult
$Res call({
 String? title, String? link, String? snippet, String? imageUrl, String? videoUrl, String? duration, String? source, String? channel, String? date, int? position
});




}
/// @nodoc
class __$VideoResultCopyWithImpl<$Res>
    implements _$VideoResultCopyWith<$Res> {
  __$VideoResultCopyWithImpl(this._self, this._then);

  final _VideoResult _self;
  final $Res Function(_VideoResult) _then;

/// Create a copy of VideoResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? link = freezed,Object? snippet = freezed,Object? imageUrl = freezed,Object? videoUrl = freezed,Object? duration = freezed,Object? source = freezed,Object? channel = freezed,Object? date = freezed,Object? position = freezed,}) {
  return _then(_VideoResult(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,snippet: freezed == snippet ? _self.snippet : snippet // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,videoUrl: freezed == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as String?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,channel: freezed == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$MapResult {

/// {@macro flutter_serper.results.title}
 String? get title;/// The unique Customer ID (CID) of the place in Google Maps.
///
/// This identifier can be used to look up the place in Google Maps.
 String? get cid;/// The full address of the place.
///
/// Typically includes street, city, state/province, and postal code.
 String? get address;/// {@macro flutter_serper.results.rating}
 double? get rating;/// The number of ratings for this place.
 int? get ratingCount;/// The price level of the place.
///
/// Typically represented as "$", "$$", "$$$", etc., indicating relative expense.
 String? get priceLevel;/// The type or category of the place.
///
/// Examples include "Restaurant", "Hotel", "Attraction", etc.
/// May be null if the API doesn't provide type information.
 String? get type;/// The types/categories of the place (multiple).
///
/// May be null if the API doesn't provide multiple type categories.
 List<String>? get types;/// {@template flutter_serper.results.phoneNumber}
/// The phone number of the place.
/// {@endtemplate}
 String? get phoneNumber;/// The URL of the place's website.
 String? get website;/// The business hours of operation.
///
/// A list of strings representing the opening hours for each day.
 Map<String, String>? get openingHours;/// A description of the place.
///
/// Provides additional context or explanation about the place.
 String? get description;/// The thumbnail image URL for the place.
 String? get thumbnailUrl;/// The booking links for the place.
 List<String>? get bookingLinks;/// The FID (feature id) for the place.
 String? get fid;/// The latitude of the place.
 double? get latitude;/// The longitude of the place.
 double? get longitude;/// The Google Place ID for this place.
 String? get placeId;/// The position of the place in the results.
 int get position;
/// Create a copy of MapResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MapResultCopyWith<MapResult> get copyWith => _$MapResultCopyWithImpl<MapResult>(this as MapResult, _$identity);

  /// Serializes this MapResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MapResult&&(identical(other.title, title) || other.title == title)&&(identical(other.cid, cid) || other.cid == cid)&&(identical(other.address, address) || other.address == address)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.ratingCount, ratingCount) || other.ratingCount == ratingCount)&&(identical(other.priceLevel, priceLevel) || other.priceLevel == priceLevel)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.types, types)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.website, website) || other.website == website)&&const DeepCollectionEquality().equals(other.openingHours, openingHours)&&(identical(other.description, description) || other.description == description)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&const DeepCollectionEquality().equals(other.bookingLinks, bookingLinks)&&(identical(other.fid, fid) || other.fid == fid)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.placeId, placeId) || other.placeId == placeId)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,title,cid,address,rating,ratingCount,priceLevel,type,const DeepCollectionEquality().hash(types),phoneNumber,website,const DeepCollectionEquality().hash(openingHours),description,thumbnailUrl,const DeepCollectionEquality().hash(bookingLinks),fid,latitude,longitude,placeId,position]);

@override
String toString() {
  return 'MapResult(title: $title, cid: $cid, address: $address, rating: $rating, ratingCount: $ratingCount, priceLevel: $priceLevel, type: $type, types: $types, phoneNumber: $phoneNumber, website: $website, openingHours: $openingHours, description: $description, thumbnailUrl: $thumbnailUrl, bookingLinks: $bookingLinks, fid: $fid, latitude: $latitude, longitude: $longitude, placeId: $placeId, position: $position)';
}


}

/// @nodoc
abstract mixin class $MapResultCopyWith<$Res>  {
  factory $MapResultCopyWith(MapResult value, $Res Function(MapResult) _then) = _$MapResultCopyWithImpl;
@useResult
$Res call({
 String? title, String? cid, String? address, double? rating, int? ratingCount, String? priceLevel, String? type, List<String>? types, String? phoneNumber, String? website, Map<String, String>? openingHours, String? description, String? thumbnailUrl, List<String>? bookingLinks, String? fid, double? latitude, double? longitude, String? placeId, int position
});




}
/// @nodoc
class _$MapResultCopyWithImpl<$Res>
    implements $MapResultCopyWith<$Res> {
  _$MapResultCopyWithImpl(this._self, this._then);

  final MapResult _self;
  final $Res Function(MapResult) _then;

/// Create a copy of MapResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? cid = freezed,Object? address = freezed,Object? rating = freezed,Object? ratingCount = freezed,Object? priceLevel = freezed,Object? type = freezed,Object? types = freezed,Object? phoneNumber = freezed,Object? website = freezed,Object? openingHours = freezed,Object? description = freezed,Object? thumbnailUrl = freezed,Object? bookingLinks = freezed,Object? fid = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? placeId = freezed,Object? position = null,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,cid: freezed == cid ? _self.cid : cid // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,ratingCount: freezed == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as int?,priceLevel: freezed == priceLevel ? _self.priceLevel : priceLevel // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,types: freezed == types ? _self.types : types // ignore: cast_nullable_to_non_nullable
as List<String>?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,website: freezed == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String?,openingHours: freezed == openingHours ? _self.openingHours : openingHours // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,bookingLinks: freezed == bookingLinks ? _self.bookingLinks : bookingLinks // ignore: cast_nullable_to_non_nullable
as List<String>?,fid: freezed == fid ? _self.fid : fid // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,placeId: freezed == placeId ? _self.placeId : placeId // ignore: cast_nullable_to_non_nullable
as String?,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _MapResult extends MapResult {
  const _MapResult({this.title, this.cid, this.address, this.rating, this.ratingCount, this.priceLevel, this.type, final  List<String>? types, this.phoneNumber, this.website, final  Map<String, String>? openingHours, this.description, this.thumbnailUrl, final  List<String>? bookingLinks, this.fid, this.latitude, this.longitude, this.placeId, required this.position}): _types = types,_openingHours = openingHours,_bookingLinks = bookingLinks,super._();
  factory _MapResult.fromJson(Map<String, dynamic> json) => _$MapResultFromJson(json);

/// {@macro flutter_serper.results.title}
@override final  String? title;
/// The unique Customer ID (CID) of the place in Google Maps.
///
/// This identifier can be used to look up the place in Google Maps.
@override final  String? cid;
/// The full address of the place.
///
/// Typically includes street, city, state/province, and postal code.
@override final  String? address;
/// {@macro flutter_serper.results.rating}
@override final  double? rating;
/// The number of ratings for this place.
@override final  int? ratingCount;
/// The price level of the place.
///
/// Typically represented as "$", "$$", "$$$", etc., indicating relative expense.
@override final  String? priceLevel;
/// The type or category of the place.
///
/// Examples include "Restaurant", "Hotel", "Attraction", etc.
/// May be null if the API doesn't provide type information.
@override final  String? type;
/// The types/categories of the place (multiple).
///
/// May be null if the API doesn't provide multiple type categories.
 final  List<String>? _types;
/// The types/categories of the place (multiple).
///
/// May be null if the API doesn't provide multiple type categories.
@override List<String>? get types {
  final value = _types;
  if (value == null) return null;
  if (_types is EqualUnmodifiableListView) return _types;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// {@template flutter_serper.results.phoneNumber}
/// The phone number of the place.
/// {@endtemplate}
@override final  String? phoneNumber;
/// The URL of the place's website.
@override final  String? website;
/// The business hours of operation.
///
/// A list of strings representing the opening hours for each day.
 final  Map<String, String>? _openingHours;
/// The business hours of operation.
///
/// A list of strings representing the opening hours for each day.
@override Map<String, String>? get openingHours {
  final value = _openingHours;
  if (value == null) return null;
  if (_openingHours is EqualUnmodifiableMapView) return _openingHours;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// A description of the place.
///
/// Provides additional context or explanation about the place.
@override final  String? description;
/// The thumbnail image URL for the place.
@override final  String? thumbnailUrl;
/// The booking links for the place.
 final  List<String>? _bookingLinks;
/// The booking links for the place.
@override List<String>? get bookingLinks {
  final value = _bookingLinks;
  if (value == null) return null;
  if (_bookingLinks is EqualUnmodifiableListView) return _bookingLinks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// The FID (feature id) for the place.
@override final  String? fid;
/// The latitude of the place.
@override final  double? latitude;
/// The longitude of the place.
@override final  double? longitude;
/// The Google Place ID for this place.
@override final  String? placeId;
/// The position of the place in the results.
@override final  int position;

/// Create a copy of MapResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MapResultCopyWith<_MapResult> get copyWith => __$MapResultCopyWithImpl<_MapResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MapResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MapResult&&(identical(other.title, title) || other.title == title)&&(identical(other.cid, cid) || other.cid == cid)&&(identical(other.address, address) || other.address == address)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.ratingCount, ratingCount) || other.ratingCount == ratingCount)&&(identical(other.priceLevel, priceLevel) || other.priceLevel == priceLevel)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._types, _types)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.website, website) || other.website == website)&&const DeepCollectionEquality().equals(other._openingHours, _openingHours)&&(identical(other.description, description) || other.description == description)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&const DeepCollectionEquality().equals(other._bookingLinks, _bookingLinks)&&(identical(other.fid, fid) || other.fid == fid)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.placeId, placeId) || other.placeId == placeId)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,title,cid,address,rating,ratingCount,priceLevel,type,const DeepCollectionEquality().hash(_types),phoneNumber,website,const DeepCollectionEquality().hash(_openingHours),description,thumbnailUrl,const DeepCollectionEquality().hash(_bookingLinks),fid,latitude,longitude,placeId,position]);

@override
String toString() {
  return 'MapResult(title: $title, cid: $cid, address: $address, rating: $rating, ratingCount: $ratingCount, priceLevel: $priceLevel, type: $type, types: $types, phoneNumber: $phoneNumber, website: $website, openingHours: $openingHours, description: $description, thumbnailUrl: $thumbnailUrl, bookingLinks: $bookingLinks, fid: $fid, latitude: $latitude, longitude: $longitude, placeId: $placeId, position: $position)';
}


}

/// @nodoc
abstract mixin class _$MapResultCopyWith<$Res> implements $MapResultCopyWith<$Res> {
  factory _$MapResultCopyWith(_MapResult value, $Res Function(_MapResult) _then) = __$MapResultCopyWithImpl;
@override @useResult
$Res call({
 String? title, String? cid, String? address, double? rating, int? ratingCount, String? priceLevel, String? type, List<String>? types, String? phoneNumber, String? website, Map<String, String>? openingHours, String? description, String? thumbnailUrl, List<String>? bookingLinks, String? fid, double? latitude, double? longitude, String? placeId, int position
});




}
/// @nodoc
class __$MapResultCopyWithImpl<$Res>
    implements _$MapResultCopyWith<$Res> {
  __$MapResultCopyWithImpl(this._self, this._then);

  final _MapResult _self;
  final $Res Function(_MapResult) _then;

/// Create a copy of MapResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? cid = freezed,Object? address = freezed,Object? rating = freezed,Object? ratingCount = freezed,Object? priceLevel = freezed,Object? type = freezed,Object? types = freezed,Object? phoneNumber = freezed,Object? website = freezed,Object? openingHours = freezed,Object? description = freezed,Object? thumbnailUrl = freezed,Object? bookingLinks = freezed,Object? fid = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? placeId = freezed,Object? position = null,}) {
  return _then(_MapResult(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,cid: freezed == cid ? _self.cid : cid // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,ratingCount: freezed == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as int?,priceLevel: freezed == priceLevel ? _self.priceLevel : priceLevel // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,types: freezed == types ? _self._types : types // ignore: cast_nullable_to_non_nullable
as List<String>?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,website: freezed == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String?,openingHours: freezed == openingHours ? _self._openingHours : openingHours // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,bookingLinks: freezed == bookingLinks ? _self._bookingLinks : bookingLinks // ignore: cast_nullable_to_non_nullable
as List<String>?,fid: freezed == fid ? _self.fid : fid // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,placeId: freezed == placeId ? _self.placeId : placeId // ignore: cast_nullable_to_non_nullable
as String?,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$PlaceReview {

/// The rating given in the review.
 double? get rating;/// The relative date string (e.g., "a month ago").
 String? get date;/// The ISO 8601 date string.
 String? get isoDate;/// The main snippet/content of the review.
 String? get snippet;/// The number of likes/upvotes for the review.
 int? get likes;/// The user who wrote the review.
 PlaceReviewUser? get user;/// The business's response to the review, if any.
 PlaceReviewResponse? get response;/// The unique identifier for this review.
 String? get id;
/// Create a copy of PlaceReview
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaceReviewCopyWith<PlaceReview> get copyWith => _$PlaceReviewCopyWithImpl<PlaceReview>(this as PlaceReview, _$identity);

  /// Serializes this PlaceReview to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlaceReview&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.date, date) || other.date == date)&&(identical(other.isoDate, isoDate) || other.isoDate == isoDate)&&(identical(other.snippet, snippet) || other.snippet == snippet)&&(identical(other.likes, likes) || other.likes == likes)&&(identical(other.user, user) || other.user == user)&&(identical(other.response, response) || other.response == response)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rating,date,isoDate,snippet,likes,user,response,id);

@override
String toString() {
  return 'PlaceReview(rating: $rating, date: $date, isoDate: $isoDate, snippet: $snippet, likes: $likes, user: $user, response: $response, id: $id)';
}


}

/// @nodoc
abstract mixin class $PlaceReviewCopyWith<$Res>  {
  factory $PlaceReviewCopyWith(PlaceReview value, $Res Function(PlaceReview) _then) = _$PlaceReviewCopyWithImpl;
@useResult
$Res call({
 double? rating, String? date, String? isoDate, String? snippet, int? likes, PlaceReviewUser? user, PlaceReviewResponse? response, String? id
});


$PlaceReviewUserCopyWith<$Res>? get user;$PlaceReviewResponseCopyWith<$Res>? get response;

}
/// @nodoc
class _$PlaceReviewCopyWithImpl<$Res>
    implements $PlaceReviewCopyWith<$Res> {
  _$PlaceReviewCopyWithImpl(this._self, this._then);

  final PlaceReview _self;
  final $Res Function(PlaceReview) _then;

/// Create a copy of PlaceReview
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rating = freezed,Object? date = freezed,Object? isoDate = freezed,Object? snippet = freezed,Object? likes = freezed,Object? user = freezed,Object? response = freezed,Object? id = freezed,}) {
  return _then(_self.copyWith(
rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,isoDate: freezed == isoDate ? _self.isoDate : isoDate // ignore: cast_nullable_to_non_nullable
as String?,snippet: freezed == snippet ? _self.snippet : snippet // ignore: cast_nullable_to_non_nullable
as String?,likes: freezed == likes ? _self.likes : likes // ignore: cast_nullable_to_non_nullable
as int?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as PlaceReviewUser?,response: freezed == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as PlaceReviewResponse?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of PlaceReview
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlaceReviewUserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $PlaceReviewUserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of PlaceReview
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlaceReviewResponseCopyWith<$Res>? get response {
    if (_self.response == null) {
    return null;
  }

  return $PlaceReviewResponseCopyWith<$Res>(_self.response!, (value) {
    return _then(_self.copyWith(response: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _PlaceReview implements PlaceReview {
  const _PlaceReview({this.rating, this.date, this.isoDate, this.snippet, this.likes, this.user, this.response, this.id});
  factory _PlaceReview.fromJson(Map<String, dynamic> json) => _$PlaceReviewFromJson(json);

/// The rating given in the review.
@override final  double? rating;
/// The relative date string (e.g., "a month ago").
@override final  String? date;
/// The ISO 8601 date string.
@override final  String? isoDate;
/// The main snippet/content of the review.
@override final  String? snippet;
/// The number of likes/upvotes for the review.
@override final  int? likes;
/// The user who wrote the review.
@override final  PlaceReviewUser? user;
/// The business's response to the review, if any.
@override final  PlaceReviewResponse? response;
/// The unique identifier for this review.
@override final  String? id;

/// Create a copy of PlaceReview
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlaceReviewCopyWith<_PlaceReview> get copyWith => __$PlaceReviewCopyWithImpl<_PlaceReview>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlaceReviewToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlaceReview&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.date, date) || other.date == date)&&(identical(other.isoDate, isoDate) || other.isoDate == isoDate)&&(identical(other.snippet, snippet) || other.snippet == snippet)&&(identical(other.likes, likes) || other.likes == likes)&&(identical(other.user, user) || other.user == user)&&(identical(other.response, response) || other.response == response)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rating,date,isoDate,snippet,likes,user,response,id);

@override
String toString() {
  return 'PlaceReview(rating: $rating, date: $date, isoDate: $isoDate, snippet: $snippet, likes: $likes, user: $user, response: $response, id: $id)';
}


}

/// @nodoc
abstract mixin class _$PlaceReviewCopyWith<$Res> implements $PlaceReviewCopyWith<$Res> {
  factory _$PlaceReviewCopyWith(_PlaceReview value, $Res Function(_PlaceReview) _then) = __$PlaceReviewCopyWithImpl;
@override @useResult
$Res call({
 double? rating, String? date, String? isoDate, String? snippet, int? likes, PlaceReviewUser? user, PlaceReviewResponse? response, String? id
});


@override $PlaceReviewUserCopyWith<$Res>? get user;@override $PlaceReviewResponseCopyWith<$Res>? get response;

}
/// @nodoc
class __$PlaceReviewCopyWithImpl<$Res>
    implements _$PlaceReviewCopyWith<$Res> {
  __$PlaceReviewCopyWithImpl(this._self, this._then);

  final _PlaceReview _self;
  final $Res Function(_PlaceReview) _then;

/// Create a copy of PlaceReview
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rating = freezed,Object? date = freezed,Object? isoDate = freezed,Object? snippet = freezed,Object? likes = freezed,Object? user = freezed,Object? response = freezed,Object? id = freezed,}) {
  return _then(_PlaceReview(
rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,isoDate: freezed == isoDate ? _self.isoDate : isoDate // ignore: cast_nullable_to_non_nullable
as String?,snippet: freezed == snippet ? _self.snippet : snippet // ignore: cast_nullable_to_non_nullable
as String?,likes: freezed == likes ? _self.likes : likes // ignore: cast_nullable_to_non_nullable
as int?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as PlaceReviewUser?,response: freezed == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as PlaceReviewResponse?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of PlaceReview
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlaceReviewUserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $PlaceReviewUserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of PlaceReview
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlaceReviewResponseCopyWith<$Res>? get response {
    if (_self.response == null) {
    return null;
  }

  return $PlaceReviewResponseCopyWith<$Res>(_self.response!, (value) {
    return _then(_self.copyWith(response: value));
  });
}
}


/// @nodoc
mixin _$PlaceReviewUser {

/// The user's display name.
 String? get name;/// The URL to the user's profile thumbnail image.
 String? get thumbnail;/// The link to the user's profile.
 String? get link;/// The number of reviews written by the user.
 int? get reviews;/// The number of photos contributed by the user.
 int? get photos;
/// Create a copy of PlaceReviewUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaceReviewUserCopyWith<PlaceReviewUser> get copyWith => _$PlaceReviewUserCopyWithImpl<PlaceReviewUser>(this as PlaceReviewUser, _$identity);

  /// Serializes this PlaceReviewUser to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlaceReviewUser&&(identical(other.name, name) || other.name == name)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.link, link) || other.link == link)&&(identical(other.reviews, reviews) || other.reviews == reviews)&&(identical(other.photos, photos) || other.photos == photos));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,thumbnail,link,reviews,photos);

@override
String toString() {
  return 'PlaceReviewUser(name: $name, thumbnail: $thumbnail, link: $link, reviews: $reviews, photos: $photos)';
}


}

/// @nodoc
abstract mixin class $PlaceReviewUserCopyWith<$Res>  {
  factory $PlaceReviewUserCopyWith(PlaceReviewUser value, $Res Function(PlaceReviewUser) _then) = _$PlaceReviewUserCopyWithImpl;
@useResult
$Res call({
 String? name, String? thumbnail, String? link, int? reviews, int? photos
});




}
/// @nodoc
class _$PlaceReviewUserCopyWithImpl<$Res>
    implements $PlaceReviewUserCopyWith<$Res> {
  _$PlaceReviewUserCopyWithImpl(this._self, this._then);

  final PlaceReviewUser _self;
  final $Res Function(PlaceReviewUser) _then;

/// Create a copy of PlaceReviewUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? thumbnail = freezed,Object? link = freezed,Object? reviews = freezed,Object? photos = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,reviews: freezed == reviews ? _self.reviews : reviews // ignore: cast_nullable_to_non_nullable
as int?,photos: freezed == photos ? _self.photos : photos // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PlaceReviewUser implements PlaceReviewUser {
  const _PlaceReviewUser({this.name, this.thumbnail, this.link, this.reviews, this.photos});
  factory _PlaceReviewUser.fromJson(Map<String, dynamic> json) => _$PlaceReviewUserFromJson(json);

/// The user's display name.
@override final  String? name;
/// The URL to the user's profile thumbnail image.
@override final  String? thumbnail;
/// The link to the user's profile.
@override final  String? link;
/// The number of reviews written by the user.
@override final  int? reviews;
/// The number of photos contributed by the user.
@override final  int? photos;

/// Create a copy of PlaceReviewUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlaceReviewUserCopyWith<_PlaceReviewUser> get copyWith => __$PlaceReviewUserCopyWithImpl<_PlaceReviewUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlaceReviewUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlaceReviewUser&&(identical(other.name, name) || other.name == name)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.link, link) || other.link == link)&&(identical(other.reviews, reviews) || other.reviews == reviews)&&(identical(other.photos, photos) || other.photos == photos));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,thumbnail,link,reviews,photos);

@override
String toString() {
  return 'PlaceReviewUser(name: $name, thumbnail: $thumbnail, link: $link, reviews: $reviews, photos: $photos)';
}


}

/// @nodoc
abstract mixin class _$PlaceReviewUserCopyWith<$Res> implements $PlaceReviewUserCopyWith<$Res> {
  factory _$PlaceReviewUserCopyWith(_PlaceReviewUser value, $Res Function(_PlaceReviewUser) _then) = __$PlaceReviewUserCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? thumbnail, String? link, int? reviews, int? photos
});




}
/// @nodoc
class __$PlaceReviewUserCopyWithImpl<$Res>
    implements _$PlaceReviewUserCopyWith<$Res> {
  __$PlaceReviewUserCopyWithImpl(this._self, this._then);

  final _PlaceReviewUser _self;
  final $Res Function(_PlaceReviewUser) _then;

/// Create a copy of PlaceReviewUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? thumbnail = freezed,Object? link = freezed,Object? reviews = freezed,Object? photos = freezed,}) {
  return _then(_PlaceReviewUser(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,reviews: freezed == reviews ? _self.reviews : reviews // ignore: cast_nullable_to_non_nullable
as int?,photos: freezed == photos ? _self.photos : photos // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$PlaceReviewResponse {

/// The relative date string (e.g., "a month ago").
 String? get date;/// The ISO 8601 date string.
 String? get isoDate;/// The main snippet/content of the response.
 String? get snippet;
/// Create a copy of PlaceReviewResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaceReviewResponseCopyWith<PlaceReviewResponse> get copyWith => _$PlaceReviewResponseCopyWithImpl<PlaceReviewResponse>(this as PlaceReviewResponse, _$identity);

  /// Serializes this PlaceReviewResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlaceReviewResponse&&(identical(other.date, date) || other.date == date)&&(identical(other.isoDate, isoDate) || other.isoDate == isoDate)&&(identical(other.snippet, snippet) || other.snippet == snippet));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,isoDate,snippet);

@override
String toString() {
  return 'PlaceReviewResponse(date: $date, isoDate: $isoDate, snippet: $snippet)';
}


}

/// @nodoc
abstract mixin class $PlaceReviewResponseCopyWith<$Res>  {
  factory $PlaceReviewResponseCopyWith(PlaceReviewResponse value, $Res Function(PlaceReviewResponse) _then) = _$PlaceReviewResponseCopyWithImpl;
@useResult
$Res call({
 String? date, String? isoDate, String? snippet
});




}
/// @nodoc
class _$PlaceReviewResponseCopyWithImpl<$Res>
    implements $PlaceReviewResponseCopyWith<$Res> {
  _$PlaceReviewResponseCopyWithImpl(this._self, this._then);

  final PlaceReviewResponse _self;
  final $Res Function(PlaceReviewResponse) _then;

/// Create a copy of PlaceReviewResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = freezed,Object? isoDate = freezed,Object? snippet = freezed,}) {
  return _then(_self.copyWith(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,isoDate: freezed == isoDate ? _self.isoDate : isoDate // ignore: cast_nullable_to_non_nullable
as String?,snippet: freezed == snippet ? _self.snippet : snippet // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PlaceReviewResponse implements PlaceReviewResponse {
  const _PlaceReviewResponse({this.date, this.isoDate, this.snippet});
  factory _PlaceReviewResponse.fromJson(Map<String, dynamic> json) => _$PlaceReviewResponseFromJson(json);

/// The relative date string (e.g., "a month ago").
@override final  String? date;
/// The ISO 8601 date string.
@override final  String? isoDate;
/// The main snippet/content of the response.
@override final  String? snippet;

/// Create a copy of PlaceReviewResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlaceReviewResponseCopyWith<_PlaceReviewResponse> get copyWith => __$PlaceReviewResponseCopyWithImpl<_PlaceReviewResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlaceReviewResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlaceReviewResponse&&(identical(other.date, date) || other.date == date)&&(identical(other.isoDate, isoDate) || other.isoDate == isoDate)&&(identical(other.snippet, snippet) || other.snippet == snippet));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,isoDate,snippet);

@override
String toString() {
  return 'PlaceReviewResponse(date: $date, isoDate: $isoDate, snippet: $snippet)';
}


}

/// @nodoc
abstract mixin class _$PlaceReviewResponseCopyWith<$Res> implements $PlaceReviewResponseCopyWith<$Res> {
  factory _$PlaceReviewResponseCopyWith(_PlaceReviewResponse value, $Res Function(_PlaceReviewResponse) _then) = __$PlaceReviewResponseCopyWithImpl;
@override @useResult
$Res call({
 String? date, String? isoDate, String? snippet
});




}
/// @nodoc
class __$PlaceReviewResponseCopyWithImpl<$Res>
    implements _$PlaceReviewResponseCopyWith<$Res> {
  __$PlaceReviewResponseCopyWithImpl(this._self, this._then);

  final _PlaceReviewResponse _self;
  final $Res Function(_PlaceReviewResponse) _then;

/// Create a copy of PlaceReviewResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = freezed,Object? isoDate = freezed,Object? snippet = freezed,}) {
  return _then(_PlaceReviewResponse(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,isoDate: freezed == isoDate ? _self.isoDate : isoDate // ignore: cast_nullable_to_non_nullable
as String?,snippet: freezed == snippet ? _self.snippet : snippet // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PlaceReviewTopic {

/// The name of the topic (e.g., "pick up").
 String? get name;/// The number of reviews associated with this topic.
 int? get reviews;/// The unique identifier for the topic.
 String? get id;
/// Create a copy of PlaceReviewTopic
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaceReviewTopicCopyWith<PlaceReviewTopic> get copyWith => _$PlaceReviewTopicCopyWithImpl<PlaceReviewTopic>(this as PlaceReviewTopic, _$identity);

  /// Serializes this PlaceReviewTopic to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlaceReviewTopic&&(identical(other.name, name) || other.name == name)&&(identical(other.reviews, reviews) || other.reviews == reviews)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,reviews,id);

@override
String toString() {
  return 'PlaceReviewTopic(name: $name, reviews: $reviews, id: $id)';
}


}

/// @nodoc
abstract mixin class $PlaceReviewTopicCopyWith<$Res>  {
  factory $PlaceReviewTopicCopyWith(PlaceReviewTopic value, $Res Function(PlaceReviewTopic) _then) = _$PlaceReviewTopicCopyWithImpl;
@useResult
$Res call({
 String? name, int? reviews, String? id
});




}
/// @nodoc
class _$PlaceReviewTopicCopyWithImpl<$Res>
    implements $PlaceReviewTopicCopyWith<$Res> {
  _$PlaceReviewTopicCopyWithImpl(this._self, this._then);

  final PlaceReviewTopic _self;
  final $Res Function(PlaceReviewTopic) _then;

/// Create a copy of PlaceReviewTopic
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? reviews = freezed,Object? id = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,reviews: freezed == reviews ? _self.reviews : reviews // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PlaceReviewTopic implements PlaceReviewTopic {
  const _PlaceReviewTopic({this.name, this.reviews, this.id});
  factory _PlaceReviewTopic.fromJson(Map<String, dynamic> json) => _$PlaceReviewTopicFromJson(json);

/// The name of the topic (e.g., "pick up").
@override final  String? name;
/// The number of reviews associated with this topic.
@override final  int? reviews;
/// The unique identifier for the topic.
@override final  String? id;

/// Create a copy of PlaceReviewTopic
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlaceReviewTopicCopyWith<_PlaceReviewTopic> get copyWith => __$PlaceReviewTopicCopyWithImpl<_PlaceReviewTopic>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlaceReviewTopicToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlaceReviewTopic&&(identical(other.name, name) || other.name == name)&&(identical(other.reviews, reviews) || other.reviews == reviews)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,reviews,id);

@override
String toString() {
  return 'PlaceReviewTopic(name: $name, reviews: $reviews, id: $id)';
}


}

/// @nodoc
abstract mixin class _$PlaceReviewTopicCopyWith<$Res> implements $PlaceReviewTopicCopyWith<$Res> {
  factory _$PlaceReviewTopicCopyWith(_PlaceReviewTopic value, $Res Function(_PlaceReviewTopic) _then) = __$PlaceReviewTopicCopyWithImpl;
@override @useResult
$Res call({
 String? name, int? reviews, String? id
});




}
/// @nodoc
class __$PlaceReviewTopicCopyWithImpl<$Res>
    implements _$PlaceReviewTopicCopyWith<$Res> {
  __$PlaceReviewTopicCopyWithImpl(this._self, this._then);

  final _PlaceReviewTopic _self;
  final $Res Function(_PlaceReviewTopic) _then;

/// Create a copy of PlaceReviewTopic
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? reviews = freezed,Object? id = freezed,}) {
  return _then(_PlaceReviewTopic(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,reviews: freezed == reviews ? _self.reviews : reviews // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$NewsResult {

/// {@macro flutter_serper.results.title}
 String? get title;/// {@macro flutter_serper.results.link}
 String? get link;/// {@macro flutter_serper.results.snippet}
 String? get snippet;/// {@macro flutter_serper.results.date}
///
/// For news results, this is typically the publication date.
 String? get date;/// {@macro flutter_serper.results.source}
///
/// For news results, this is the name of the news outlet.
 String? get source;/// {@macro flutter_serper.results.imageUrl}
 String? get imageUrl;/// {@macro flutter_serper.results.position}
 int? get position;
/// Create a copy of NewsResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewsResultCopyWith<NewsResult> get copyWith => _$NewsResultCopyWithImpl<NewsResult>(this as NewsResult, _$identity);

  /// Serializes this NewsResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewsResult&&(identical(other.title, title) || other.title == title)&&(identical(other.link, link) || other.link == link)&&(identical(other.snippet, snippet) || other.snippet == snippet)&&(identical(other.date, date) || other.date == date)&&(identical(other.source, source) || other.source == source)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,link,snippet,date,source,imageUrl,position);

@override
String toString() {
  return 'NewsResult(title: $title, link: $link, snippet: $snippet, date: $date, source: $source, imageUrl: $imageUrl, position: $position)';
}


}

/// @nodoc
abstract mixin class $NewsResultCopyWith<$Res>  {
  factory $NewsResultCopyWith(NewsResult value, $Res Function(NewsResult) _then) = _$NewsResultCopyWithImpl;
@useResult
$Res call({
 String? title, String? link, String? snippet, String? date, String? source, String? imageUrl, int? position
});




}
/// @nodoc
class _$NewsResultCopyWithImpl<$Res>
    implements $NewsResultCopyWith<$Res> {
  _$NewsResultCopyWithImpl(this._self, this._then);

  final NewsResult _self;
  final $Res Function(NewsResult) _then;

/// Create a copy of NewsResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? link = freezed,Object? snippet = freezed,Object? date = freezed,Object? source = freezed,Object? imageUrl = freezed,Object? position = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,snippet: freezed == snippet ? _self.snippet : snippet // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _NewsResult implements NewsResult {
  const _NewsResult({this.title, this.link, this.snippet, this.date, this.source, this.imageUrl, this.position});
  factory _NewsResult.fromJson(Map<String, dynamic> json) => _$NewsResultFromJson(json);

/// {@macro flutter_serper.results.title}
@override final  String? title;
/// {@macro flutter_serper.results.link}
@override final  String? link;
/// {@macro flutter_serper.results.snippet}
@override final  String? snippet;
/// {@macro flutter_serper.results.date}
///
/// For news results, this is typically the publication date.
@override final  String? date;
/// {@macro flutter_serper.results.source}
///
/// For news results, this is the name of the news outlet.
@override final  String? source;
/// {@macro flutter_serper.results.imageUrl}
@override final  String? imageUrl;
/// {@macro flutter_serper.results.position}
@override final  int? position;

/// Create a copy of NewsResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NewsResultCopyWith<_NewsResult> get copyWith => __$NewsResultCopyWithImpl<_NewsResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NewsResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewsResult&&(identical(other.title, title) || other.title == title)&&(identical(other.link, link) || other.link == link)&&(identical(other.snippet, snippet) || other.snippet == snippet)&&(identical(other.date, date) || other.date == date)&&(identical(other.source, source) || other.source == source)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,link,snippet,date,source,imageUrl,position);

@override
String toString() {
  return 'NewsResult(title: $title, link: $link, snippet: $snippet, date: $date, source: $source, imageUrl: $imageUrl, position: $position)';
}


}

/// @nodoc
abstract mixin class _$NewsResultCopyWith<$Res> implements $NewsResultCopyWith<$Res> {
  factory _$NewsResultCopyWith(_NewsResult value, $Res Function(_NewsResult) _then) = __$NewsResultCopyWithImpl;
@override @useResult
$Res call({
 String? title, String? link, String? snippet, String? date, String? source, String? imageUrl, int? position
});




}
/// @nodoc
class __$NewsResultCopyWithImpl<$Res>
    implements _$NewsResultCopyWith<$Res> {
  __$NewsResultCopyWithImpl(this._self, this._then);

  final _NewsResult _self;
  final $Res Function(_NewsResult) _then;

/// Create a copy of NewsResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? link = freezed,Object? snippet = freezed,Object? date = freezed,Object? source = freezed,Object? imageUrl = freezed,Object? position = freezed,}) {
  return _then(_NewsResult(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,snippet: freezed == snippet ? _self.snippet : snippet // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$ShoppingResult {

/// {@macro flutter_serper.results.title}
 String? get title;/// {@macro flutter_serper.results.source}
///
/// For shopping results, this is typically the retailer or merchant name.
 String? get source;/// {@macro flutter_serper.results.link}
 String? get link;/// {@macro flutter_serper.results.price}
 String? get price;/// Shipping or delivery information for the product.
///
/// May include cost, timeframe, or other delivery details.
 String? get delivery;/// {@macro flutter_serper.results.imageUrl}
 String? get imageUrl;/// {@macro flutter_serper.results.position}
 int? get position;/// Product rating (e.g., 4.5).
 double? get rating;/// Number of ratings or reviews.
 int? get ratingCount;/// List of offers for the product.
 String? get offers;/// Unique product identifier.
 String? get productId;
/// Create a copy of ShoppingResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShoppingResultCopyWith<ShoppingResult> get copyWith => _$ShoppingResultCopyWithImpl<ShoppingResult>(this as ShoppingResult, _$identity);

  /// Serializes this ShoppingResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShoppingResult&&(identical(other.title, title) || other.title == title)&&(identical(other.source, source) || other.source == source)&&(identical(other.link, link) || other.link == link)&&(identical(other.price, price) || other.price == price)&&(identical(other.delivery, delivery) || other.delivery == delivery)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.position, position) || other.position == position)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.ratingCount, ratingCount) || other.ratingCount == ratingCount)&&(identical(other.offers, offers) || other.offers == offers)&&(identical(other.productId, productId) || other.productId == productId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,source,link,price,delivery,imageUrl,position,rating,ratingCount,offers,productId);

@override
String toString() {
  return 'ShoppingResult(title: $title, source: $source, link: $link, price: $price, delivery: $delivery, imageUrl: $imageUrl, position: $position, rating: $rating, ratingCount: $ratingCount, offers: $offers, productId: $productId)';
}


}

/// @nodoc
abstract mixin class $ShoppingResultCopyWith<$Res>  {
  factory $ShoppingResultCopyWith(ShoppingResult value, $Res Function(ShoppingResult) _then) = _$ShoppingResultCopyWithImpl;
@useResult
$Res call({
 String? title, String? source, String? link, String? price, String? delivery, String? imageUrl, int? position, double? rating, int? ratingCount, String? offers, String? productId
});




}
/// @nodoc
class _$ShoppingResultCopyWithImpl<$Res>
    implements $ShoppingResultCopyWith<$Res> {
  _$ShoppingResultCopyWithImpl(this._self, this._then);

  final ShoppingResult _self;
  final $Res Function(ShoppingResult) _then;

/// Create a copy of ShoppingResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? source = freezed,Object? link = freezed,Object? price = freezed,Object? delivery = freezed,Object? imageUrl = freezed,Object? position = freezed,Object? rating = freezed,Object? ratingCount = freezed,Object? offers = freezed,Object? productId = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,delivery: freezed == delivery ? _self.delivery : delivery // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,ratingCount: freezed == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as int?,offers: freezed == offers ? _self.offers : offers // ignore: cast_nullable_to_non_nullable
as String?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ShoppingResult implements ShoppingResult {
  const _ShoppingResult({this.title, this.source, this.link, this.price, this.delivery, this.imageUrl, this.position, this.rating, this.ratingCount, this.offers, this.productId});
  factory _ShoppingResult.fromJson(Map<String, dynamic> json) => _$ShoppingResultFromJson(json);

/// {@macro flutter_serper.results.title}
@override final  String? title;
/// {@macro flutter_serper.results.source}
///
/// For shopping results, this is typically the retailer or merchant name.
@override final  String? source;
/// {@macro flutter_serper.results.link}
@override final  String? link;
/// {@macro flutter_serper.results.price}
@override final  String? price;
/// Shipping or delivery information for the product.
///
/// May include cost, timeframe, or other delivery details.
@override final  String? delivery;
/// {@macro flutter_serper.results.imageUrl}
@override final  String? imageUrl;
/// {@macro flutter_serper.results.position}
@override final  int? position;
/// Product rating (e.g., 4.5).
@override final  double? rating;
/// Number of ratings or reviews.
@override final  int? ratingCount;
/// List of offers for the product.
@override final  String? offers;
/// Unique product identifier.
@override final  String? productId;

/// Create a copy of ShoppingResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShoppingResultCopyWith<_ShoppingResult> get copyWith => __$ShoppingResultCopyWithImpl<_ShoppingResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShoppingResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShoppingResult&&(identical(other.title, title) || other.title == title)&&(identical(other.source, source) || other.source == source)&&(identical(other.link, link) || other.link == link)&&(identical(other.price, price) || other.price == price)&&(identical(other.delivery, delivery) || other.delivery == delivery)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.position, position) || other.position == position)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.ratingCount, ratingCount) || other.ratingCount == ratingCount)&&(identical(other.offers, offers) || other.offers == offers)&&(identical(other.productId, productId) || other.productId == productId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,source,link,price,delivery,imageUrl,position,rating,ratingCount,offers,productId);

@override
String toString() {
  return 'ShoppingResult(title: $title, source: $source, link: $link, price: $price, delivery: $delivery, imageUrl: $imageUrl, position: $position, rating: $rating, ratingCount: $ratingCount, offers: $offers, productId: $productId)';
}


}

/// @nodoc
abstract mixin class _$ShoppingResultCopyWith<$Res> implements $ShoppingResultCopyWith<$Res> {
  factory _$ShoppingResultCopyWith(_ShoppingResult value, $Res Function(_ShoppingResult) _then) = __$ShoppingResultCopyWithImpl;
@override @useResult
$Res call({
 String? title, String? source, String? link, String? price, String? delivery, String? imageUrl, int? position, double? rating, int? ratingCount, String? offers, String? productId
});




}
/// @nodoc
class __$ShoppingResultCopyWithImpl<$Res>
    implements _$ShoppingResultCopyWith<$Res> {
  __$ShoppingResultCopyWithImpl(this._self, this._then);

  final _ShoppingResult _self;
  final $Res Function(_ShoppingResult) _then;

/// Create a copy of ShoppingResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? source = freezed,Object? link = freezed,Object? price = freezed,Object? delivery = freezed,Object? imageUrl = freezed,Object? position = freezed,Object? rating = freezed,Object? ratingCount = freezed,Object? offers = freezed,Object? productId = freezed,}) {
  return _then(_ShoppingResult(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,delivery: freezed == delivery ? _self.delivery : delivery // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,ratingCount: freezed == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as int?,offers: freezed == offers ? _self.offers : offers // ignore: cast_nullable_to_non_nullable
as String?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$LensResult {

/// {@macro flutter_serper.results.title}
 String? get title;/// {@macro flutter_serper.results.source}
 String? get source;/// {@macro flutter_serper.results.link}
 String? get link;/// {@macro flutter_serper.results.imageUrl}
 String? get imageUrl;/// {@macro flutter_serper.results.thumbnailUrl}
 String? get thumbnailUrl;
/// Create a copy of LensResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LensResultCopyWith<LensResult> get copyWith => _$LensResultCopyWithImpl<LensResult>(this as LensResult, _$identity);

  /// Serializes this LensResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LensResult&&(identical(other.title, title) || other.title == title)&&(identical(other.source, source) || other.source == source)&&(identical(other.link, link) || other.link == link)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,source,link,imageUrl,thumbnailUrl);

@override
String toString() {
  return 'LensResult(title: $title, source: $source, link: $link, imageUrl: $imageUrl, thumbnailUrl: $thumbnailUrl)';
}


}

/// @nodoc
abstract mixin class $LensResultCopyWith<$Res>  {
  factory $LensResultCopyWith(LensResult value, $Res Function(LensResult) _then) = _$LensResultCopyWithImpl;
@useResult
$Res call({
 String? title, String? source, String? link, String? imageUrl, String? thumbnailUrl
});




}
/// @nodoc
class _$LensResultCopyWithImpl<$Res>
    implements $LensResultCopyWith<$Res> {
  _$LensResultCopyWithImpl(this._self, this._then);

  final LensResult _self;
  final $Res Function(LensResult) _then;

/// Create a copy of LensResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? source = freezed,Object? link = freezed,Object? imageUrl = freezed,Object? thumbnailUrl = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _LensResult implements LensResult {
  const _LensResult({this.title, this.source, this.link, this.imageUrl, this.thumbnailUrl});
  factory _LensResult.fromJson(Map<String, dynamic> json) => _$LensResultFromJson(json);

/// {@macro flutter_serper.results.title}
@override final  String? title;
/// {@macro flutter_serper.results.source}
@override final  String? source;
/// {@macro flutter_serper.results.link}
@override final  String? link;
/// {@macro flutter_serper.results.imageUrl}
@override final  String? imageUrl;
/// {@macro flutter_serper.results.thumbnailUrl}
@override final  String? thumbnailUrl;

/// Create a copy of LensResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LensResultCopyWith<_LensResult> get copyWith => __$LensResultCopyWithImpl<_LensResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LensResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LensResult&&(identical(other.title, title) || other.title == title)&&(identical(other.source, source) || other.source == source)&&(identical(other.link, link) || other.link == link)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,source,link,imageUrl,thumbnailUrl);

@override
String toString() {
  return 'LensResult(title: $title, source: $source, link: $link, imageUrl: $imageUrl, thumbnailUrl: $thumbnailUrl)';
}


}

/// @nodoc
abstract mixin class _$LensResultCopyWith<$Res> implements $LensResultCopyWith<$Res> {
  factory _$LensResultCopyWith(_LensResult value, $Res Function(_LensResult) _then) = __$LensResultCopyWithImpl;
@override @useResult
$Res call({
 String? title, String? source, String? link, String? imageUrl, String? thumbnailUrl
});




}
/// @nodoc
class __$LensResultCopyWithImpl<$Res>
    implements _$LensResultCopyWith<$Res> {
  __$LensResultCopyWithImpl(this._self, this._then);

  final _LensResult _self;
  final $Res Function(_LensResult) _then;

/// Create a copy of LensResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? source = freezed,Object? link = freezed,Object? imageUrl = freezed,Object? thumbnailUrl = freezed,}) {
  return _then(_LensResult(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ScholarResult {

/// {@macro flutter_serper.results.title}
 String? get title;/// {@macro flutter_serper.results.link}
 String? get link;/// Information about the publication.
///
/// Typically includes the journal name, conference, or publisher details.
 String? get publicationInfo;/// {@macro flutter_serper.results.snippet}
 String? get snippet;/// The year the academic paper was published.
 int? get year;/// The number of times this paper has been cited by other papers.
///
/// This is an indicator of the paper's influence in its field.
 int? get citedBy;/// URL to the PDF version of the academic paper.
 String? get pdfUrl;/// URL to the HTML version of the academic paper.
 String? get htmlUrl;/// The unique identifier for this academic paper.
 String? get id;
/// Create a copy of ScholarResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScholarResultCopyWith<ScholarResult> get copyWith => _$ScholarResultCopyWithImpl<ScholarResult>(this as ScholarResult, _$identity);

  /// Serializes this ScholarResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScholarResult&&(identical(other.title, title) || other.title == title)&&(identical(other.link, link) || other.link == link)&&(identical(other.publicationInfo, publicationInfo) || other.publicationInfo == publicationInfo)&&(identical(other.snippet, snippet) || other.snippet == snippet)&&(identical(other.year, year) || other.year == year)&&(identical(other.citedBy, citedBy) || other.citedBy == citedBy)&&(identical(other.pdfUrl, pdfUrl) || other.pdfUrl == pdfUrl)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,link,publicationInfo,snippet,year,citedBy,pdfUrl,htmlUrl,id);

@override
String toString() {
  return 'ScholarResult(title: $title, link: $link, publicationInfo: $publicationInfo, snippet: $snippet, year: $year, citedBy: $citedBy, pdfUrl: $pdfUrl, htmlUrl: $htmlUrl, id: $id)';
}


}

/// @nodoc
abstract mixin class $ScholarResultCopyWith<$Res>  {
  factory $ScholarResultCopyWith(ScholarResult value, $Res Function(ScholarResult) _then) = _$ScholarResultCopyWithImpl;
@useResult
$Res call({
 String? title, String? link, String? publicationInfo, String? snippet, int? year, int? citedBy, String? pdfUrl, String? htmlUrl, String? id
});




}
/// @nodoc
class _$ScholarResultCopyWithImpl<$Res>
    implements $ScholarResultCopyWith<$Res> {
  _$ScholarResultCopyWithImpl(this._self, this._then);

  final ScholarResult _self;
  final $Res Function(ScholarResult) _then;

/// Create a copy of ScholarResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? link = freezed,Object? publicationInfo = freezed,Object? snippet = freezed,Object? year = freezed,Object? citedBy = freezed,Object? pdfUrl = freezed,Object? htmlUrl = freezed,Object? id = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,publicationInfo: freezed == publicationInfo ? _self.publicationInfo : publicationInfo // ignore: cast_nullable_to_non_nullable
as String?,snippet: freezed == snippet ? _self.snippet : snippet // ignore: cast_nullable_to_non_nullable
as String?,year: freezed == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int?,citedBy: freezed == citedBy ? _self.citedBy : citedBy // ignore: cast_nullable_to_non_nullable
as int?,pdfUrl: freezed == pdfUrl ? _self.pdfUrl : pdfUrl // ignore: cast_nullable_to_non_nullable
as String?,htmlUrl: freezed == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ScholarResult implements ScholarResult {
  const _ScholarResult({this.title, this.link, this.publicationInfo, this.snippet, this.year, this.citedBy, this.pdfUrl, this.htmlUrl, this.id});
  factory _ScholarResult.fromJson(Map<String, dynamic> json) => _$ScholarResultFromJson(json);

/// {@macro flutter_serper.results.title}
@override final  String? title;
/// {@macro flutter_serper.results.link}
@override final  String? link;
/// Information about the publication.
///
/// Typically includes the journal name, conference, or publisher details.
@override final  String? publicationInfo;
/// {@macro flutter_serper.results.snippet}
@override final  String? snippet;
/// The year the academic paper was published.
@override final  int? year;
/// The number of times this paper has been cited by other papers.
///
/// This is an indicator of the paper's influence in its field.
@override final  int? citedBy;
/// URL to the PDF version of the academic paper.
@override final  String? pdfUrl;
/// URL to the HTML version of the academic paper.
@override final  String? htmlUrl;
/// The unique identifier for this academic paper.
@override final  String? id;

/// Create a copy of ScholarResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScholarResultCopyWith<_ScholarResult> get copyWith => __$ScholarResultCopyWithImpl<_ScholarResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScholarResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScholarResult&&(identical(other.title, title) || other.title == title)&&(identical(other.link, link) || other.link == link)&&(identical(other.publicationInfo, publicationInfo) || other.publicationInfo == publicationInfo)&&(identical(other.snippet, snippet) || other.snippet == snippet)&&(identical(other.year, year) || other.year == year)&&(identical(other.citedBy, citedBy) || other.citedBy == citedBy)&&(identical(other.pdfUrl, pdfUrl) || other.pdfUrl == pdfUrl)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,link,publicationInfo,snippet,year,citedBy,pdfUrl,htmlUrl,id);

@override
String toString() {
  return 'ScholarResult(title: $title, link: $link, publicationInfo: $publicationInfo, snippet: $snippet, year: $year, citedBy: $citedBy, pdfUrl: $pdfUrl, htmlUrl: $htmlUrl, id: $id)';
}


}

/// @nodoc
abstract mixin class _$ScholarResultCopyWith<$Res> implements $ScholarResultCopyWith<$Res> {
  factory _$ScholarResultCopyWith(_ScholarResult value, $Res Function(_ScholarResult) _then) = __$ScholarResultCopyWithImpl;
@override @useResult
$Res call({
 String? title, String? link, String? publicationInfo, String? snippet, int? year, int? citedBy, String? pdfUrl, String? htmlUrl, String? id
});




}
/// @nodoc
class __$ScholarResultCopyWithImpl<$Res>
    implements _$ScholarResultCopyWith<$Res> {
  __$ScholarResultCopyWithImpl(this._self, this._then);

  final _ScholarResult _self;
  final $Res Function(_ScholarResult) _then;

/// Create a copy of ScholarResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? link = freezed,Object? publicationInfo = freezed,Object? snippet = freezed,Object? year = freezed,Object? citedBy = freezed,Object? pdfUrl = freezed,Object? htmlUrl = freezed,Object? id = freezed,}) {
  return _then(_ScholarResult(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,publicationInfo: freezed == publicationInfo ? _self.publicationInfo : publicationInfo // ignore: cast_nullable_to_non_nullable
as String?,snippet: freezed == snippet ? _self.snippet : snippet // ignore: cast_nullable_to_non_nullable
as String?,year: freezed == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int?,citedBy: freezed == citedBy ? _self.citedBy : citedBy // ignore: cast_nullable_to_non_nullable
as int?,pdfUrl: freezed == pdfUrl ? _self.pdfUrl : pdfUrl // ignore: cast_nullable_to_non_nullable
as String?,htmlUrl: freezed == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PatentResult {

/// {@macro flutter_serper.results.title}
 String? get title;/// {@macro flutter_serper.results.snippet}
 String? get snippet;/// {@macro flutter_serper.results.link}
 String? get link;/// The priority date of the patent.
///
/// This is the earliest filing date in a family of patents.
 String? get priorityDate;/// The date when the patent application was filed.
 String? get filingDate;/// The date when the patent was granted, if applicable.
 String? get grantDate;/// The date when the patent was published.
 String? get publicationDate;/// The name(s) of the inventor(s) of the patent.
 String? get inventor;/// The name of the entity to whom the patent is assigned.
 String? get assignee;/// The official publication number of the patent.
 String? get publicationNumber;/// The language in which the patent is written.
 String? get language;/// {@macro ResultDocTemplates.thumbnailUrlDoc}
 String? get thumbnailUrl;/// URL to the PDF version of the patent document.
 String? get pdfUrl;/// List of figures included in the patent.
///
/// These are technical drawings or illustrations that are part of the patent.
 List<PatentFigure>? get figures;/// {@macro ResultDocTemplates.positionDoc}
 int? get position;
/// Create a copy of PatentResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatentResultCopyWith<PatentResult> get copyWith => _$PatentResultCopyWithImpl<PatentResult>(this as PatentResult, _$identity);

  /// Serializes this PatentResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatentResult&&(identical(other.title, title) || other.title == title)&&(identical(other.snippet, snippet) || other.snippet == snippet)&&(identical(other.link, link) || other.link == link)&&(identical(other.priorityDate, priorityDate) || other.priorityDate == priorityDate)&&(identical(other.filingDate, filingDate) || other.filingDate == filingDate)&&(identical(other.grantDate, grantDate) || other.grantDate == grantDate)&&(identical(other.publicationDate, publicationDate) || other.publicationDate == publicationDate)&&(identical(other.inventor, inventor) || other.inventor == inventor)&&(identical(other.assignee, assignee) || other.assignee == assignee)&&(identical(other.publicationNumber, publicationNumber) || other.publicationNumber == publicationNumber)&&(identical(other.language, language) || other.language == language)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.pdfUrl, pdfUrl) || other.pdfUrl == pdfUrl)&&const DeepCollectionEquality().equals(other.figures, figures)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,snippet,link,priorityDate,filingDate,grantDate,publicationDate,inventor,assignee,publicationNumber,language,thumbnailUrl,pdfUrl,const DeepCollectionEquality().hash(figures),position);

@override
String toString() {
  return 'PatentResult(title: $title, snippet: $snippet, link: $link, priorityDate: $priorityDate, filingDate: $filingDate, grantDate: $grantDate, publicationDate: $publicationDate, inventor: $inventor, assignee: $assignee, publicationNumber: $publicationNumber, language: $language, thumbnailUrl: $thumbnailUrl, pdfUrl: $pdfUrl, figures: $figures, position: $position)';
}


}

/// @nodoc
abstract mixin class $PatentResultCopyWith<$Res>  {
  factory $PatentResultCopyWith(PatentResult value, $Res Function(PatentResult) _then) = _$PatentResultCopyWithImpl;
@useResult
$Res call({
 String? title, String? snippet, String? link, String? priorityDate, String? filingDate, String? grantDate, String? publicationDate, String? inventor, String? assignee, String? publicationNumber, String? language, String? thumbnailUrl, String? pdfUrl, List<PatentFigure>? figures, int? position
});




}
/// @nodoc
class _$PatentResultCopyWithImpl<$Res>
    implements $PatentResultCopyWith<$Res> {
  _$PatentResultCopyWithImpl(this._self, this._then);

  final PatentResult _self;
  final $Res Function(PatentResult) _then;

/// Create a copy of PatentResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? snippet = freezed,Object? link = freezed,Object? priorityDate = freezed,Object? filingDate = freezed,Object? grantDate = freezed,Object? publicationDate = freezed,Object? inventor = freezed,Object? assignee = freezed,Object? publicationNumber = freezed,Object? language = freezed,Object? thumbnailUrl = freezed,Object? pdfUrl = freezed,Object? figures = freezed,Object? position = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,snippet: freezed == snippet ? _self.snippet : snippet // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,priorityDate: freezed == priorityDate ? _self.priorityDate : priorityDate // ignore: cast_nullable_to_non_nullable
as String?,filingDate: freezed == filingDate ? _self.filingDate : filingDate // ignore: cast_nullable_to_non_nullable
as String?,grantDate: freezed == grantDate ? _self.grantDate : grantDate // ignore: cast_nullable_to_non_nullable
as String?,publicationDate: freezed == publicationDate ? _self.publicationDate : publicationDate // ignore: cast_nullable_to_non_nullable
as String?,inventor: freezed == inventor ? _self.inventor : inventor // ignore: cast_nullable_to_non_nullable
as String?,assignee: freezed == assignee ? _self.assignee : assignee // ignore: cast_nullable_to_non_nullable
as String?,publicationNumber: freezed == publicationNumber ? _self.publicationNumber : publicationNumber // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,pdfUrl: freezed == pdfUrl ? _self.pdfUrl : pdfUrl // ignore: cast_nullable_to_non_nullable
as String?,figures: freezed == figures ? _self.figures : figures // ignore: cast_nullable_to_non_nullable
as List<PatentFigure>?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PatentResult implements PatentResult {
  const _PatentResult({this.title, this.snippet, this.link, this.priorityDate, this.filingDate, this.grantDate, this.publicationDate, this.inventor, this.assignee, this.publicationNumber, this.language, this.thumbnailUrl, this.pdfUrl, final  List<PatentFigure>? figures, this.position}): _figures = figures;
  factory _PatentResult.fromJson(Map<String, dynamic> json) => _$PatentResultFromJson(json);

/// {@macro flutter_serper.results.title}
@override final  String? title;
/// {@macro flutter_serper.results.snippet}
@override final  String? snippet;
/// {@macro flutter_serper.results.link}
@override final  String? link;
/// The priority date of the patent.
///
/// This is the earliest filing date in a family of patents.
@override final  String? priorityDate;
/// The date when the patent application was filed.
@override final  String? filingDate;
/// The date when the patent was granted, if applicable.
@override final  String? grantDate;
/// The date when the patent was published.
@override final  String? publicationDate;
/// The name(s) of the inventor(s) of the patent.
@override final  String? inventor;
/// The name of the entity to whom the patent is assigned.
@override final  String? assignee;
/// The official publication number of the patent.
@override final  String? publicationNumber;
/// The language in which the patent is written.
@override final  String? language;
/// {@macro ResultDocTemplates.thumbnailUrlDoc}
@override final  String? thumbnailUrl;
/// URL to the PDF version of the patent document.
@override final  String? pdfUrl;
/// List of figures included in the patent.
///
/// These are technical drawings or illustrations that are part of the patent.
 final  List<PatentFigure>? _figures;
/// List of figures included in the patent.
///
/// These are technical drawings or illustrations that are part of the patent.
@override List<PatentFigure>? get figures {
  final value = _figures;
  if (value == null) return null;
  if (_figures is EqualUnmodifiableListView) return _figures;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// {@macro ResultDocTemplates.positionDoc}
@override final  int? position;

/// Create a copy of PatentResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatentResultCopyWith<_PatentResult> get copyWith => __$PatentResultCopyWithImpl<_PatentResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PatentResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatentResult&&(identical(other.title, title) || other.title == title)&&(identical(other.snippet, snippet) || other.snippet == snippet)&&(identical(other.link, link) || other.link == link)&&(identical(other.priorityDate, priorityDate) || other.priorityDate == priorityDate)&&(identical(other.filingDate, filingDate) || other.filingDate == filingDate)&&(identical(other.grantDate, grantDate) || other.grantDate == grantDate)&&(identical(other.publicationDate, publicationDate) || other.publicationDate == publicationDate)&&(identical(other.inventor, inventor) || other.inventor == inventor)&&(identical(other.assignee, assignee) || other.assignee == assignee)&&(identical(other.publicationNumber, publicationNumber) || other.publicationNumber == publicationNumber)&&(identical(other.language, language) || other.language == language)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.pdfUrl, pdfUrl) || other.pdfUrl == pdfUrl)&&const DeepCollectionEquality().equals(other._figures, _figures)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,snippet,link,priorityDate,filingDate,grantDate,publicationDate,inventor,assignee,publicationNumber,language,thumbnailUrl,pdfUrl,const DeepCollectionEquality().hash(_figures),position);

@override
String toString() {
  return 'PatentResult(title: $title, snippet: $snippet, link: $link, priorityDate: $priorityDate, filingDate: $filingDate, grantDate: $grantDate, publicationDate: $publicationDate, inventor: $inventor, assignee: $assignee, publicationNumber: $publicationNumber, language: $language, thumbnailUrl: $thumbnailUrl, pdfUrl: $pdfUrl, figures: $figures, position: $position)';
}


}

/// @nodoc
abstract mixin class _$PatentResultCopyWith<$Res> implements $PatentResultCopyWith<$Res> {
  factory _$PatentResultCopyWith(_PatentResult value, $Res Function(_PatentResult) _then) = __$PatentResultCopyWithImpl;
@override @useResult
$Res call({
 String? title, String? snippet, String? link, String? priorityDate, String? filingDate, String? grantDate, String? publicationDate, String? inventor, String? assignee, String? publicationNumber, String? language, String? thumbnailUrl, String? pdfUrl, List<PatentFigure>? figures, int? position
});




}
/// @nodoc
class __$PatentResultCopyWithImpl<$Res>
    implements _$PatentResultCopyWith<$Res> {
  __$PatentResultCopyWithImpl(this._self, this._then);

  final _PatentResult _self;
  final $Res Function(_PatentResult) _then;

/// Create a copy of PatentResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? snippet = freezed,Object? link = freezed,Object? priorityDate = freezed,Object? filingDate = freezed,Object? grantDate = freezed,Object? publicationDate = freezed,Object? inventor = freezed,Object? assignee = freezed,Object? publicationNumber = freezed,Object? language = freezed,Object? thumbnailUrl = freezed,Object? pdfUrl = freezed,Object? figures = freezed,Object? position = freezed,}) {
  return _then(_PatentResult(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,snippet: freezed == snippet ? _self.snippet : snippet // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,priorityDate: freezed == priorityDate ? _self.priorityDate : priorityDate // ignore: cast_nullable_to_non_nullable
as String?,filingDate: freezed == filingDate ? _self.filingDate : filingDate // ignore: cast_nullable_to_non_nullable
as String?,grantDate: freezed == grantDate ? _self.grantDate : grantDate // ignore: cast_nullable_to_non_nullable
as String?,publicationDate: freezed == publicationDate ? _self.publicationDate : publicationDate // ignore: cast_nullable_to_non_nullable
as String?,inventor: freezed == inventor ? _self.inventor : inventor // ignore: cast_nullable_to_non_nullable
as String?,assignee: freezed == assignee ? _self.assignee : assignee // ignore: cast_nullable_to_non_nullable
as String?,publicationNumber: freezed == publicationNumber ? _self.publicationNumber : publicationNumber // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,pdfUrl: freezed == pdfUrl ? _self.pdfUrl : pdfUrl // ignore: cast_nullable_to_non_nullable
as String?,figures: freezed == figures ? _self._figures : figures // ignore: cast_nullable_to_non_nullable
as List<PatentFigure>?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$PatentFigure {

/// {@macro flutter_serper.results.imageUrl}
 String? get imageUrl;/// {@macro flutter_serper.results.thumbnailUrl}
 String? get thumbnailUrl;
/// Create a copy of PatentFigure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatentFigureCopyWith<PatentFigure> get copyWith => _$PatentFigureCopyWithImpl<PatentFigure>(this as PatentFigure, _$identity);

  /// Serializes this PatentFigure to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatentFigure&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,imageUrl,thumbnailUrl);

@override
String toString() {
  return 'PatentFigure(imageUrl: $imageUrl, thumbnailUrl: $thumbnailUrl)';
}


}

/// @nodoc
abstract mixin class $PatentFigureCopyWith<$Res>  {
  factory $PatentFigureCopyWith(PatentFigure value, $Res Function(PatentFigure) _then) = _$PatentFigureCopyWithImpl;
@useResult
$Res call({
 String? imageUrl, String? thumbnailUrl
});




}
/// @nodoc
class _$PatentFigureCopyWithImpl<$Res>
    implements $PatentFigureCopyWith<$Res> {
  _$PatentFigureCopyWithImpl(this._self, this._then);

  final PatentFigure _self;
  final $Res Function(PatentFigure) _then;

/// Create a copy of PatentFigure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? imageUrl = freezed,Object? thumbnailUrl = freezed,}) {
  return _then(_self.copyWith(
imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PatentFigure implements PatentFigure {
  const _PatentFigure({this.imageUrl, this.thumbnailUrl});
  factory _PatentFigure.fromJson(Map<String, dynamic> json) => _$PatentFigureFromJson(json);

/// {@macro flutter_serper.results.imageUrl}
@override final  String? imageUrl;
/// {@macro flutter_serper.results.thumbnailUrl}
@override final  String? thumbnailUrl;

/// Create a copy of PatentFigure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatentFigureCopyWith<_PatentFigure> get copyWith => __$PatentFigureCopyWithImpl<_PatentFigure>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PatentFigureToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatentFigure&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,imageUrl,thumbnailUrl);

@override
String toString() {
  return 'PatentFigure(imageUrl: $imageUrl, thumbnailUrl: $thumbnailUrl)';
}


}

/// @nodoc
abstract mixin class _$PatentFigureCopyWith<$Res> implements $PatentFigureCopyWith<$Res> {
  factory _$PatentFigureCopyWith(_PatentFigure value, $Res Function(_PatentFigure) _then) = __$PatentFigureCopyWithImpl;
@override @useResult
$Res call({
 String? imageUrl, String? thumbnailUrl
});




}
/// @nodoc
class __$PatentFigureCopyWithImpl<$Res>
    implements _$PatentFigureCopyWith<$Res> {
  __$PatentFigureCopyWithImpl(this._self, this._then);

  final _PatentFigure _self;
  final $Res Function(_PatentFigure) _then;

/// Create a copy of PatentFigure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? imageUrl = freezed,Object? thumbnailUrl = freezed,}) {
  return _then(_PatentFigure(
imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$WebpageResult {

/// The extracted text content from the webpage.
///
/// This is the main content that has been parsed from the webpage.
 String? get text;// /// {@macro flutter_serper.results.title}
// required String title,
/// The content formatted as markdown, if available.
///
/// This provides a structured representation of the content with formatting.
 String? get markdown;/// Additional metadata about the webpage.
///
/// May include information like title, description, author, etc.
///
/// Note: This field is not strongly typed since the metadata structure
/// can vary widely between different webpages and the meta tags are not
/// standardized.
 Map<String, dynamic>? get metadata;/// Structured data markup (JSON-LD)
///
/// See: https://json-ld.org
 Map<String, dynamic>? get jsonld;/// The number of credits used for extracting this webpage.
///
/// Serper API uses a credit-based system for billing.
 int? get credits;
/// Create a copy of WebpageResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WebpageResultCopyWith<WebpageResult> get copyWith => _$WebpageResultCopyWithImpl<WebpageResult>(this as WebpageResult, _$identity);

  /// Serializes this WebpageResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WebpageResult&&(identical(other.text, text) || other.text == text)&&(identical(other.markdown, markdown) || other.markdown == markdown)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&const DeepCollectionEquality().equals(other.jsonld, jsonld)&&(identical(other.credits, credits) || other.credits == credits));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,markdown,const DeepCollectionEquality().hash(metadata),const DeepCollectionEquality().hash(jsonld),credits);

@override
String toString() {
  return 'WebpageResult(text: $text, markdown: $markdown, metadata: $metadata, jsonld: $jsonld, credits: $credits)';
}


}

/// @nodoc
abstract mixin class $WebpageResultCopyWith<$Res>  {
  factory $WebpageResultCopyWith(WebpageResult value, $Res Function(WebpageResult) _then) = _$WebpageResultCopyWithImpl;
@useResult
$Res call({
 String? text, String? markdown, Map<String, dynamic>? metadata, Map<String, dynamic>? jsonld, int? credits
});




}
/// @nodoc
class _$WebpageResultCopyWithImpl<$Res>
    implements $WebpageResultCopyWith<$Res> {
  _$WebpageResultCopyWithImpl(this._self, this._then);

  final WebpageResult _self;
  final $Res Function(WebpageResult) _then;

/// Create a copy of WebpageResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = freezed,Object? markdown = freezed,Object? metadata = freezed,Object? jsonld = freezed,Object? credits = freezed,}) {
  return _then(_self.copyWith(
text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,markdown: freezed == markdown ? _self.markdown : markdown // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,jsonld: freezed == jsonld ? _self.jsonld : jsonld // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,credits: freezed == credits ? _self.credits : credits // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _WebpageResult implements WebpageResult {
  const _WebpageResult({this.text, this.markdown, final  Map<String, dynamic>? metadata, final  Map<String, dynamic>? jsonld, this.credits}): _metadata = metadata,_jsonld = jsonld;
  factory _WebpageResult.fromJson(Map<String, dynamic> json) => _$WebpageResultFromJson(json);

/// The extracted text content from the webpage.
///
/// This is the main content that has been parsed from the webpage.
@override final  String? text;
// /// {@macro flutter_serper.results.title}
// required String title,
/// The content formatted as markdown, if available.
///
/// This provides a structured representation of the content with formatting.
@override final  String? markdown;
/// Additional metadata about the webpage.
///
/// May include information like title, description, author, etc.
///
/// Note: This field is not strongly typed since the metadata structure
/// can vary widely between different webpages and the meta tags are not
/// standardized.
 final  Map<String, dynamic>? _metadata;
/// Additional metadata about the webpage.
///
/// May include information like title, description, author, etc.
///
/// Note: This field is not strongly typed since the metadata structure
/// can vary widely between different webpages and the meta tags are not
/// standardized.
@override Map<String, dynamic>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// Structured data markup (JSON-LD)
///
/// See: https://json-ld.org
 final  Map<String, dynamic>? _jsonld;
/// Structured data markup (JSON-LD)
///
/// See: https://json-ld.org
@override Map<String, dynamic>? get jsonld {
  final value = _jsonld;
  if (value == null) return null;
  if (_jsonld is EqualUnmodifiableMapView) return _jsonld;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// The number of credits used for extracting this webpage.
///
/// Serper API uses a credit-based system for billing.
@override final  int? credits;

/// Create a copy of WebpageResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WebpageResultCopyWith<_WebpageResult> get copyWith => __$WebpageResultCopyWithImpl<_WebpageResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WebpageResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WebpageResult&&(identical(other.text, text) || other.text == text)&&(identical(other.markdown, markdown) || other.markdown == markdown)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&const DeepCollectionEquality().equals(other._jsonld, _jsonld)&&(identical(other.credits, credits) || other.credits == credits));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,markdown,const DeepCollectionEquality().hash(_metadata),const DeepCollectionEquality().hash(_jsonld),credits);

@override
String toString() {
  return 'WebpageResult(text: $text, markdown: $markdown, metadata: $metadata, jsonld: $jsonld, credits: $credits)';
}


}

/// @nodoc
abstract mixin class _$WebpageResultCopyWith<$Res> implements $WebpageResultCopyWith<$Res> {
  factory _$WebpageResultCopyWith(_WebpageResult value, $Res Function(_WebpageResult) _then) = __$WebpageResultCopyWithImpl;
@override @useResult
$Res call({
 String? text, String? markdown, Map<String, dynamic>? metadata, Map<String, dynamic>? jsonld, int? credits
});




}
/// @nodoc
class __$WebpageResultCopyWithImpl<$Res>
    implements _$WebpageResultCopyWith<$Res> {
  __$WebpageResultCopyWithImpl(this._self, this._then);

  final _WebpageResult _self;
  final $Res Function(_WebpageResult) _then;

/// Create a copy of WebpageResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = freezed,Object? markdown = freezed,Object? metadata = freezed,Object? jsonld = freezed,Object? credits = freezed,}) {
  return _then(_WebpageResult(
text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,markdown: freezed == markdown ? _self.markdown : markdown // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,jsonld: freezed == jsonld ? _self._jsonld : jsonld // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,credits: freezed == credits ? _self.credits : credits // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
