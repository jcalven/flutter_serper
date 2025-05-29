part of 'results.dart';

/// News result from the Serper News API.
@freezed
abstract class NewsResult with _$NewsResult {
  /// Creates a [NewsResult].
  const factory NewsResult({
    /// {@macro flutter_serper.results.title}
    required String title,

    /// {@macro flutter_serper.results.link}
    required String link,

    /// {@macro flutter_serper.results.snippet}
    required String snippet,

    /// {@macro flutter_serper.results.date}
    ///
    /// For news results, this is typically the publication date.
    required String date,

    /// {@macro flutter_serper.results.source}
    ///
    /// For news results, this is the name of the news outlet.
    required String source,

    /// {@macro flutter_serper.results.imageUrl}
    String? imageUrl,

    /// {@macro flutter_serper.results.position}
    required int position,
  }) = _NewsResult;

  /// Creates a [NewsResult] from a JSON map.
  factory NewsResult.fromJson(Map<String, dynamic> json) =>
      _$NewsResultFromJson(json);
}
