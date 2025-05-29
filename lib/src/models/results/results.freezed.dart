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
 String get title;/// {@template flutter_serper.results.link}
/// The URL link to the result.
///
/// This URL can be used to navigate to the full content of the search result.
/// {@endtemplate}
 String get link;/// {@template flutter_serper.results.snippet}
/// A brief excerpt or description of the result.
///
/// This provides a summary of the content to help users understand what the result contains.
/// {@endtemplate}
 String get snippet;/// {@template flutter_serper.results.date}
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
 int get position; dynamic get sitelinks;
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
 String title, String link, String snippet, String? date, double? rating, int? ratingCount, String? imageUrl, int position, dynamic sitelinks
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
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? link = null,Object? snippet = null,Object? date = freezed,Object? rating = freezed,Object? ratingCount = freezed,Object? imageUrl = freezed,Object? position = null,Object? sitelinks = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,snippet: null == snippet ? _self.snippet : snippet // ignore: cast_nullable_to_non_nullable
as String,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,ratingCount: freezed == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as int?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,sitelinks: freezed == sitelinks ? _self.sitelinks : sitelinks // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _OrganicResult implements OrganicResult {
  const _OrganicResult({required this.title, required this.link, required this.snippet, this.date, this.rating, this.ratingCount, this.imageUrl, required this.position, this.sitelinks});
  factory _OrganicResult.fromJson(Map<String, dynamic> json) => _$OrganicResultFromJson(json);

