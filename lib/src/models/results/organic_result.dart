part of 'results.dart';

/// Organic search result from the Serper Search API.
///
/// These are the main search results that match the query criteria,
/// similar to the standard results you would see in a search engine.
@freezed
abstract class OrganicResult with _$OrganicResult {
  /// Creates an [OrganicResult].
  const factory OrganicResult({
    /// {@macro ResultDocTemplates.titleDoc}
    required String title,

    /// {@macro ResultDocTemplates.linkDoc}
    required String link,

    /// {@macro ResultDocTemplates.snippetDoc}
    required String snippet,

    /// {@macro ResultDocTemplates.dateDoc}
    String? date,

    /// {@macro ResultDocTemplates.ratingDoc}
    double? rating,

    /// The count of ratings for this result.
    ///
    /// Represents the number of user ratings that contributed to the overall rating.
    int? ratingCount,

    /// {@macro ResultDocTemplates.imageUrlDoc}
    String? imageUrl,

    /// {@macro ResultDocTemplates.positionDoc}
    required int position,

    /// Additional links to specific sections within the result website.
    ///
    /// These are subcategory links that provide direct access to different
    /// sections of the website.
    dynamic sitelinks,
  }) = _OrganicResult;

  /// Creates an [OrganicResult] from a JSON map.
  factory OrganicResult.fromJson(Map<String, dynamic> json) =>
      _$OrganicResultFromJson(json);
}
