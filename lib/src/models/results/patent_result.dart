part of 'results.dart';

/// Patent result from the Serper Patents API.
@freezed
abstract class PatentResult with _$PatentResult {
  /// Creates a [PatentResult].
  const factory PatentResult({
    /// {@macro flutter_serper.results.title}
    required String title,

    /// {@macro flutter_serper.results.snippet}
    required String snippet,

    /// {@macro flutter_serper.results.link}
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

    required int position,
  }) = _PatentResult;

  /// Creates a [PatentResult] from a JSON map.
  factory PatentResult.fromJson(Map<String, dynamic> json) =>
      _$PatentResultFromJson(json);
}
