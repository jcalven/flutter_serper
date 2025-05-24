part of 'results.dart';

/// Organic search result.
@freezed
class OrganicResult with _$OrganicResult {
  const factory OrganicResult({
    required String title,
    required String link,
    required String snippet,
    String? date,
    double? rating,
    int? ratingCount,
    String? imageUrl,
    required int position,
    dynamic sitelinks,
  }) = _OrganicResult;

  factory OrganicResult.fromJson(Map<String, dynamic> json) =>
      _$OrganicResultFromJson(json);
}