/// {@template flutter_serper.results.title}
/// The title of the result.
///
/// This is typically the main heading or name associated with the search result.
/// {@endtemplate}
@override final  String title;
/// {@template flutter_serper.results.link}
/// The URL link to the result.
///
/// This URL can be used to navigate to the full content of the search result.
/// {@endtemplate}
@override final  String link;
/// {@template flutter_serper.results.snippet}
/// A brief excerpt or description of the result.
///
/// This provides a summary of the content to help users understand what the result contains.
/// {@endtemplate}
@override final  String snippet;
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
@override final  int position;
@override final  dynamic sitelinks;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrganicResult&&(identical(other.title, title) || other.title == title)&&(identical(other.link, link) || other.link == link)&&(identical(other.snippet, snippet) || other.snippet == snippet)&&(identical(other.date, date) || other.date == date)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.ratingCount, ratingCount) || other.ratingCount == ratingCount)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.position, position) || other.position == position)&&const DeepCollectionEquality().equals(other.sitelinks, sitelinks));
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
abstract mixin class _$OrganicResultCopyWith<$Res> implements $OrganicResultCopyWith<$Res> {
  factory _$OrganicResultCopyWith(_OrganicResult value, $Res Function(_OrganicResult) _then) = __$OrganicResultCopyWithImpl;
@override @useResult
$Res call({
 String title, String link, String snippet, String? date, double? rating, int? ratingCount, String? imageUrl, int position, dynamic sitelinks
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
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? link = null,Object? snippet = null,Object? date = freezed,Object? rating = freezed,Object? ratingCount = freezed,Object? imageUrl = freezed,Object? position = null,Object? sitelinks = freezed,}) {
  return _then(_OrganicResult(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,snippet: null == snippet ? _self.snippet : snippet // ignore: cast_nullable_to_non_nullable
as String,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,ratingCount: freezed == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as int?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,sitelinks: freezed == sitelinks ? _self.sitelinks : sitelinks // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}


/// @nodoc
mixin _$RelatedSearchResult {

/// The related search query text.
///
/// This is an alternative search term that users might be interested in.
 String get query;
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
 String query
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
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,}) {
  return _then(_self.copyWith(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _RelatedSearchResult implements RelatedSearchResult {
  const _RelatedSearchResult({required this.query});
  factory _RelatedSearchResult.fromJson(Map<String, dynamic> json) => _$RelatedSearchResultFromJson(json);

/// The related search query text.
///
/// This is an alternative search term that users might be interested in.
@override final  String query;

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
 String query
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
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(_RelatedSearchResult(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PeopleAlsoAskResult {

/// The question that people also ask about the search topic.
 String get question;/// {@macro flutter_serper.results.snippet}
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
 String question, String? snippet, String? title, String? link
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
@pragma('vm:prefer-inline') @override $Res call({Object? question = null,Object? snippet = freezed,Object? title = freezed,Object? link = freezed,}) {
  return _then(_self.copyWith(
question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,snippet: freezed == snippet ? _self.snippet : snippet // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PeopleAlsoAskResult implements PeopleAlsoAskResult {
  const _PeopleAlsoAskResult({required this.question, this.snippet, this.title, this.link});
  factory _PeopleAlsoAskResult.fromJson(Map<String, dynamic> json) => _$PeopleAlsoAskResultFromJson(json);

/// The question that people also ask about the search topic.
@override final  String question;
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
 String question, String? snippet, String? title, String? link
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
@override @pragma('vm:prefer-inline') $Res call({Object? question = null,Object? snippet = freezed,Object? title = freezed,Object? link = freezed,}) {
  return _then(_PeopleAlsoAskResult(
question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,snippet: freezed == snippet ? _self.snippet : snippet // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PlacesResult {

/// {@macro flutter_serper.results.title}
 String get title;/// The full address of the place.
///
/// Typically includes street, city, state/province, and postal code.
 String get address;/// The phone number of the place.
 String? get phone;/// {@macro flutter_serper.results.rating}
 double? get rating;/// {@template flutter_serper.results.reviewCount}
/// The number of reviews associated with the result.
///
/// Indicates how many user reviews have been submitted for this item.
/// {@endtemplate}
 int? get reviewCount;/// The URL of the place's website.
 String? get website;/// The type or category of the place.
///
/// Examples include "Restaurant", "Hotel", "Attraction", etc.
 String? get type;/// The price level of the place.
///
/// Typically represented as "$", "$$", "$$$", etc., indicating relative expense.
 String? get priceLevel; int? get position;
/// Create a copy of PlacesResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlacesResultCopyWith<PlacesResult> get copyWith => _$PlacesResultCopyWithImpl<PlacesResult>(this as PlacesResult, _$identity);

  /// Serializes this PlacesResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlacesResult&&(identical(other.title, title) || other.title == title)&&(identical(other.address, address) || other.address == address)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.website, website) || other.website == website)&&(identical(other.type, type) || other.type == type)&&(identical(other.priceLevel, priceLevel) || other.priceLevel == priceLevel)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,address,phone,rating,reviewCount,website,type,priceLevel,position);

@override
String toString() {
  return 'PlacesResult(title: $title, address: $address, phone: $phone, rating: $rating, reviewCount: $reviewCount, website: $website, type: $type, priceLevel: $priceLevel, position: $position)';
}


}

/// @nodoc
abstract mixin class $PlacesResultCopyWith<$Res>  {
  factory $PlacesResultCopyWith(PlacesResult value, $Res Function(PlacesResult) _then) = _$PlacesResultCopyWithImpl;
@useResult
$Res call({
 String title, String address, String? phone, double? rating, int? reviewCount, String? website, String? type, String? priceLevel, int? position
});




}
/// @nodoc
class _$PlacesResultCopyWithImpl<$Res>
    implements $PlacesResultCopyWith<$Res> {
  _$PlacesResultCopyWithImpl(this._self, this._then);

  final PlacesResult _self;
  final $Res Function(PlacesResult) _then;

/// Create a copy of PlacesResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? address = null,Object? phone = freezed,Object? rating = freezed,Object? reviewCount = freezed,Object? website = freezed,Object? type = freezed,Object? priceLevel = freezed,Object? position = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,reviewCount: freezed == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int?,website: freezed == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,priceLevel: freezed == priceLevel ? _self.priceLevel : priceLevel // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PlacesResult implements PlacesResult {
  const _PlacesResult({required this.title, required this.address, this.phone, this.rating, this.reviewCount, this.website, this.type, this.priceLevel, this.position});
  factory _PlacesResult.fromJson(Map<String, dynamic> json) => _$PlacesResultFromJson(json);

/// {@macro flutter_serper.results.title}
@override final  String title;
/// The full address of the place.
///
/// Typically includes street, city, state/province, and postal code.
@override final  String address;
/// The phone number of the place.
@override final  String? phone;
/// {@macro flutter_serper.results.rating}
@override final  double? rating;
/// {@template flutter_serper.results.reviewCount}
/// The number of reviews associated with the result.
///
/// Indicates how many user reviews have been submitted for this item.
/// {@endtemplate}
@override final  int? reviewCount;
/// The URL of the place's website.
@override final  String? website;
/// The type or category of the place.
///
/// Examples include "Restaurant", "Hotel", "Attraction", etc.
@override final  String? type;
/// The price level of the place.
///
/// Typically represented as "$", "$$", "$$$", etc., indicating relative expense.
@override final  String? priceLevel;
@override final  int? position;

/// Create a copy of PlacesResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlacesResultCopyWith<_PlacesResult> get copyWith => __$PlacesResultCopyWithImpl<_PlacesResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlacesResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlacesResult&&(identical(other.title, title) || other.title == title)&&(identical(other.address, address) || other.address == address)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.website, website) || other.website == website)&&(identical(other.type, type) || other.type == type)&&(identical(other.priceLevel, priceLevel) || other.priceLevel == priceLevel)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,address,phone,rating,reviewCount,website,type,priceLevel,position);

@override
String toString() {
  return 'PlacesResult(title: $title, address: $address, phone: $phone, rating: $rating, reviewCount: $reviewCount, website: $website, type: $type, priceLevel: $priceLevel, position: $position)';
}


}

/// @nodoc
abstract mixin class _$PlacesResultCopyWith<$Res> implements $PlacesResultCopyWith<$Res> {
  factory _$PlacesResultCopyWith(_PlacesResult value, $Res Function(_PlacesResult) _then) = __$PlacesResultCopyWithImpl;
@override @useResult
$Res call({
 String title, String address, String? phone, double? rating, int? reviewCount, String? website, String? type, String? priceLevel, int? position
});




}
/// @nodoc
class __$PlacesResultCopyWithImpl<$Res>
    implements _$PlacesResultCopyWith<$Res> {
  __$PlacesResultCopyWithImpl(this._self, this._then);

  final _PlacesResult _self;
  final $Res Function(_PlacesResult) _then;

/// Create a copy of PlacesResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? address = null,Object? phone = freezed,Object? rating = freezed,Object? reviewCount = freezed,Object? website = freezed,Object? type = freezed,Object? priceLevel = freezed,Object? position = freezed,}) {
  return _then(_PlacesResult(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,reviewCount: freezed == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int?,website: freezed == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,priceLevel: freezed == priceLevel ? _self.priceLevel : priceLevel // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$TopStoriesResult {

/// {@macro flutter_serper.results.title}
 String get title;/// {@macro flutter_serper.results.link}
 String get link;/// {@macro flutter_serper.results.source}
 String get source;/// {@macro flutter_serper.results.date}
 String get date;/// {@macro flutter_serper.results.imageUrl}
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopStoriesResult&&(identical(other.title, title) || other.title == title)&&(identical(other.link, link) || other.link == link)&&(identical(other.source, source) || other.source == source)&&(identical(other.date, date) || other.date == date)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,link,source,date,imageUrl);

@override
String toString() {
  return 'TopStoriesResult(title: $title, link: $link, source: $source, date: $date, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class $TopStoriesResultCopyWith<$Res>  {
  factory $TopStoriesResultCopyWith(TopStoriesResult value, $Res Function(TopStoriesResult) _then) = _$TopStoriesResultCopyWithImpl;
@useResult
$Res call({
 String title, String link, String source, String date, String? imageUrl
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
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? link = null,Object? source = null,Object? date = null,Object? imageUrl = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TopStoriesResult implements TopStoriesResult {
  const _TopStoriesResult({required this.title, required this.link, required this.source, required this.date, this.imageUrl});
  factory _TopStoriesResult.fromJson(Map<String, dynamic> json) => _$TopStoriesResultFromJson(json);

/// {@macro flutter_serper.results.title}
@override final  String title;
/// {@macro flutter_serper.results.link}
@override final  String link;
/// {@macro flutter_serper.results.source}
@override final  String source;
/// {@macro flutter_serper.results.date}
@override final  String date;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopStoriesResult&&(identical(other.title, title) || other.title == title)&&(identical(other.link, link) || other.link == link)&&(identical(other.source, source) || other.source == source)&&(identical(other.date, date) || other.date == date)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,link,source,date,imageUrl);

@override
String toString() {
  return 'TopStoriesResult(title: $title, link: $link, source: $source, date: $date, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$TopStoriesResultCopyWith<$Res> implements $TopStoriesResultCopyWith<$Res> {
  factory _$TopStoriesResultCopyWith(_TopStoriesResult value, $Res Function(_TopStoriesResult) _then) = __$TopStoriesResultCopyWithImpl;
@override @useResult
$Res call({
 String title, String link, String source, String date, String? imageUrl
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
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? link = null,Object? source = null,Object? date = null,Object? imageUrl = freezed,}) {
  return _then(_TopStoriesResult(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$TwitterResult {

/// {@macro flutter_serper.results.title}
 String get title;/// {@macro flutter_serper.results.link}
 String get link;/// {@macro flutter_serper.results.snippet}
 String get snippet;/// {@macro flutter_serper.results.date}
 String get date;
/// Create a copy of TwitterResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TwitterResultCopyWith<TwitterResult> get copyWith => _$TwitterResultCopyWithImpl<TwitterResult>(this as TwitterResult, _$identity);

  /// Serializes this TwitterResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TwitterResult&&(identical(other.title, title) || other.title == title)&&(identical(other.link, link) || other.link == link)&&(identical(other.snippet, snippet) || other.snippet == snippet)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,link,snippet,date);

@override
String toString() {
  return 'TwitterResult(title: $title, link: $link, snippet: $snippet, date: $date)';
}


}

/// @nodoc
abstract mixin class $TwitterResultCopyWith<$Res>  {
  factory $TwitterResultCopyWith(TwitterResult value, $Res Function(TwitterResult) _then) = _$TwitterResultCopyWithImpl;
@useResult
$Res call({
 String title, String link, String snippet, String date
});




}
/// @nodoc
class _$TwitterResultCopyWithImpl<$Res>
    implements $TwitterResultCopyWith<$Res> {
  _$TwitterResultCopyWithImpl(this._self, this._then);

  final TwitterResult _self;
  final $Res Function(TwitterResult) _then;

/// Create a copy of TwitterResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? link = null,Object? snippet = null,Object? date = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,snippet: null == snippet ? _self.snippet : snippet // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TwitterResult implements TwitterResult {
  const _TwitterResult({required this.title, required this.link, required this.snippet, required this.date});
  factory _TwitterResult.fromJson(Map<String, dynamic> json) => _$TwitterResultFromJson(json);

/// {@macro flutter_serper.results.title}
@override final  String title;
/// {@macro flutter_serper.results.link}
@override final  String link;
/// {@macro flutter_serper.results.snippet}
@override final  String snippet;
/// {@macro flutter_serper.results.date}
@override final  String date;

/// Create a copy of TwitterResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TwitterResultCopyWith<_TwitterResult> get copyWith => __$TwitterResultCopyWithImpl<_TwitterResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TwitterResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TwitterResult&&(identical(other.title, title) || other.title == title)&&(identical(other.link, link) || other.link == link)&&(identical(other.snippet, snippet) || other.snippet == snippet)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,link,snippet,date);

@override
String toString() {
  return 'TwitterResult(title: $title, link: $link, snippet: $snippet, date: $date)';
}


}

/// @nodoc
abstract mixin class _$TwitterResultCopyWith<$Res> implements $TwitterResultCopyWith<$Res> {
  factory _$TwitterResultCopyWith(_TwitterResult value, $Res Function(_TwitterResult) _then) = __$TwitterResultCopyWithImpl;
@override @useResult
$Res call({
 String title, String link, String snippet, String date
});




}
/// @nodoc
class __$TwitterResultCopyWithImpl<$Res>
    implements _$TwitterResultCopyWith<$Res> {
  __$TwitterResultCopyWithImpl(this._self, this._then);

  final _TwitterResult _self;
  final $Res Function(_TwitterResult) _then;

/// Create a copy of TwitterResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? link = null,Object? snippet = null,Object? date = null,}) {
  return _then(_TwitterResult(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,snippet: null == snippet ? _self.snippet : snippet // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ImagesResult {

/// {@macro flutter_serper.results.title}
 String? get title;/// {@macro flutter_serper.results.imageUrl}
 String? get imageUrl;/// {@macro flutter_serper.results.source}
 String? get source;/// {@macro flutter_serper.results.sourceUrl}
 String? get sourceUrl;
/// Create a copy of ImagesResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImagesResultCopyWith<ImagesResult> get copyWith => _$ImagesResultCopyWithImpl<ImagesResult>(this as ImagesResult, _$identity);

  /// Serializes this ImagesResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImagesResult&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.source, source) || other.source == source)&&(identical(other.sourceUrl, sourceUrl) || other.sourceUrl == sourceUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,imageUrl,source,sourceUrl);

@override
String toString() {
  return 'ImagesResult(title: $title, imageUrl: $imageUrl, source: $source, sourceUrl: $sourceUrl)';
}


}

/// @nodoc
abstract mixin class $ImagesResultCopyWith<$Res>  {
  factory $ImagesResultCopyWith(ImagesResult value, $Res Function(ImagesResult) _then) = _$ImagesResultCopyWithImpl;
@useResult
$Res call({
 String? title, String? imageUrl, String? source, String? sourceUrl
});




}
/// @nodoc
class _$ImagesResultCopyWithImpl<$Res>
    implements $ImagesResultCopyWith<$Res> {
  _$ImagesResultCopyWithImpl(this._self, this._then);

  final ImagesResult _self;
  final $Res Function(ImagesResult) _then;

/// Create a copy of ImagesResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? imageUrl = freezed,Object? source = freezed,Object? sourceUrl = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,sourceUrl: freezed == sourceUrl ? _self.sourceUrl : sourceUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ImagesResult implements ImagesResult {
  const _ImagesResult({this.title, this.imageUrl, this.source, this.sourceUrl});
  factory _ImagesResult.fromJson(Map<String, dynamic> json) => _$ImagesResultFromJson(json);

/// {@macro flutter_serper.results.title}
@override final  String? title;
/// {@macro flutter_serper.results.imageUrl}
@override final  String? imageUrl;
/// {@macro flutter_serper.results.source}
@override final  String? source;
/// {@macro flutter_serper.results.sourceUrl}
@override final  String? sourceUrl;

/// Create a copy of ImagesResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImagesResultCopyWith<_ImagesResult> get copyWith => __$ImagesResultCopyWithImpl<_ImagesResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ImagesResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImagesResult&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.source, source) || other.source == source)&&(identical(other.sourceUrl, sourceUrl) || other.sourceUrl == sourceUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,imageUrl,source,sourceUrl);

@override
String toString() {
  return 'ImagesResult(title: $title, imageUrl: $imageUrl, source: $source, sourceUrl: $sourceUrl)';
}


}

/// @nodoc
abstract mixin class _$ImagesResultCopyWith<$Res> implements $ImagesResultCopyWith<$Res> {
  factory _$ImagesResultCopyWith(_ImagesResult value, $Res Function(_ImagesResult) _then) = __$ImagesResultCopyWithImpl;
@override @useResult
$Res call({
 String? title, String? imageUrl, String? source, String? sourceUrl
});




}
/// @nodoc
class __$ImagesResultCopyWithImpl<$Res>
    implements _$ImagesResultCopyWith<$Res> {
  __$ImagesResultCopyWithImpl(this._self, this._then);

  final _ImagesResult _self;
  final $Res Function(_ImagesResult) _then;

/// Create a copy of ImagesResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? imageUrl = freezed,Object? source = freezed,Object? sourceUrl = freezed,}) {
  return _then(_ImagesResult(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,sourceUrl: freezed == sourceUrl ? _self.sourceUrl : sourceUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$KnowledgeGraphResult {

/// {@macro flutter_serper.results.title}
 String get title;/// The type of entity represented in the Knowledge Graph.
///
/// Examples include "Person", "Organization", "Place", etc.
 String? get type;/// {@macro flutter_serper.results.imageUrl}
 String? get imageUrl;/// Additional attributes associated with this entity.
///
/// This is a map of key-value pairs containing various facts about the entity.
 Map<String, dynamic>? get attributes;/// A description of the entity.
///
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KnowledgeGraphResult&&(identical(other.title, title) || other.title == title)&&(identical(other.type, type) || other.type == type)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other.attributes, attributes)&&(identical(other.descriptionSource, descriptionSource) || other.descriptionSource == descriptionSource));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,type,imageUrl,const DeepCollectionEquality().hash(attributes),descriptionSource);

@override
String toString() {
  return 'KnowledgeGraphResult(title: $title, type: $type, imageUrl: $imageUrl, attributes: $attributes, descriptionSource: $descriptionSource)';
}


}

/// @nodoc
abstract mixin class $KnowledgeGraphResultCopyWith<$Res>  {
  factory $KnowledgeGraphResultCopyWith(KnowledgeGraphResult value, $Res Function(KnowledgeGraphResult) _then) = _$KnowledgeGraphResultCopyWithImpl;
@useResult
$Res call({
 String title, String? type, String? imageUrl, Map<String, dynamic>? attributes, String? descriptionSource
});




}
/// @nodoc
class _$KnowledgeGraphResultCopyWithImpl<$Res>
    implements $KnowledgeGraphResultCopyWith<$Res> {
  _$KnowledgeGraphResultCopyWithImpl(this._self, this._then);

  final KnowledgeGraphResult _self;
  final $Res Function(KnowledgeGraphResult) _then;

/// Create a copy of KnowledgeGraphResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? type = freezed,Object? imageUrl = freezed,Object? attributes = freezed,Object? descriptionSource = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,attributes: freezed == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,descriptionSource: freezed == descriptionSource ? _self.descriptionSource : descriptionSource // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _KnowledgeGraphResult implements KnowledgeGraphResult {
  const _KnowledgeGraphResult({required this.title, this.type, this.imageUrl, final  Map<String, dynamic>? attributes, this.descriptionSource}): _attributes = attributes;
  factory _KnowledgeGraphResult.fromJson(Map<String, dynamic> json) => _$KnowledgeGraphResultFromJson(json);

/// {@macro flutter_serper.results.title}
@override final  String title;
/// The type of entity represented in the Knowledge Graph.
///
/// Examples include "Person", "Organization", "Place", etc.
@override final  String? type;
/// {@macro flutter_serper.results.imageUrl}
@override final  String? imageUrl;
/// Additional attributes associated with this entity.
///
/// This is a map of key-value pairs containing various facts about the entity.
 final  Map<String, dynamic>? _attributes;
/// Additional attributes associated with this entity.
///
/// This is a map of key-value pairs containing various facts about the entity.
@override Map<String, dynamic>? get attributes {
  final value = _attributes;
  if (value == null) return null;
  if (_attributes is EqualUnmodifiableMapView) return _attributes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// A description of the entity.
///
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KnowledgeGraphResult&&(identical(other.title, title) || other.title == title)&&(identical(other.type, type) || other.type == type)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other._attributes, _attributes)&&(identical(other.descriptionSource, descriptionSource) || other.descriptionSource == descriptionSource));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,type,imageUrl,const DeepCollectionEquality().hash(_attributes),descriptionSource);

@override
String toString() {
  return 'KnowledgeGraphResult(title: $title, type: $type, imageUrl: $imageUrl, attributes: $attributes, descriptionSource: $descriptionSource)';
}


}

/// @nodoc
abstract mixin class _$KnowledgeGraphResultCopyWith<$Res> implements $KnowledgeGraphResultCopyWith<$Res> {
  factory _$KnowledgeGraphResultCopyWith(_KnowledgeGraphResult value, $Res Function(_KnowledgeGraphResult) _then) = __$KnowledgeGraphResultCopyWithImpl;
@override @useResult
$Res call({
 String title, String? type, String? imageUrl, Map<String, dynamic>? attributes, String? descriptionSource
});




}
/// @nodoc
class __$KnowledgeGraphResultCopyWithImpl<$Res>
    implements _$KnowledgeGraphResultCopyWith<$Res> {
  __$KnowledgeGraphResultCopyWithImpl(this._self, this._then);

  final _KnowledgeGraphResult _self;
  final $Res Function(_KnowledgeGraphResult) _then;

/// Create a copy of KnowledgeGraphResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? type = freezed,Object? imageUrl = freezed,Object? attributes = freezed,Object? descriptionSource = freezed,}) {
  return _then(_KnowledgeGraphResult(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,attributes: freezed == attributes ? _self._attributes : attributes // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,descriptionSource: freezed == descriptionSource ? _self.descriptionSource : descriptionSource // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$LocalResultsResult {

/// {@macro flutter_serper.results.title}
 String get title;/// The full address of the local business.
///
/// Typically includes street, city, state/province, and postal code.
 String get address;/// The phone number of the local business.
 String? get phone;/// The URL of the local business's website.
 String? get website;/// {@macro flutter_serper.results.rating}
 double? get rating;/// {@macro flutter_serper.results.reviewCount}
 int? get reviewCount;/// The price level of the local business.
///
/// Typically represented as "$", "$$", "$$$", etc., indicating relative expense.
 String? get priceLevel;/// The business hours of operation.
///
/// A list of strings representing the opening hours for each day.
 List<String>? get openingHours;/// Additional business hours information.
///
/// May include holiday hours, special hours, etc.
 List<dynamic>? get moreHours;/// {@macro flutter_serper.results.position}
 int get position;
/// Create a copy of LocalResultsResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocalResultsResultCopyWith<LocalResultsResult> get copyWith => _$LocalResultsResultCopyWithImpl<LocalResultsResult>(this as LocalResultsResult, _$identity);

  /// Serializes this LocalResultsResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocalResultsResult&&(identical(other.title, title) || other.title == title)&&(identical(other.address, address) || other.address == address)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.website, website) || other.website == website)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.priceLevel, priceLevel) || other.priceLevel == priceLevel)&&const DeepCollectionEquality().equals(other.openingHours, openingHours)&&const DeepCollectionEquality().equals(other.moreHours, moreHours)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,address,phone,website,rating,reviewCount,priceLevel,const DeepCollectionEquality().hash(openingHours),const DeepCollectionEquality().hash(moreHours),position);

@override
String toString() {
  return 'LocalResultsResult(title: $title, address: $address, phone: $phone, website: $website, rating: $rating, reviewCount: $reviewCount, priceLevel: $priceLevel, openingHours: $openingHours, moreHours: $moreHours, position: $position)';
}


}

/// @nodoc
abstract mixin class $LocalResultsResultCopyWith<$Res>  {
  factory $LocalResultsResultCopyWith(LocalResultsResult value, $Res Function(LocalResultsResult) _then) = _$LocalResultsResultCopyWithImpl;
@useResult
$Res call({
 String title, String address, String? phone, String? website, double? rating, int? reviewCount, String? priceLevel, List<String>? openingHours, List<dynamic>? moreHours, int position
});




}
/// @nodoc
class _$LocalResultsResultCopyWithImpl<$Res>
    implements $LocalResultsResultCopyWith<$Res> {
  _$LocalResultsResultCopyWithImpl(this._self, this._then);

  final LocalResultsResult _self;
  final $Res Function(LocalResultsResult) _then;

/// Create a copy of LocalResultsResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? address = null,Object? phone = freezed,Object? website = freezed,Object? rating = freezed,Object? reviewCount = freezed,Object? priceLevel = freezed,Object? openingHours = freezed,Object? moreHours = freezed,Object? position = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,website: freezed == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,reviewCount: freezed == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int?,priceLevel: freezed == priceLevel ? _self.priceLevel : priceLevel // ignore: cast_nullable_to_non_nullable
as String?,openingHours: freezed == openingHours ? _self.openingHours : openingHours // ignore: cast_nullable_to_non_nullable
as List<String>?,moreHours: freezed == moreHours ? _self.moreHours : moreHours // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _LocalResultsResult implements LocalResultsResult {
  const _LocalResultsResult({required this.title, required this.address, this.phone, this.website, this.rating, this.reviewCount, this.priceLevel, final  List<String>? openingHours, final  List<dynamic>? moreHours, required this.position}): _openingHours = openingHours,_moreHours = moreHours;
  factory _LocalResultsResult.fromJson(Map<String, dynamic> json) => _$LocalResultsResultFromJson(json);

/// {@macro flutter_serper.results.title}
@override final  String title;
/// The full address of the local business.
///
/// Typically includes street, city, state/province, and postal code.
@override final  String address;
/// The phone number of the local business.
@override final  String? phone;
/// The URL of the local business's website.
@override final  String? website;
/// {@macro flutter_serper.results.rating}
@override final  double? rating;
/// {@macro flutter_serper.results.reviewCount}
@override final  int? reviewCount;
/// The price level of the local business.
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

/// Additional business hours information.
///
/// May include holiday hours, special hours, etc.
 final  List<dynamic>? _moreHours;
/// Additional business hours information.
///
/// May include holiday hours, special hours, etc.
@override List<dynamic>? get moreHours {
  final value = _moreHours;
  if (value == null) return null;
  if (_moreHours is EqualUnmodifiableListView) return _moreHours;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// {@macro flutter_serper.results.position}
@override final  int position;

/// Create a copy of LocalResultsResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocalResultsResultCopyWith<_LocalResultsResult> get copyWith => __$LocalResultsResultCopyWithImpl<_LocalResultsResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LocalResultsResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocalResultsResult&&(identical(other.title, title) || other.title == title)&&(identical(other.address, address) || other.address == address)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.website, website) || other.website == website)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.priceLevel, priceLevel) || other.priceLevel == priceLevel)&&const DeepCollectionEquality().equals(other._openingHours, _openingHours)&&const DeepCollectionEquality().equals(other._moreHours, _moreHours)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,address,phone,website,rating,reviewCount,priceLevel,const DeepCollectionEquality().hash(_openingHours),const DeepCollectionEquality().hash(_moreHours),position);

@override
String toString() {
  return 'LocalResultsResult(title: $title, address: $address, phone: $phone, website: $website, rating: $rating, reviewCount: $reviewCount, priceLevel: $priceLevel, openingHours: $openingHours, moreHours: $moreHours, position: $position)';
}


}

/// @nodoc
abstract mixin class _$LocalResultsResultCopyWith<$Res> implements $LocalResultsResultCopyWith<$Res> {
  factory _$LocalResultsResultCopyWith(_LocalResultsResult value, $Res Function(_LocalResultsResult) _then) = __$LocalResultsResultCopyWithImpl;
@override @useResult
$Res call({
 String title, String address, String? phone, String? website, double? rating, int? reviewCount, String? priceLevel, List<String>? openingHours, List<dynamic>? moreHours, int position
});




}
/// @nodoc
class __$LocalResultsResultCopyWithImpl<$Res>
    implements _$LocalResultsResultCopyWith<$Res> {
  __$LocalResultsResultCopyWithImpl(this._self, this._then);

  final _LocalResultsResult _self;
  final $Res Function(_LocalResultsResult) _then;

/// Create a copy of LocalResultsResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? address = null,Object? phone = freezed,Object? website = freezed,Object? rating = freezed,Object? reviewCount = freezed,Object? priceLevel = freezed,Object? openingHours = freezed,Object? moreHours = freezed,Object? position = null,}) {
  return _then(_LocalResultsResult(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,website: freezed == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,reviewCount: freezed == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int?,priceLevel: freezed == priceLevel ? _self.priceLevel : priceLevel // ignore: cast_nullable_to_non_nullable
as String?,openingHours: freezed == openingHours ? _self._openingHours : openingHours // ignore: cast_nullable_to_non_nullable
as List<String>?,moreHours: freezed == moreHours ? _self._moreHours : moreHours // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,
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
 String? get imageUrl;/// {@template flutter_serper.results.thumbnailUrl}
/// The URL to a thumbnail version of the image.
///
/// This URL can be used to display a smaller, preview version of the image.
/// {@endtemplate}
 String? get thumbnailUrl;/// {@template flutter_serper.results.source}
/// The source or provider of the result.
///
/// Indicates where the content originated from, such as a website name or publisher.
/// {@endtemplate}
 String? get source;/// {@template flutter_serper.results.sourceUrl}
/// The URL of the source where the result originated.
///
/// Can be used to navigate to the original source of the content.
/// {@endtemplate}
 String? get sourceUrl;/// {@template flutter_serper.results.price}
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageResult&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.source, source) || other.source == source)&&(identical(other.sourceUrl, sourceUrl) || other.sourceUrl == sourceUrl)&&(identical(other.price, price) || other.price == price)&&(identical(other.domain, domain) || other.domain == domain)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,imageUrl,thumbnailUrl,source,sourceUrl,price,domain,position);

@override
String toString() {
  return 'ImageResult(title: $title, imageUrl: $imageUrl, thumbnailUrl: $thumbnailUrl, source: $source, sourceUrl: $sourceUrl, price: $price, domain: $domain, position: $position)';
}


}

/// @nodoc
abstract mixin class $ImageResultCopyWith<$Res>  {
  factory $ImageResultCopyWith(ImageResult value, $Res Function(ImageResult) _then) = _$ImageResultCopyWithImpl;
@useResult
$Res call({
 String? title, String? imageUrl, String? thumbnailUrl, String? source, String? sourceUrl, String? price, String? domain, int position
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
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? imageUrl = freezed,Object? thumbnailUrl = freezed,Object? source = freezed,Object? sourceUrl = freezed,Object? price = freezed,Object? domain = freezed,Object? position = null,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,sourceUrl: freezed == sourceUrl ? _self.sourceUrl : sourceUrl // ignore: cast_nullable_to_non_nullable
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
  const _ImageResult({this.title, this.imageUrl, this.thumbnailUrl, this.source, this.sourceUrl, this.price, this.domain, required this.position});
  factory _ImageResult.fromJson(Map<String, dynamic> json) => _$ImageResultFromJson(json);

/// {@macro flutter_serper.results.title}
@override final  String? title;
/// {@template flutter_serper.results.imageUrl}
/// The URL to the full-size image.
///
/// This URL can be used to display or download the full-size image.
/// {@endtemplate}
@override final  String? imageUrl;
/// {@template flutter_serper.results.thumbnailUrl}
/// The URL to a thumbnail version of the image.
///
/// This URL can be used to display a smaller, preview version of the image.
/// {@endtemplate}
@override final  String? thumbnailUrl;
/// {@template flutter_serper.results.source}
/// The source or provider of the result.
///
/// Indicates where the content originated from, such as a website name or publisher.
/// {@endtemplate}
@override final  String? source;
/// {@template flutter_serper.results.sourceUrl}
/// The URL of the source where the result originated.
///
/// Can be used to navigate to the original source of the content.
/// {@endtemplate}
@override final  String? sourceUrl;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImageResult&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.source, source) || other.source == source)&&(identical(other.sourceUrl, sourceUrl) || other.sourceUrl == sourceUrl)&&(identical(other.price, price) || other.price == price)&&(identical(other.domain, domain) || other.domain == domain)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,imageUrl,thumbnailUrl,source,sourceUrl,price,domain,position);

@override
String toString() {
  return 'ImageResult(title: $title, imageUrl: $imageUrl, thumbnailUrl: $thumbnailUrl, source: $source, sourceUrl: $sourceUrl, price: $price, domain: $domain, position: $position)';
}


}

/// @nodoc
abstract mixin class _$ImageResultCopyWith<$Res> implements $ImageResultCopyWith<$Res> {
  factory _$ImageResultCopyWith(_ImageResult value, $Res Function(_ImageResult) _then) = __$ImageResultCopyWithImpl;
@override @useResult
$Res call({
 String? title, String? imageUrl, String? thumbnailUrl, String? source, String? sourceUrl, String? price, String? domain, int position
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
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? imageUrl = freezed,Object? thumbnailUrl = freezed,Object? source = freezed,Object? sourceUrl = freezed,Object? price = freezed,Object? domain = freezed,Object? position = null,}) {
  return _then(_ImageResult(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,sourceUrl: freezed == sourceUrl ? _self.sourceUrl : sourceUrl // ignore: cast_nullable_to_non_nullable
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
 String get title;/// The full address of the place.
///
/// Typically includes street, city, state/province, and postal code.
 String get address;/// The phone number of the place.
 String? get phone;/// {@macro flutter_serper.results.rating}
 double? get rating;/// {@macro flutter_serper.results.reviewCount}
 int? get reviewCount;/// The URL of the place's website.
 String? get website;/// The type or category of the place.
///
/// Examples include "Restaurant", "Hotel", "Attraction", etc.
 String? get type;/// The price level of the place.
///
/// Typically represented as "$", "$$", "$$$", etc., indicating relative expense.
 String? get priceLevel;/// The business hours of operation.
 int get position;
/// Create a copy of PlaceResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaceResultCopyWith<PlaceResult> get copyWith => _$PlaceResultCopyWithImpl<PlaceResult>(this as PlaceResult, _$identity);

  /// Serializes this PlaceResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlaceResult&&(identical(other.title, title) || other.title == title)&&(identical(other.address, address) || other.address == address)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.website, website) || other.website == website)&&(identical(other.type, type) || other.type == type)&&(identical(other.priceLevel, priceLevel) || other.priceLevel == priceLevel)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,address,phone,rating,reviewCount,website,type,priceLevel,position);

@override
String toString() {
  return 'PlaceResult(title: $title, address: $address, phone: $phone, rating: $rating, reviewCount: $reviewCount, website: $website, type: $type, priceLevel: $priceLevel, position: $position)';
}


}

/// @nodoc
abstract mixin class $PlaceResultCopyWith<$Res>  {
  factory $PlaceResultCopyWith(PlaceResult value, $Res Function(PlaceResult) _then) = _$PlaceResultCopyWithImpl;
@useResult
$Res call({
 String title, String address, String? phone, double? rating, int? reviewCount, String? website, String? type, String? priceLevel, int position
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
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? address = null,Object? phone = freezed,Object? rating = freezed,Object? reviewCount = freezed,Object? website = freezed,Object? type = freezed,Object? priceLevel = freezed,Object? position = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,reviewCount: freezed == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int?,website: freezed == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,priceLevel: freezed == priceLevel ? _self.priceLevel : priceLevel // ignore: cast_nullable_to_non_nullable
as String?,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PlaceResult implements PlaceResult {
  const _PlaceResult({required this.title, required this.address, this.phone, this.rating, this.reviewCount, this.website, this.type, this.priceLevel, required this.position});
  factory _PlaceResult.fromJson(Map<String, dynamic> json) => _$PlaceResultFromJson(json);

/// {@macro flutter_serper.results.title}
@override final  String title;
/// The full address of the place.
///
/// Typically includes street, city, state/province, and postal code.
@override final  String address;
/// The phone number of the place.
@override final  String? phone;
/// {@macro flutter_serper.results.rating}
@override final  double? rating;
/// {@macro flutter_serper.results.reviewCount}
@override final  int? reviewCount;
/// The URL of the place's website.
@override final  String? website;
/// The type or category of the place.
///
/// Examples include "Restaurant", "Hotel", "Attraction", etc.
@override final  String? type;
/// The price level of the place.
///
/// Typically represented as "$", "$$", "$$$", etc., indicating relative expense.
@override final  String? priceLevel;
/// The business hours of operation.
@override final  int position;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlaceResult&&(identical(other.title, title) || other.title == title)&&(identical(other.address, address) || other.address == address)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.website, website) || other.website == website)&&(identical(other.type, type) || other.type == type)&&(identical(other.priceLevel, priceLevel) || other.priceLevel == priceLevel)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,address,phone,rating,reviewCount,website,type,priceLevel,position);

@override
String toString() {
  return 'PlaceResult(title: $title, address: $address, phone: $phone, rating: $rating, reviewCount: $reviewCount, website: $website, type: $type, priceLevel: $priceLevel, position: $position)';
}


}

/// @nodoc
abstract mixin class _$PlaceResultCopyWith<$Res> implements $PlaceResultCopyWith<$Res> {
  factory _$PlaceResultCopyWith(_PlaceResult value, $Res Function(_PlaceResult) _then) = __$PlaceResultCopyWithImpl;
@override @useResult
$Res call({
 String title, String address, String? phone, double? rating, int? reviewCount, String? website, String? type, String? priceLevel, int position
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
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? address = null,Object? phone = freezed,Object? rating = freezed,Object? reviewCount = freezed,Object? website = freezed,Object? type = freezed,Object? priceLevel = freezed,Object? position = null,}) {
  return _then(_PlaceResult(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,reviewCount: freezed == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int?,website: freezed == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,priceLevel: freezed == priceLevel ? _self.priceLevel : priceLevel // ignore: cast_nullable_to_non_nullable
as String?,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$VideoResult {

/// {@macro flutter_serper.results.title}
 String get title;/// {@macro flutter_serper.results.link}
 String get link;/// {@macro flutter_serper.results.snippet}
 String get snippet;/// {@macro flutter_serper.results.date}
 String get date;/// {@macro flutter_serper.results.source}
 String get source;/// {@macro flutter_serper.results.imageUrl}
 String? get imageUrl;/// {@macro flutter_serper.results.position}
 int get position;/// The duration of the video.
///
/// Typically formatted as "MM:SS" or "HH:MM:SS".
 String? get duration;
/// Create a copy of VideoResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoResultCopyWith<VideoResult> get copyWith => _$VideoResultCopyWithImpl<VideoResult>(this as VideoResult, _$identity);

  /// Serializes this VideoResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoResult&&(identical(other.title, title) || other.title == title)&&(identical(other.link, link) || other.link == link)&&(identical(other.snippet, snippet) || other.snippet == snippet)&&(identical(other.date, date) || other.date == date)&&(identical(other.source, source) || other.source == source)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.position, position) || other.position == position)&&(identical(other.duration, duration) || other.duration == duration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,link,snippet,date,source,imageUrl,position,duration);

@override
String toString() {
  return 'VideoResult(title: $title, link: $link, snippet: $snippet, date: $date, source: $source, imageUrl: $imageUrl, position: $position, duration: $duration)';
}


}

/// @nodoc
abstract mixin class $VideoResultCopyWith<$Res>  {
  factory $VideoResultCopyWith(VideoResult value, $Res Function(VideoResult) _then) = _$VideoResultCopyWithImpl;
@useResult
$Res call({
 String title, String link, String snippet, String date, String source, String? imageUrl, int position, String? duration
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
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? link = null,Object? snippet = null,Object? date = null,Object? source = null,Object? imageUrl = freezed,Object? position = null,Object? duration = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,snippet: null == snippet ? _self.snippet : snippet // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _VideoResult implements VideoResult {
  const _VideoResult({required this.title, required this.link, required this.snippet, required this.date, required this.source, this.imageUrl, required this.position, this.duration});
  factory _VideoResult.fromJson(Map<String, dynamic> json) => _$VideoResultFromJson(json);

/// {@macro flutter_serper.results.title}
@override final  String title;
/// {@macro flutter_serper.results.link}
@override final  String link;
/// {@macro flutter_serper.results.snippet}
@override final  String snippet;
/// {@macro flutter_serper.results.date}
@override final  String date;
/// {@macro flutter_serper.results.source}
@override final  String source;
/// {@macro flutter_serper.results.imageUrl}
@override final  String? imageUrl;
/// {@macro flutter_serper.results.position}
@override final  int position;
/// The duration of the video.
///
/// Typically formatted as "MM:SS" or "HH:MM:SS".
@override final  String? duration;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoResult&&(identical(other.title, title) || other.title == title)&&(identical(other.link, link) || other.link == link)&&(identical(other.snippet, snippet) || other.snippet == snippet)&&(identical(other.date, date) || other.date == date)&&(identical(other.source, source) || other.source == source)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.position, position) || other.position == position)&&(identical(other.duration, duration) || other.duration == duration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,link,snippet,date,source,imageUrl,position,duration);

@override
String toString() {
  return 'VideoResult(title: $title, link: $link, snippet: $snippet, date: $date, source: $source, imageUrl: $imageUrl, position: $position, duration: $duration)';
}


}

/// @nodoc
abstract mixin class _$VideoResultCopyWith<$Res> implements $VideoResultCopyWith<$Res> {
  factory _$VideoResultCopyWith(_VideoResult value, $Res Function(_VideoResult) _then) = __$VideoResultCopyWithImpl;
@override @useResult
$Res call({
 String title, String link, String snippet, String date, String source, String? imageUrl, int position, String? duration
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
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? link = null,Object? snippet = null,Object? date = null,Object? source = null,Object? imageUrl = freezed,Object? position = null,Object? duration = freezed,}) {
  return _then(_VideoResult(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,snippet: null == snippet ? _self.snippet : snippet // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$MapResult {

/// {@macro flutter_serper.results.title}
 String get title;/// The unique Customer ID (CID) of the place in Google Maps.
///
/// This identifier can be used to look up the place in Google Maps.
 String get cid;/// The full address of the place.
///
/// Typically includes street, city, state/province, and postal code.
 String get address;/// {@macro flutter_serper.results.rating}
 double get rating;/// {@macro flutter_serper.results.reviewCount}
 int get reviewCount;/// The price level of the place.
///
/// Typically represented as "$", "$$", "$$$", etc., indicating relative expense.
 String get priceLevel;/// The type or category of the place.
///
/// Examples include "Restaurant", "Hotel", "Attraction", etc.
 String? get description;
/// Create a copy of MapResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MapResultCopyWith<MapResult> get copyWith => _$MapResultCopyWithImpl<MapResult>(this as MapResult, _$identity);

  /// Serializes this MapResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MapResult&&(identical(other.title, title) || other.title == title)&&(identical(other.cid, cid) || other.cid == cid)&&(identical(other.address, address) || other.address == address)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.priceLevel, priceLevel) || other.priceLevel == priceLevel)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,cid,address,rating,reviewCount,priceLevel,description);

@override
String toString() {
  return 'MapResult(title: $title, cid: $cid, address: $address, rating: $rating, reviewCount: $reviewCount, priceLevel: $priceLevel, description: $description)';
}


}

/// @nodoc
abstract mixin class $MapResultCopyWith<$Res>  {
  factory $MapResultCopyWith(MapResult value, $Res Function(MapResult) _then) = _$MapResultCopyWithImpl;
@useResult
$Res call({
 String title, String cid, String address, double rating, int reviewCount, String priceLevel, String? description
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
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? cid = null,Object? address = null,Object? rating = null,Object? reviewCount = null,Object? priceLevel = null,Object? description = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,cid: null == cid ? _self.cid : cid // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,reviewCount: null == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int,priceLevel: null == priceLevel ? _self.priceLevel : priceLevel // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _MapResult implements MapResult {
  const _MapResult({required this.title, required this.cid, required this.address, required this.rating, required this.reviewCount, required this.priceLevel, this.description});
  factory _MapResult.fromJson(Map<String, dynamic> json) => _$MapResultFromJson(json);

/// {@macro flutter_serper.results.title}
@override final  String title;
/// The unique Customer ID (CID) of the place in Google Maps.
///
/// This identifier can be used to look up the place in Google Maps.
@override final  String cid;
/// The full address of the place.
///
/// Typically includes street, city, state/province, and postal code.
@override final  String address;
/// {@macro flutter_serper.results.rating}
@override final  double rating;
/// {@macro flutter_serper.results.reviewCount}
@override final  int reviewCount;
/// The price level of the place.
///
/// Typically represented as "$", "$$", "$$$", etc., indicating relative expense.
@override final  String priceLevel;
/// The type or category of the place.
///
/// Examples include "Restaurant", "Hotel", "Attraction", etc.
@override final  String? description;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MapResult&&(identical(other.title, title) || other.title == title)&&(identical(other.cid, cid) || other.cid == cid)&&(identical(other.address, address) || other.address == address)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.priceLevel, priceLevel) || other.priceLevel == priceLevel)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,cid,address,rating,reviewCount,priceLevel,description);

@override
String toString() {
  return 'MapResult(title: $title, cid: $cid, address: $address, rating: $rating, reviewCount: $reviewCount, priceLevel: $priceLevel, description: $description)';
}


}

/// @nodoc
abstract mixin class _$MapResultCopyWith<$Res> implements $MapResultCopyWith<$Res> {
  factory _$MapResultCopyWith(_MapResult value, $Res Function(_MapResult) _then) = __$MapResultCopyWithImpl;
@override @useResult
$Res call({
 String title, String cid, String address, double rating, int reviewCount, String priceLevel, String? description
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
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? cid = null,Object? address = null,Object? rating = null,Object? reviewCount = null,Object? priceLevel = null,Object? description = freezed,}) {
  return _then(_MapResult(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,cid: null == cid ? _self.cid : cid // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,reviewCount: null == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int,priceLevel: null == priceLevel ? _self.priceLevel : priceLevel // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$MapResultReview {

/// The name of the review author.
 String get author;/// The URL to the author's profile.
 String get authorUrl;/// The text content of the review.
///
/// Contains the user's feedback about the place.
 String get text;/// {@macro flutter_serper.results.rating}
 double get rating;/// {@macro flutter_serper.results.date}
 String get date;
/// Create a copy of MapResultReview
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MapResultReviewCopyWith<MapResultReview> get copyWith => _$MapResultReviewCopyWithImpl<MapResultReview>(this as MapResultReview, _$identity);

  /// Serializes this MapResultReview to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MapResultReview&&(identical(other.author, author) || other.author == author)&&(identical(other.authorUrl, authorUrl) || other.authorUrl == authorUrl)&&(identical(other.text, text) || other.text == text)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,author,authorUrl,text,rating,date);

@override
String toString() {
  return 'MapResultReview(author: $author, authorUrl: $authorUrl, text: $text, rating: $rating, date: $date)';
}


}

/// @nodoc
abstract mixin class $MapResultReviewCopyWith<$Res>  {
  factory $MapResultReviewCopyWith(MapResultReview value, $Res Function(MapResultReview) _then) = _$MapResultReviewCopyWithImpl;
@useResult
$Res call({
 String author, String authorUrl, String text, double rating, String date
});




}
/// @nodoc
class _$MapResultReviewCopyWithImpl<$Res>
    implements $MapResultReviewCopyWith<$Res> {
  _$MapResultReviewCopyWithImpl(this._self, this._then);

  final MapResultReview _self;
  final $Res Function(MapResultReview) _then;

/// Create a copy of MapResultReview
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? author = null,Object? authorUrl = null,Object? text = null,Object? rating = null,Object? date = null,}) {
  return _then(_self.copyWith(
author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,authorUrl: null == authorUrl ? _self.authorUrl : authorUrl // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _MapResultReview implements MapResultReview {
  const _MapResultReview({required this.author, required this.authorUrl, required this.text, required this.rating, required this.date});
  factory _MapResultReview.fromJson(Map<String, dynamic> json) => _$MapResultReviewFromJson(json);

/// The name of the review author.
@override final  String author;
/// The URL to the author's profile.
@override final  String authorUrl;
/// The text content of the review.
///
/// Contains the user's feedback about the place.
@override final  String text;
/// {@macro flutter_serper.results.rating}
@override final  double rating;
/// {@macro flutter_serper.results.date}
@override final  String date;

/// Create a copy of MapResultReview
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MapResultReviewCopyWith<_MapResultReview> get copyWith => __$MapResultReviewCopyWithImpl<_MapResultReview>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MapResultReviewToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MapResultReview&&(identical(other.author, author) || other.author == author)&&(identical(other.authorUrl, authorUrl) || other.authorUrl == authorUrl)&&(identical(other.text, text) || other.text == text)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,author,authorUrl,text,rating,date);

@override
String toString() {
  return 'MapResultReview(author: $author, authorUrl: $authorUrl, text: $text, rating: $rating, date: $date)';
}


}

/// @nodoc
abstract mixin class _$MapResultReviewCopyWith<$Res> implements $MapResultReviewCopyWith<$Res> {
  factory _$MapResultReviewCopyWith(_MapResultReview value, $Res Function(_MapResultReview) _then) = __$MapResultReviewCopyWithImpl;
@override @useResult
$Res call({
 String author, String authorUrl, String text, double rating, String date
});




}
/// @nodoc
class __$MapResultReviewCopyWithImpl<$Res>
    implements _$MapResultReviewCopyWith<$Res> {
  __$MapResultReviewCopyWithImpl(this._self, this._then);

  final _MapResultReview _self;
  final $Res Function(_MapResultReview) _then;

/// Create a copy of MapResultReview
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? author = null,Object? authorUrl = null,Object? text = null,Object? rating = null,Object? date = null,}) {
  return _then(_MapResultReview(
author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,authorUrl: null == authorUrl ? _self.authorUrl : authorUrl // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$MapResultPhoto {

/// {@macro flutter_serper.results.imageUrl}
 String get imageUrl;/// {@macro flutter_serper.results.thumbnailUrl}
 String get thumbnailUrl;
/// Create a copy of MapResultPhoto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MapResultPhotoCopyWith<MapResultPhoto> get copyWith => _$MapResultPhotoCopyWithImpl<MapResultPhoto>(this as MapResultPhoto, _$identity);

  /// Serializes this MapResultPhoto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MapResultPhoto&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,imageUrl,thumbnailUrl);

@override
String toString() {
  return 'MapResultPhoto(imageUrl: $imageUrl, thumbnailUrl: $thumbnailUrl)';
}


}

/// @nodoc
abstract mixin class $MapResultPhotoCopyWith<$Res>  {
  factory $MapResultPhotoCopyWith(MapResultPhoto value, $Res Function(MapResultPhoto) _then) = _$MapResultPhotoCopyWithImpl;
@useResult
$Res call({
 String imageUrl, String thumbnailUrl
});




}
/// @nodoc
class _$MapResultPhotoCopyWithImpl<$Res>
    implements $MapResultPhotoCopyWith<$Res> {
  _$MapResultPhotoCopyWithImpl(this._self, this._then);

  final MapResultPhoto _self;
  final $Res Function(MapResultPhoto) _then;

/// Create a copy of MapResultPhoto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? imageUrl = null,Object? thumbnailUrl = null,}) {
  return _then(_self.copyWith(
imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: null == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _MapResultPhoto implements MapResultPhoto {
  const _MapResultPhoto({required this.imageUrl, required this.thumbnailUrl});
  factory _MapResultPhoto.fromJson(Map<String, dynamic> json) => _$MapResultPhotoFromJson(json);

/// {@macro flutter_serper.results.imageUrl}
@override final  String imageUrl;
/// {@macro flutter_serper.results.thumbnailUrl}
@override final  String thumbnailUrl;

/// Create a copy of MapResultPhoto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MapResultPhotoCopyWith<_MapResultPhoto> get copyWith => __$MapResultPhotoCopyWithImpl<_MapResultPhoto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MapResultPhotoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MapResultPhoto&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,imageUrl,thumbnailUrl);

@override
String toString() {
  return 'MapResultPhoto(imageUrl: $imageUrl, thumbnailUrl: $thumbnailUrl)';
}


}

/// @nodoc
abstract mixin class _$MapResultPhotoCopyWith<$Res> implements $MapResultPhotoCopyWith<$Res> {
  factory _$MapResultPhotoCopyWith(_MapResultPhoto value, $Res Function(_MapResultPhoto) _then) = __$MapResultPhotoCopyWithImpl;
@override @useResult
$Res call({
 String imageUrl, String thumbnailUrl
});




}
/// @nodoc
class __$MapResultPhotoCopyWithImpl<$Res>
    implements _$MapResultPhotoCopyWith<$Res> {
  __$MapResultPhotoCopyWithImpl(this._self, this._then);

  final _MapResultPhoto _self;
  final $Res Function(_MapResultPhoto) _then;

/// Create a copy of MapResultPhoto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? imageUrl = null,Object? thumbnailUrl = null,}) {
  return _then(_MapResultPhoto(
imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: null == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PlaceReview {

/// The name of the review author.
 String get author;/// The URL to the author's profile.
 String get authorUrl;/// The text content of the review.
///
/// Contains the user's feedback about the place.
 String get text;/// {@macro flutter_serper.results.rating}
 double get rating;/// {@macro flutter_serper.results.date}
 String get date;/// The unique identifier for this review.
 String? get id;/// Whether the author is a Google Local Guide.
///
/// Local Guides are trusted reviewers in the Google Maps community.
 bool? get isLocalGuide;/// {@macro flutter_serper.results.position}
 int get position;
/// Create a copy of PlaceReview
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaceReviewCopyWith<PlaceReview> get copyWith => _$PlaceReviewCopyWithImpl<PlaceReview>(this as PlaceReview, _$identity);

  /// Serializes this PlaceReview to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlaceReview&&(identical(other.author, author) || other.author == author)&&(identical(other.authorUrl, authorUrl) || other.authorUrl == authorUrl)&&(identical(other.text, text) || other.text == text)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.date, date) || other.date == date)&&(identical(other.id, id) || other.id == id)&&(identical(other.isLocalGuide, isLocalGuide) || other.isLocalGuide == isLocalGuide)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,author,authorUrl,text,rating,date,id,isLocalGuide,position);

@override
String toString() {
  return 'PlaceReview(author: $author, authorUrl: $authorUrl, text: $text, rating: $rating, date: $date, id: $id, isLocalGuide: $isLocalGuide, position: $position)';
}


}

/// @nodoc
abstract mixin class $PlaceReviewCopyWith<$Res>  {
  factory $PlaceReviewCopyWith(PlaceReview value, $Res Function(PlaceReview) _then) = _$PlaceReviewCopyWithImpl;
@useResult
$Res call({
 String author, String authorUrl, String text, double rating, String date, String? id, bool? isLocalGuide, int position
});




}
/// @nodoc
class _$PlaceReviewCopyWithImpl<$Res>
    implements $PlaceReviewCopyWith<$Res> {
  _$PlaceReviewCopyWithImpl(this._self, this._then);

  final PlaceReview _self;
  final $Res Function(PlaceReview) _then;

/// Create a copy of PlaceReview
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? author = null,Object? authorUrl = null,Object? text = null,Object? rating = null,Object? date = null,Object? id = freezed,Object? isLocalGuide = freezed,Object? position = null,}) {
  return _then(_self.copyWith(
author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,authorUrl: null == authorUrl ? _self.authorUrl : authorUrl // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,isLocalGuide: freezed == isLocalGuide ? _self.isLocalGuide : isLocalGuide // ignore: cast_nullable_to_non_nullable
as bool?,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PlaceReview implements PlaceReview {
  const _PlaceReview({required this.author, required this.authorUrl, required this.text, required this.rating, required this.date, this.id, this.isLocalGuide, required this.position});
  factory _PlaceReview.fromJson(Map<String, dynamic> json) => _$PlaceReviewFromJson(json);

/// The name of the review author.
@override final  String author;
/// The URL to the author's profile.
@override final  String authorUrl;
/// The text content of the review.
///
/// Contains the user's feedback about the place.
@override final  String text;
/// {@macro flutter_serper.results.rating}
@override final  double rating;
/// {@macro flutter_serper.results.date}
@override final  String date;
/// The unique identifier for this review.
@override final  String? id;
/// Whether the author is a Google Local Guide.
///
/// Local Guides are trusted reviewers in the Google Maps community.
@override final  bool? isLocalGuide;
/// {@macro flutter_serper.results.position}
@override final  int position;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlaceReview&&(identical(other.author, author) || other.author == author)&&(identical(other.authorUrl, authorUrl) || other.authorUrl == authorUrl)&&(identical(other.text, text) || other.text == text)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.date, date) || other.date == date)&&(identical(other.id, id) || other.id == id)&&(identical(other.isLocalGuide, isLocalGuide) || other.isLocalGuide == isLocalGuide)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,author,authorUrl,text,rating,date,id,isLocalGuide,position);

@override
String toString() {
  return 'PlaceReview(author: $author, authorUrl: $authorUrl, text: $text, rating: $rating, date: $date, id: $id, isLocalGuide: $isLocalGuide, position: $position)';
}


}

/// @nodoc
abstract mixin class _$PlaceReviewCopyWith<$Res> implements $PlaceReviewCopyWith<$Res> {
  factory _$PlaceReviewCopyWith(_PlaceReview value, $Res Function(_PlaceReview) _then) = __$PlaceReviewCopyWithImpl;
@override @useResult
$Res call({
 String author, String authorUrl, String text, double rating, String date, String? id, bool? isLocalGuide, int position
});




}
/// @nodoc
class __$PlaceReviewCopyWithImpl<$Res>
    implements _$PlaceReviewCopyWith<$Res> {
  __$PlaceReviewCopyWithImpl(this._self, this._then);

  final _PlaceReview _self;
  final $Res Function(_PlaceReview) _then;

/// Create a copy of PlaceReview
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? author = null,Object? authorUrl = null,Object? text = null,Object? rating = null,Object? date = null,Object? id = freezed,Object? isLocalGuide = freezed,Object? position = null,}) {
  return _then(_PlaceReview(
author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,authorUrl: null == authorUrl ? _self.authorUrl : authorUrl // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,isLocalGuide: freezed == isLocalGuide ? _self.isLocalGuide : isLocalGuide // ignore: cast_nullable_to_non_nullable
as bool?,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$NewsResult {

/// {@macro flutter_serper.results.title}
 String get title;/// {@macro flutter_serper.results.link}
 String get link;/// {@macro flutter_serper.results.snippet}
 String get snippet;/// {@macro flutter_serper.results.date}
///
/// For news results, this is typically the publication date.
 String get date;/// {@macro flutter_serper.results.source}
///
/// For news results, this is the name of the news outlet.
 String get source;/// {@macro flutter_serper.results.imageUrl}
 String? get imageUrl;/// {@macro flutter_serper.results.position}
 int get position;
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
 String title, String link, String snippet, String date, String source, String? imageUrl, int position
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
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? link = null,Object? snippet = null,Object? date = null,Object? source = null,Object? imageUrl = freezed,Object? position = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,snippet: null == snippet ? _self.snippet : snippet // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _NewsResult implements NewsResult {
  const _NewsResult({required this.title, required this.link, required this.snippet, required this.date, required this.source, this.imageUrl, required this.position});
  factory _NewsResult.fromJson(Map<String, dynamic> json) => _$NewsResultFromJson(json);

/// {@macro flutter_serper.results.title}
@override final  String title;
/// {@macro flutter_serper.results.link}
@override final  String link;
/// {@macro flutter_serper.results.snippet}
@override final  String snippet;
/// {@macro flutter_serper.results.date}
///
/// For news results, this is typically the publication date.
@override final  String date;
/// {@macro flutter_serper.results.source}
///
/// For news results, this is the name of the news outlet.
@override final  String source;
/// {@macro flutter_serper.results.imageUrl}
@override final  String? imageUrl;
/// {@macro flutter_serper.results.position}
@override final  int position;

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
 String title, String link, String snippet, String date, String source, String? imageUrl, int position
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
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? link = null,Object? snippet = null,Object? date = null,Object? source = null,Object? imageUrl = freezed,Object? position = null,}) {
  return _then(_NewsResult(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,snippet: null == snippet ? _self.snippet : snippet // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ShoppingResult {

/// {@macro flutter_serper.results.title}
 String get title;/// {@macro flutter_serper.results.source}
///
/// For shopping results, this is typically the retailer or merchant name.
 String? get source;/// {@macro flutter_serper.results.link}
 String get link;/// {@macro flutter_serper.results.price}
 String? get price;/// Shipping or delivery information for the product.
///
/// May include cost, timeframe, or other delivery details.
 String? get delivery;/// {@macro flutter_serper.results.imageUrl}
 String? get imageUrl;/// {@macro flutter_serper.results.position}
 int get position;
/// Create a copy of ShoppingResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShoppingResultCopyWith<ShoppingResult> get copyWith => _$ShoppingResultCopyWithImpl<ShoppingResult>(this as ShoppingResult, _$identity);

  /// Serializes this ShoppingResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShoppingResult&&(identical(other.title, title) || other.title == title)&&(identical(other.source, source) || other.source == source)&&(identical(other.link, link) || other.link == link)&&(identical(other.price, price) || other.price == price)&&(identical(other.delivery, delivery) || other.delivery == delivery)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,source,link,price,delivery,imageUrl,position);

@override
String toString() {
  return 'ShoppingResult(title: $title, source: $source, link: $link, price: $price, delivery: $delivery, imageUrl: $imageUrl, position: $position)';
}


}

/// @nodoc
abstract mixin class $ShoppingResultCopyWith<$Res>  {
  factory $ShoppingResultCopyWith(ShoppingResult value, $Res Function(ShoppingResult) _then) = _$ShoppingResultCopyWithImpl;
@useResult
$Res call({
 String title, String? source, String link, String? price, String? delivery, String? imageUrl, int position
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
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? source = freezed,Object? link = null,Object? price = freezed,Object? delivery = freezed,Object? imageUrl = freezed,Object? position = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,delivery: freezed == delivery ? _self.delivery : delivery // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ShoppingResult implements ShoppingResult {
  const _ShoppingResult({required this.title, this.source, required this.link, this.price, this.delivery, this.imageUrl, required this.position});
  factory _ShoppingResult.fromJson(Map<String, dynamic> json) => _$ShoppingResultFromJson(json);

/// {@macro flutter_serper.results.title}
@override final  String title;
/// {@macro flutter_serper.results.source}
///
/// For shopping results, this is typically the retailer or merchant name.
@override final  String? source;
/// {@macro flutter_serper.results.link}
@override final  String link;
/// {@macro flutter_serper.results.price}
@override final  String? price;
/// Shipping or delivery information for the product.
///
/// May include cost, timeframe, or other delivery details.
@override final  String? delivery;
/// {@macro flutter_serper.results.imageUrl}
@override final  String? imageUrl;
/// {@macro flutter_serper.results.position}
@override final  int position;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShoppingResult&&(identical(other.title, title) || other.title == title)&&(identical(other.source, source) || other.source == source)&&(identical(other.link, link) || other.link == link)&&(identical(other.price, price) || other.price == price)&&(identical(other.delivery, delivery) || other.delivery == delivery)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,source,link,price,delivery,imageUrl,position);

@override
String toString() {
  return 'ShoppingResult(title: $title, source: $source, link: $link, price: $price, delivery: $delivery, imageUrl: $imageUrl, position: $position)';
}


}

/// @nodoc
abstract mixin class _$ShoppingResultCopyWith<$Res> implements $ShoppingResultCopyWith<$Res> {
  factory _$ShoppingResultCopyWith(_ShoppingResult value, $Res Function(_ShoppingResult) _then) = __$ShoppingResultCopyWithImpl;
@override @useResult
$Res call({
 String title, String? source, String link, String? price, String? delivery, String? imageUrl, int position
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
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? source = freezed,Object? link = null,Object? price = freezed,Object? delivery = freezed,Object? imageUrl = freezed,Object? position = null,}) {
  return _then(_ShoppingResult(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,delivery: freezed == delivery ? _self.delivery : delivery // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$LensResult {

/// {@macro flutter_serper.results.title}
 String get title;/// {@macro flutter_serper.results.source}
 String get source;/// {@macro flutter_serper.results.link}
 String get link;/// {@macro flutter_serper.results.imageUrl}
 String get imageUrl;/// {@macro flutter_serper.results.thumbnailUrl}
 String get thumbnailUrl;
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
 String title, String source, String link, String imageUrl, String thumbnailUrl
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
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? source = null,Object? link = null,Object? imageUrl = null,Object? thumbnailUrl = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: null == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _LensResult implements LensResult {
  const _LensResult({required this.title, required this.source, required this.link, required this.imageUrl, required this.thumbnailUrl});
  factory _LensResult.fromJson(Map<String, dynamic> json) => _$LensResultFromJson(json);

/// {@macro flutter_serper.results.title}
@override final  String title;
/// {@macro flutter_serper.results.source}
@override final  String source;
/// {@macro flutter_serper.results.link}
@override final  String link;
/// {@macro flutter_serper.results.imageUrl}
@override final  String imageUrl;
/// {@macro flutter_serper.results.thumbnailUrl}
@override final  String thumbnailUrl;

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
 String title, String source, String link, String imageUrl, String thumbnailUrl
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
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? source = null,Object? link = null,Object? imageUrl = null,Object? thumbnailUrl = null,}) {
  return _then(_LensResult(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: null == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ScholarResult {

/// {@macro flutter_serper.results.title}
 String get title;/// {@macro flutter_serper.results.link}
 String get link;/// Information about the publication.
///
/// Typically includes the journal name, conference, or publisher details.
 String get publicationInfo;/// {@macro flutter_serper.results.snippet}
 String get snippet;/// The year the academic paper was published.
 int get year;/// The number of times this paper has been cited by other papers.
///
/// This is an indicator of the paper's influence in its field.
 int get citedBy;/// URL to the PDF version of the academic paper.
 String get pdfUrl;/// The unique identifier for this academic paper.
 String get id;
/// Create a copy of ScholarResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScholarResultCopyWith<ScholarResult> get copyWith => _$ScholarResultCopyWithImpl<ScholarResult>(this as ScholarResult, _$identity);

  /// Serializes this ScholarResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScholarResult&&(identical(other.title, title) || other.title == title)&&(identical(other.link, link) || other.link == link)&&(identical(other.publicationInfo, publicationInfo) || other.publicationInfo == publicationInfo)&&(identical(other.snippet, snippet) || other.snippet == snippet)&&(identical(other.year, year) || other.year == year)&&(identical(other.citedBy, citedBy) || other.citedBy == citedBy)&&(identical(other.pdfUrl, pdfUrl) || other.pdfUrl == pdfUrl)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,link,publicationInfo,snippet,year,citedBy,pdfUrl,id);

@override
String toString() {
  return 'ScholarResult(title: $title, link: $link, publicationInfo: $publicationInfo, snippet: $snippet, year: $year, citedBy: $citedBy, pdfUrl: $pdfUrl, id: $id)';
}


}

/// @nodoc
abstract mixin class $ScholarResultCopyWith<$Res>  {
  factory $ScholarResultCopyWith(ScholarResult value, $Res Function(ScholarResult) _then) = _$ScholarResultCopyWithImpl;
@useResult
$Res call({
 String title, String link, String publicationInfo, String snippet, int year, int citedBy, String pdfUrl, String id
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
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? link = null,Object? publicationInfo = null,Object? snippet = null,Object? year = null,Object? citedBy = null,Object? pdfUrl = null,Object? id = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,publicationInfo: null == publicationInfo ? _self.publicationInfo : publicationInfo // ignore: cast_nullable_to_non_nullable
as String,snippet: null == snippet ? _self.snippet : snippet // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,citedBy: null == citedBy ? _self.citedBy : citedBy // ignore: cast_nullable_to_non_nullable
as int,pdfUrl: null == pdfUrl ? _self.pdfUrl : pdfUrl // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ScholarResult implements ScholarResult {
  const _ScholarResult({required this.title, required this.link, required this.publicationInfo, required this.snippet, required this.year, required this.citedBy, required this.pdfUrl, required this.id});
  factory _ScholarResult.fromJson(Map<String, dynamic> json) => _$ScholarResultFromJson(json);

/// {@macro flutter_serper.results.title}
@override final  String title;
/// {@macro flutter_serper.results.link}
@override final  String link;
/// Information about the publication.
///
/// Typically includes the journal name, conference, or publisher details.
@override final  String publicationInfo;
/// {@macro flutter_serper.results.snippet}
@override final  String snippet;
/// The year the academic paper was published.
@override final  int year;
/// The number of times this paper has been cited by other papers.
///
/// This is an indicator of the paper's influence in its field.
@override final  int citedBy;
/// URL to the PDF version of the academic paper.
@override final  String pdfUrl;
/// The unique identifier for this academic paper.
@override final  String id;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScholarResult&&(identical(other.title, title) || other.title == title)&&(identical(other.link, link) || other.link == link)&&(identical(other.publicationInfo, publicationInfo) || other.publicationInfo == publicationInfo)&&(identical(other.snippet, snippet) || other.snippet == snippet)&&(identical(other.year, year) || other.year == year)&&(identical(other.citedBy, citedBy) || other.citedBy == citedBy)&&(identical(other.pdfUrl, pdfUrl) || other.pdfUrl == pdfUrl)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,link,publicationInfo,snippet,year,citedBy,pdfUrl,id);

@override
String toString() {
  return 'ScholarResult(title: $title, link: $link, publicationInfo: $publicationInfo, snippet: $snippet, year: $year, citedBy: $citedBy, pdfUrl: $pdfUrl, id: $id)';
}


}

/// @nodoc
abstract mixin class _$ScholarResultCopyWith<$Res> implements $ScholarResultCopyWith<$Res> {
  factory _$ScholarResultCopyWith(_ScholarResult value, $Res Function(_ScholarResult) _then) = __$ScholarResultCopyWithImpl;
@override @useResult
$Res call({
 String title, String link, String publicationInfo, String snippet, int year, int citedBy, String pdfUrl, String id
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
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? link = null,Object? publicationInfo = null,Object? snippet = null,Object? year = null,Object? citedBy = null,Object? pdfUrl = null,Object? id = null,}) {
  return _then(_ScholarResult(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,publicationInfo: null == publicationInfo ? _self.publicationInfo : publicationInfo // ignore: cast_nullable_to_non_nullable
as String,snippet: null == snippet ? _self.snippet : snippet // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,citedBy: null == citedBy ? _self.citedBy : citedBy // ignore: cast_nullable_to_non_nullable
as int,pdfUrl: null == pdfUrl ? _self.pdfUrl : pdfUrl // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PatentResult {

/// {@macro flutter_serper.results.title}
 String get title;/// {@macro flutter_serper.results.snippet}
 String get snippet;/// {@macro flutter_serper.results.link}
 String get link;/// The priority date of the patent.
///
/// This is the earliest filing date in a family of patents.
 String get priorityDate;/// The date when the patent application was filed.
 String get filingDate;/// The date when the patent was granted, if applicable.
 String? get grantDate;/// The date when the patent was published.
 String get publicationDate;/// The name(s) of the inventor(s) of the patent.
 String get inventor;/// The name of the entity to whom the patent is assigned.
 String get assignee; int get position;
/// Create a copy of PatentResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatentResultCopyWith<PatentResult> get copyWith => _$PatentResultCopyWithImpl<PatentResult>(this as PatentResult, _$identity);

  /// Serializes this PatentResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatentResult&&(identical(other.title, title) || other.title == title)&&(identical(other.snippet, snippet) || other.snippet == snippet)&&(identical(other.link, link) || other.link == link)&&(identical(other.priorityDate, priorityDate) || other.priorityDate == priorityDate)&&(identical(other.filingDate, filingDate) || other.filingDate == filingDate)&&(identical(other.grantDate, grantDate) || other.grantDate == grantDate)&&(identical(other.publicationDate, publicationDate) || other.publicationDate == publicationDate)&&(identical(other.inventor, inventor) || other.inventor == inventor)&&(identical(other.assignee, assignee) || other.assignee == assignee)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,snippet,link,priorityDate,filingDate,grantDate,publicationDate,inventor,assignee,position);

@override
String toString() {
  return 'PatentResult(title: $title, snippet: $snippet, link: $link, priorityDate: $priorityDate, filingDate: $filingDate, grantDate: $grantDate, publicationDate: $publicationDate, inventor: $inventor, assignee: $assignee, position: $position)';
}


}

/// @nodoc
abstract mixin class $PatentResultCopyWith<$Res>  {
  factory $PatentResultCopyWith(PatentResult value, $Res Function(PatentResult) _then) = _$PatentResultCopyWithImpl;
@useResult
$Res call({
 String title, String snippet, String link, String priorityDate, String filingDate, String? grantDate, String publicationDate, String inventor, String assignee, int position
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
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? snippet = null,Object? link = null,Object? priorityDate = null,Object? filingDate = null,Object? grantDate = freezed,Object? publicationDate = null,Object? inventor = null,Object? assignee = null,Object? position = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,snippet: null == snippet ? _self.snippet : snippet // ignore: cast_nullable_to_non_nullable
as String,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,priorityDate: null == priorityDate ? _self.priorityDate : priorityDate // ignore: cast_nullable_to_non_nullable
as String,filingDate: null == filingDate ? _self.filingDate : filingDate // ignore: cast_nullable_to_non_nullable
as String,grantDate: freezed == grantDate ? _self.grantDate : grantDate // ignore: cast_nullable_to_non_nullable
as String?,publicationDate: null == publicationDate ? _self.publicationDate : publicationDate // ignore: cast_nullable_to_non_nullable
as String,inventor: null == inventor ? _self.inventor : inventor // ignore: cast_nullable_to_non_nullable
as String,assignee: null == assignee ? _self.assignee : assignee // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PatentResult implements PatentResult {
  const _PatentResult({required this.title, required this.snippet, required this.link, required this.priorityDate, required this.filingDate, this.grantDate, required this.publicationDate, required this.inventor, required this.assignee, required this.position});
  factory _PatentResult.fromJson(Map<String, dynamic> json) => _$PatentResultFromJson(json);

/// {@macro flutter_serper.results.title}
@override final  String title;
/// {@macro flutter_serper.results.snippet}
@override final  String snippet;
/// {@macro flutter_serper.results.link}
@override final  String link;
/// The priority date of the patent.
///
/// This is the earliest filing date in a family of patents.
@override final  String priorityDate;
/// The date when the patent application was filed.
@override final  String filingDate;
/// The date when the patent was granted, if applicable.
@override final  String? grantDate;
/// The date when the patent was published.
@override final  String publicationDate;
/// The name(s) of the inventor(s) of the patent.
@override final  String inventor;
/// The name of the entity to whom the patent is assigned.
@override final  String assignee;
@override final  int position;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatentResult&&(identical(other.title, title) || other.title == title)&&(identical(other.snippet, snippet) || other.snippet == snippet)&&(identical(other.link, link) || other.link == link)&&(identical(other.priorityDate, priorityDate) || other.priorityDate == priorityDate)&&(identical(other.filingDate, filingDate) || other.filingDate == filingDate)&&(identical(other.grantDate, grantDate) || other.grantDate == grantDate)&&(identical(other.publicationDate, publicationDate) || other.publicationDate == publicationDate)&&(identical(other.inventor, inventor) || other.inventor == inventor)&&(identical(other.assignee, assignee) || other.assignee == assignee)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,snippet,link,priorityDate,filingDate,grantDate,publicationDate,inventor,assignee,position);

@override
String toString() {
  return 'PatentResult(title: $title, snippet: $snippet, link: $link, priorityDate: $priorityDate, filingDate: $filingDate, grantDate: $grantDate, publicationDate: $publicationDate, inventor: $inventor, assignee: $assignee, position: $position)';
}


}

/// @nodoc
abstract mixin class _$PatentResultCopyWith<$Res> implements $PatentResultCopyWith<$Res> {
  factory _$PatentResultCopyWith(_PatentResult value, $Res Function(_PatentResult) _then) = __$PatentResultCopyWithImpl;
@override @useResult
$Res call({
 String title, String snippet, String link, String priorityDate, String filingDate, String? grantDate, String publicationDate, String inventor, String assignee, int position
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
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? snippet = null,Object? link = null,Object? priorityDate = null,Object? filingDate = null,Object? grantDate = freezed,Object? publicationDate = null,Object? inventor = null,Object? assignee = null,Object? position = null,}) {
  return _then(_PatentResult(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,snippet: null == snippet ? _self.snippet : snippet // ignore: cast_nullable_to_non_nullable
as String,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,priorityDate: null == priorityDate ? _self.priorityDate : priorityDate // ignore: cast_nullable_to_non_nullable
as String,filingDate: null == filingDate ? _self.filingDate : filingDate // ignore: cast_nullable_to_non_nullable
as String,grantDate: freezed == grantDate ? _self.grantDate : grantDate // ignore: cast_nullable_to_non_nullable
as String?,publicationDate: null == publicationDate ? _self.publicationDate : publicationDate // ignore: cast_nullable_to_non_nullable
as String,inventor: null == inventor ? _self.inventor : inventor // ignore: cast_nullable_to_non_nullable
as String,assignee: null == assignee ? _self.assignee : assignee // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$PatentFigure {

/// {@macro flutter_serper.results.imageUrl}
 String get imageUrl;/// {@macro flutter_serper.results.thumbnailUrl}
 String get thumbnailUrl;
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
 String imageUrl, String thumbnailUrl
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
@pragma('vm:prefer-inline') @override $Res call({Object? imageUrl = null,Object? thumbnailUrl = null,}) {
  return _then(_self.copyWith(
imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: null == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PatentFigure implements PatentFigure {
  const _PatentFigure({required this.imageUrl, required this.thumbnailUrl});
  factory _PatentFigure.fromJson(Map<String, dynamic> json) => _$PatentFigureFromJson(json);

/// {@macro flutter_serper.results.imageUrl}
@override final  String imageUrl;
/// {@macro flutter_serper.results.thumbnailUrl}
@override final  String thumbnailUrl;

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
 String imageUrl, String thumbnailUrl
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
@override @pragma('vm:prefer-inline') $Res call({Object? imageUrl = null,Object? thumbnailUrl = null,}) {
  return _then(_PatentFigure(
imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: null == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$WebpageResult {

/// {@macro flutter_serper.results.title}
 String get title;/// {@macro flutter_serper.results.link}
 String get link;/// {@macro flutter_serper.results.snippet}
 String get snippet;
/// Create a copy of WebpageResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WebpageResultCopyWith<WebpageResult> get copyWith => _$WebpageResultCopyWithImpl<WebpageResult>(this as WebpageResult, _$identity);

  /// Serializes this WebpageResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WebpageResult&&(identical(other.title, title) || other.title == title)&&(identical(other.link, link) || other.link == link)&&(identical(other.snippet, snippet) || other.snippet == snippet));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,link,snippet);

@override
String toString() {
  return 'WebpageResult(title: $title, link: $link, snippet: $snippet)';
}


}

/// @nodoc
abstract mixin class $WebpageResultCopyWith<$Res>  {
  factory $WebpageResultCopyWith(WebpageResult value, $Res Function(WebpageResult) _then) = _$WebpageResultCopyWithImpl;
@useResult
$Res call({
 String title, String link, String snippet
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
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? link = null,Object? snippet = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,snippet: null == snippet ? _self.snippet : snippet // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _WebpageResult implements WebpageResult {
  const _WebpageResult({required this.title, required this.link, required this.snippet});
  factory _WebpageResult.fromJson(Map<String, dynamic> json) => _$WebpageResultFromJson(json);

/// {@macro flutter_serper.results.title}
@override final  String title;
/// {@macro flutter_serper.results.link}
@override final  String link;
/// {@macro flutter_serper.results.snippet}
@override final  String snippet;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WebpageResult&&(identical(other.title, title) || other.title == title)&&(identical(other.link, link) || other.link == link)&&(identical(other.snippet, snippet) || other.snippet == snippet));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,link,snippet);

@override
String toString() {
  return 'WebpageResult(title: $title, link: $link, snippet: $snippet)';
}


}

/// @nodoc
abstract mixin class _$WebpageResultCopyWith<$Res> implements $WebpageResultCopyWith<$Res> {
  factory _$WebpageResultCopyWith(_WebpageResult value, $Res Function(_WebpageResult) _then) = __$WebpageResultCopyWithImpl;
@override @useResult
$Res call({
 String title, String link, String snippet
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
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? link = null,Object? snippet = null,}) {
  return _then(_WebpageResult(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,snippet: null == snippet ? _self.snippet : snippet // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
