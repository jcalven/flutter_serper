part of 'results.dart';

/// {@template newsResultDocComments}
///
/// An immutable result object representing a news result from the Serper News API.
///
/// - [title]: The title of the news article.
/// - [link]: The direct link to the news article.
/// - [snippet]: A brief excerpt or description of the news article.
/// - [date]: The publication date of the news article.
/// - [source]: The name of the news outlet.
/// - [imageUrl]: The URL to the image associated with the news article.
/// - [position]: The position of this result in the results list.
///
/// This class is used in the [NewsResponse] to represent each news result returned by the API.
/// {@endtemplate}
@freezed
abstract class NewsResult with _$NewsResult {
  /// {@macro newsResultDocComments}
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
