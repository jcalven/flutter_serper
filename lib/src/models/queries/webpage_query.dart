part of 'queries.dart';

/// Query object for the Serper Webpage API (scraping).
@freezed
abstract class WebpageQuery with _$WebpageQuery {
  const factory WebpageQuery({
    required String url,
    bool? includeMarkdown,
    String? q,
  }) = _WebpageQuery;

  factory WebpageQuery.fromJson(Map<String, dynamic> json) =>
      _$WebpageQueryFromJson(json);
}
