part of 'results.dart';

/// News result from the Serper News API.
@freezed
abstract class NewsResult with _$NewsResult {
  /// Creates a [NewsResult].
  const factory NewsResult({
    /// {@macro ResultDocTemplates.titleDoc}
    required String title,

    /// {@macro ResultDocTemplates.linkDoc}
    required String link,

    /// {@macro ResultDocTemplates.snippetDoc}
    required String snippet,

    /// {@macro ResultDocTemplates.dateDoc}
    ///
    /// For news results, this is typically the publication date.
    required String date,

    /// {@macro ResultDocTemplates.sourceDoc}
    ///
    /// For news results, this is the name of the news outlet.
    required String source,

    /// {@macro ResultDocTemplates.imageUrlDoc}
    String? imageUrl,

    /// {@macro ResultDocTemplates.positionDoc}
    required int position,
  }) = _NewsResult;

  /// Creates a [NewsResult] from a JSON map.
  factory NewsResult.fromJson(Map<String, dynamic> json) =>
      _$NewsResultFromJson(json);
}
