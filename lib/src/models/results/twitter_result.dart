part of 'results.dart';

/// Twitter result from the Serper Search API.
///
/// These are Twitter posts (tweets) that are relevant to the search query.
@freezed
abstract class TwitterResult with _$TwitterResult {
  /// Creates a [TwitterResult].
  const factory TwitterResult({
    /// {@macro flutter_serper.results.title}
    ///
    /// For Twitter results, this is typically the username or post title.
    required String title,

    /// {@macro flutter_serper.results.link}
    ///
    /// For Twitter results, this is the URL to the specific tweet.
    required String link,

    /// {@macro flutter_serper.results.snippet}
    ///
    /// For Twitter results, this is typically the text content of the tweet.
    required String snippet,

    // /// {@macro flutter_serper.results.date}
    // required String date,
  }) = _TwitterResult;

  /// Creates a [TwitterResult] from a JSON map.
  factory TwitterResult.fromJson(Map<String, dynamic> json) =>
      _$TwitterResultFromJson(json);
}
