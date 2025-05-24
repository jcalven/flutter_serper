part of 'results.dart';

/// Related search result.
@freezed
abstract class RelatedSearchResult with _$RelatedSearchResult {
  const factory RelatedSearchResult({required String query}) =
      _RelatedSearchResult;

  factory RelatedSearchResult.fromJson(Map<String, dynamic> json) =>
      _$RelatedSearchResultFromJson(json);
}
