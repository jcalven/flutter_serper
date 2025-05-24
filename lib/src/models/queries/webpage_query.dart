part of 'queries.dart';

/// Query object for the Serper Webpage API (scraping).
@freezed
abstract class WebpageQuery with _$WebpageQuery {
  const factory WebpageQuery({
    /// {@macro QueryDocTemplates.urlDoc}
    required String url,

    /// Whether to include markdown in the response
    ///
    /// When true, the API will return a markdown version of the webpage content.
    bool? includeMarkdown,

    /// Optional query string to search within the webpage
    ///
    /// When provided, the API will return content relevant to this query.
    String? q,
  }) = _WebpageQuery;

  factory WebpageQuery.fromJson(Map<String, dynamic> json) =>
      _$WebpageQueryFromJson(json);
}
