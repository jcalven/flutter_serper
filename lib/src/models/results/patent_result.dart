part of 'results.dart';

/// Patent result from the Serper Patents API.
@freezed
abstract class PatentResult with _$PatentResult {
  /// Creates a [PatentResult].
  const factory PatentResult({
    /// {@macro ResultDocTemplates.titleDoc}
    required String title,

    /// {@macro ResultDocTemplates.snippetDoc}
    required String snippet,

    /// {@macro ResultDocTemplates.linkDoc}
    required String link,

    /// The priority date of the patent.
    ///
    /// This is the earliest filing date in a family of patents.
    required String priorityDate,

    /// The date when the patent application was filed.
    required String filingDate,

    /// The date when the patent was granted, if applicable.
    String? grantDate,

    /// The date when the patent was published.
    required String publicationDate,

    /// The name(s) of the inventor(s) of the patent.
    required String inventor,

    /// The name of the entity to whom the patent is assigned.
    required String assignee,

    /// The official publication number of the patent.
    required String publicationNumber,

    /// The language in which the patent is written.
    required String language,

    /// {@macro ResultDocTemplates.thumbnailUrlDoc}
    required String thumbnailUrl,

    /// URL to the PDF version of the patent document.
    String? pdfUrl,

    /// List of figures included in the patent.
    ///
    /// These are technical drawings or illustrations that are part of the patent.
    List<PatentFigure>? figures,

    /// {@macro ResultDocTemplates.positionDoc}
    required int position,
  }) = _PatentResult;

  /// Creates a [PatentResult] from a JSON map.
  factory PatentResult.fromJson(Map<String, dynamic> json) =>
      _$PatentResultFromJson(json);
}
