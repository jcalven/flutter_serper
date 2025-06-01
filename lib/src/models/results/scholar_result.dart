part of 'results.dart';

/// {@template scholarResultDocComments}
///
/// An immutable result object representing a scholar result from the Serper Scholar API.
///
/// - [title]: The title of the academic paper.
/// - [link]: The direct link to the academic paper.
/// - [publicationInfo]: Information about the publication (journal, conference, etc.).
/// - [snippet]: A brief excerpt or description of the paper.
/// - [year]: The year the academic paper was published.
/// - [citedBy]: The number of times this paper has been cited by other papers.
/// - [pdfUrl]: URL to the PDF version of the academic paper.
/// - [htmlUrl]: URL to the HTML version of the academic paper.
/// - [id]: The unique identifier for this academic paper.
///
/// This class is used in the [ScholarResponse] to represent each scholar result returned by the API.
/// {@endtemplate}
@freezed
abstract class ScholarResult with _$ScholarResult {
  /// {@macro scholarResultDocComments}
  /// Creates a [ScholarResult].
  const factory ScholarResult({
    /// {@macro flutter_serper.results.title}
    required String title,

    /// {@macro flutter_serper.results.link}
    required String link,

    /// Information about the publication.
    ///
    /// Typically includes the journal name, conference, or publisher details.
    required String publicationInfo,

    /// {@macro flutter_serper.results.snippet}
    required String snippet,

    /// The year the academic paper was published.
    required int year,

    /// The number of times this paper has been cited by other papers.
    ///
    /// This is an indicator of the paper's influence in its field.
    required int citedBy,

    /// URL to the PDF version of the academic paper.
    String? pdfUrl,

    /// URL to the HTML version of the academic paper.
    String? htmlUrl,

    /// The unique identifier for this academic paper.
    required String id,
  }) = _ScholarResult;

  /// Creates a [ScholarResult] from a JSON map.
  factory ScholarResult.fromJson(Map<String, dynamic> json) =>
      _$ScholarResultFromJson(json);
}
