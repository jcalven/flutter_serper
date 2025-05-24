part of 'results.dart';

/// Patent result.
@freezed
abstract class PatentResult with _$PatentResult {
  const factory PatentResult({
    required String title,
    required String snippet,
    required String link,
    required String priorityDate,
    required String filingDate,
    String? grantDate,
    required String publicationDate,
    required String inventor,
    required String assignee,
    required String publicationNumber,
    required String language,
    required String thumbnailUrl,
    String? pdfUrl,
    List<PatentFigure>? figures,
    required int position,
  }) = _PatentResult;

  factory PatentResult.fromJson(Map<String, dynamic> json) =>
      _$PatentResultFromJson(json);
}
