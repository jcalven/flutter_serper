part of 'results.dart';

/// Twitter result from the Serper Search API.
///
/// These are Twitter posts (tweets) that are relevant to the search query.
@freezed
abstract class TwitterResult with _$TwitterResult {
  /// Creates a [TwitterResult].
  const factory TwitterResult({
    /// {@macro ResultDocTemplates.titleDoc}
    ///
    /// For Twitter results, this is typically the username or post title.
    String? title,

    /// {@macro ResultDocTemplates.linkDoc}
    ///
    /// For Twitter results, this is the URL to the specific tweet.
    required String link,

    /// {@macro ResultDocTemplates.snippetDoc}
    ///
    /// For Twitter results, this is typically the text content of the tweet.
    String? snippet,
  }) = _TwitterResult;

  /// Creates a [TwitterResult] from a JSON map.
  factory TwitterResult.fromJson(Map<String, dynamic> json) =>
      _$TwitterResultFromJson(json);
}
