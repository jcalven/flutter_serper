part of 'results.dart';

/// {@template patentResultDocComments}
///
/// An immutable result object representing a patent result from the Serper Patents API.
///
/// - [title]: The title of the patent.
/// - [snippet]: A brief excerpt or description of the patent.
/// - [link]: The direct link to the patent result.
/// - [priorityDate]: The priority date of the patent.
/// - [filingDate]: The date when the patent application was filed.
/// - [grantDate]: The date when the patent was granted, if applicable.
/// - [publicationDate]: The date when the patent was published.
/// - [inventor]: The name(s) of the inventor(s) of the patent.
/// - [assignee]: The name of the entity to whom the patent is assigned.
/// - [publicationNumber]: The official publication number of the patent.
/// - [language]: The language in which the patent is written.
/// - [thumbnailUrl]: The URL to a thumbnail version of the patent.
/// - [pdfUrl]: URL to the PDF version of the patent document.
/// - [figures]: List of figures included in the patent.
/// - [position]: The position of this result in the results list.
///
/// This class is used in the [PatentsResponse] to represent each patent result returned by the API.
/// {@endtemplate}
@freezed
abstract class PatentResult with _$PatentResult {
  /// {@macro patentResultDocComments}
  /// Creates a [PatentResult].
  const factory PatentResult({
    /// {@macro flutter_serper.results.title}
    String? title,

    /// {@macro flutter_serper.results.snippet}
    String? snippet,

    /// {@macro flutter_serper.results.link}
    String? link,

    /// The priority date of the patent.
    ///
    /// This is the earliest filing date in a family of patents.
    String? priorityDate,

    /// The date when the patent application was filed.
    String? filingDate,

    /// The date when the patent was granted, if applicable.
    String? grantDate,

    /// The date when the patent was published.
    String? publicationDate,

    /// The name(s) of the inventor(s) of the patent.
    String? inventor,

    /// The name of the entity to whom the patent is assigned.
    String? assignee,

    /// The official publication number of the patent.
    String? publicationNumber,

    /// The language in which the patent is written.
    String? language,

    /// {@macro ResultDocTemplates.thumbnailUrlDoc}
    String? thumbnailUrl,

    /// URL to the PDF version of the patent document.
    String? pdfUrl,

    /// List of figures included in the patent.
    ///
    /// These are technical drawings or illustrations that are part of the patent.
    List<PatentFigure>? figures,

    /// {@macro ResultDocTemplates.positionDoc}
    int? position,
  }) = _PatentResult;

  /// Creates a [PatentResult] from a JSON map.
  factory PatentResult.fromJson(Map<String, dynamic> json) =>
      _$PatentResultFromJson(json);
}
