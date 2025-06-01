part of 'queries.dart';

/// {@template webpageQueryDocComments}
///
/// An immutable query object for the Serper Webpage API (scraping), describing a webpage request
/// by holding the [url] and [includeMarkdown] fields.
///
/// - [url]: The URL of the page to process. This is a required parameter.
/// - [includeMarkdown]: Whether to include markdown in the response. Defaults to true.
///
/// This class is used as the query model for Serper API methods that perform webpage scraping.
/// Create an instance of this class and pass it to the relevant Serper API method to perform a webpage request.
/// {@endtemplate}
@freezed
abstract class WebpageQuery with _$WebpageQuery {
  /// {@macro webpageQueryDocComments}
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
    @Default(true) bool includeMarkdown,
  }) = _WebpageQuery;

  factory WebpageQuery.fromJson(Map<String, dynamic> json) =>
      _$WebpageQueryFromJson(json);
}
