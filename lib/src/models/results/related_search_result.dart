part of 'results.dart';

/// {@template relatedSearchResultDocComments}
///
/// An immutable result object representing a related search suggestion from the Serper Search API.
///
/// - [query]: The related search query text.
///
/// This class is used in [SearchResponse] to represent alternative search queries related to the original search.
/// {@endtemplate}
@freezed
abstract class RelatedSearchResult with _$RelatedSearchResult {
  /// {@macro relatedSearchResultDocComments}
  /// Creates a [RelatedSearchResult].
  const factory RelatedSearchResult({
    /// The related search query text.
    ///
    /// This is an alternative search term that users might be interested in.
    String? query,
  }) = _RelatedSearchResult;

  /// Creates a [RelatedSearchResult] from a JSON map.
  factory RelatedSearchResult.fromJson(Map<String, dynamic> json) =>
      _$RelatedSearchResultFromJson(json);
}
