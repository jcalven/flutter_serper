part of 'queries.dart';

/// Query object for the Serper Webpage API (scraping).
@freezed
abstract class WebpageQuery with _$WebpageQuery {
  const factory WebpageQuery({
    /// {@template flutter_serper.queries.url}
    /// The URL of the page to process.
    ///
    /// This is a required parameter.
    /// {@endtemplate}
    required String url,

    /// Whether to include markdown in the response
    ///
    /// When true, the API will return a markdown version of the webpage content.
    bool? includeMarkdown,

    /// {@macro flutter_serper.queries.queryString}
    @JsonKey(name: 'q') String? query,
  }) = _WebpageQuery;

  factory WebpageQuery.fromJson(Map<String, dynamic> json) =>
      _$WebpageQueryFromJson(json);
}
