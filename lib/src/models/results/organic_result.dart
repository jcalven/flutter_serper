part of 'results.dart';

/// Organic search result from the Serper Search API.
///
/// These are the main search results that match the query criteria,
/// similar to the standard results you would see in a search engine.
@freezed
abstract class OrganicResult with _$OrganicResult {
  /// Creates an [OrganicResult].
  const factory OrganicResult({
    /// {@template flutter_serper.results.title}
    /// The title of the result.
    ///
    /// This is typically the main heading or name associated with the search result.
    /// {@endtemplate}
    required String title,

    /// {@template flutter_serper.results.link}
    /// The URL link to the result.
    ///
    /// This URL can be used to navigate to the full content of the search result.
    /// {@endtemplate}
    required String link,

    /// {@template flutter_serper.results.snippet}
    /// A brief excerpt or description of the result.
    ///
    /// This provides a summary of the content to help users understand what the result contains.
    /// {@endtemplate}
    required String snippet,

    /// {@template flutter_serper.results.date}
    /// The date associated with the result.
    ///
    /// This could be a publication date, review date, or other relevant date information.
    /// {@endtemplate}
    String? date,

    /// {@template flutter_serper.results.rating}
    /// The rating associated with the result.
    ///
    /// Typically represented as a number (often between 0-5) indicating user satisfaction or quality.
    /// {@endtemplate}
    double? rating,

    /// The count of ratings for this result.
    ///
    /// Represents the number of user ratings that contributed to the overall rating.
    int? ratingCount,

    /// {@template flutter_serper.results.imageUrl}
    /// The URL to the full-size image.
    ///
    /// This URL can be used to display or download the full-size image.
    /// {@endtemplate}
    String? imageUrl,

    /// {@template flutter_serper.results.position}
    /// The position of this result in the search results list.
    ///
    /// Position is zero-based, with 0 being the first result.
    /// {@endtemplate}
    required int position,

    /// Additional links to specific sections within the result website.
    ///
    /// These are subcategory links that provide direct access to different
    /// sections of the website.
    List<OrganicSitelink>? sitelinks,
  }) = _OrganicResult;

  /// Creates an [OrganicResult] from a JSON map.
  factory OrganicResult.fromJson(Map<String, dynamic> json) =>
      _$OrganicResultFromJson(json);
}
