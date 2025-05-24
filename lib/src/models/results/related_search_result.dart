part of 'results.dart';

/// Related search suggestion from the Serper Search API.
///
/// These are alternative search queries that are related to the original search.
@freezed
abstract class RelatedSearchResult with _$RelatedSearchResult {
  /// Creates a [RelatedSearchResult].
  const factory RelatedSearchResult({
    /// The related search query text.
    ///
    /// This is an alternative search term that users might be interested in.
    required String query,
  }) = _RelatedSearchResult;

  /// Creates a [RelatedSearchResult] from a JSON map.
  factory RelatedSearchResult.fromJson(Map<String, dynamic> json) =>
      _$RelatedSearchResultFromJson(json);
}
