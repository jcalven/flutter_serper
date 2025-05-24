part of 'results.dart';

/// Scholar result.
@freezed
abstract class ScholarResult with _$ScholarResult {
  const factory ScholarResult({
    required String title,
    required String link,
    required String publicationInfo,
    required String snippet,
    required int year,
    required int citedBy,
    required String pdfUrl,
    required String id,
  }) = _ScholarResult;

  factory ScholarResult.fromJson(Map<String, dynamic> json) =>
      _$ScholarResultFromJson(json);
}
