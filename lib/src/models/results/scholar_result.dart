part of 'results.dart';

/// Scholar result from the Serper Scholar API.
@freezed
abstract class ScholarResult with _$ScholarResult {
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
    required String pdfUrl,

    /// The unique identifier for this academic paper.
    required String id,
  }) = _ScholarResult;

  /// Creates a [ScholarResult] from a JSON map.
  factory ScholarResult.fromJson(Map<String, dynamic> json) =>
      _$ScholarResultFromJson(json);
}
