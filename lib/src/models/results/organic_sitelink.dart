part of 'results.dart';

/// {@template organicSitelinkDocComments}
///
/// An immutable result object representing a sitelink for an organic search result.
///
/// - [title]: The title of the sitelink.
/// - [link]: The URL link to the sitelink.
///
/// This class is used in [OrganicResult] to represent additional links related to the main result.
/// {@endtemplate}
@freezed
abstract class OrganicSitelink with _$OrganicSitelink {
  /// {@macro organicSitelinkDocComments}
  /// Creates an [OrganicSitelink].
  const factory OrganicSitelink({
    /// The title of the sitelink.
    String? title,

    /// The URL link to the sitelink.
    String? link,
  }) = _OrganicSitelink;

  /// Creates an [OrganicSitelink] from a JSON map.
  factory OrganicSitelink.fromJson(Map<String, dynamic> json) =>
      _$OrganicSitelinkFromJson(json);
}
