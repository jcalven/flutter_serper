part of 'results.dart';

/// Represents a single result in a Serper Webpage API response.
///
/// This contains the extracted content from a webpage.
@freezed
abstract class WebpageResult with _$WebpageResult {
  /// Creates a [WebpageResult].
  const factory WebpageResult({
    /// The extracted text content from the webpage.
    ///
    /// This is the main content that has been parsed from the webpage.
    required String text,

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

    /// The number of credits used for extracting this webpage.
    ///
    /// Serper API uses a credit-based system for billing.
    required int credits,
  }) = _WebpageResult;

  /// Creates a [WebpageResult] from a JSON map.
  factory WebpageResult.fromJson(Map<String, dynamic> json) =>
      _$WebpageResultFromJson(json);
}
