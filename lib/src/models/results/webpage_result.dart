part of 'results.dart';

/// {@template webpageResultDocComments}
///
/// An immutable result object representing a single result in a Serper Webpage API response.
///
/// - [text]: The extracted text content from the webpage.
/// - [markdown]: The content formatted as markdown, if available.
/// - [metadata]: Additional metadata about the webpage.
/// - [jsonld]: Structured data markup (JSON-LD).
/// - [credits]: The number of credits used for extracting this webpage.
///
/// This class is used in the [WebpageResponse] to represent the extracted content from a webpage.
/// {@endtemplate}
@freezed
abstract class WebpageResult with _$WebpageResult {
  /// {@macro webpageResultDocComments}
  /// Creates a [WebpageResult].
  const factory WebpageResult({
    /// The extracted text content from the webpage.
    ///
    /// This is the main content that has been parsed from the webpage.
    String? text,

    // /// {@macro flutter_serper.results.title}
    // required String title,

    /// The content formatted as markdown, if available.
    ///
    /// This provides a structured representation of the content with formatting.
    String? markdown,

    /// Additional metadata about the webpage.
    ///
    /// May include information like title, description, author, etc.
    ///
    /// Note: This field is not strongly typed since the metadata structure
    /// can vary widely between different webpages and the meta tags are not
    /// standardized.
    Map<String, dynamic>? metadata,

    /// Structured data markup (JSON-LD)
    ///
    /// See: https://json-ld.org
    Map<String, dynamic>? jsonld,

    /// The number of credits used for extracting this webpage.
    ///
    /// Serper API uses a credit-based system for billing.
    int? credits,
  }) = _WebpageResult;

  /// Creates a [WebpageResult] from a JSON map.
  factory WebpageResult.fromJson(Map<String, dynamic> json) =>
      _$WebpageResultFromJson(json);
}
