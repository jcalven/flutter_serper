part of 'results.dart';

/// Sitelink for an organic search result.
@freezed
abstract class OrganicSitelink with _$OrganicSitelink {
  /// Creates an [OrganicSitelink].
  const factory OrganicSitelink({
    /// The title of the sitelink.
    required String title,

    /// The URL link to the sitelink.
    required String link,
  }) = _OrganicSitelink;

  /// Creates an [OrganicSitelink] from a JSON map.
  factory OrganicSitelink.fromJson(Map<String, dynamic> json) =>
      _$OrganicSitelinkFromJson(json);
}
