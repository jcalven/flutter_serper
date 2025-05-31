part of 'results.dart';

/// Video result from the Serper Videos API.
@freezed
abstract class VideoResult with _$VideoResult {
  /// Creates a [VideoResult].
  const factory VideoResult({
    /// {@macro flutter_serper.results.title}
    required String title,

    /// {@macro flutter_serper.results.link}
    required String link,

    /// {@macro flutter_serper.results.snippet}
    String? snippet,

    /// {@macro flutter_serper.results.imageUrl}
    String? imageUrl,

    /// The direct video URL (may be a preview or thumbnail).
    String? videoUrl,

    /// {@macro flutter_serper.results.duration}
    String? duration,

    /// {@macro flutter_serper.results.source}
    ///
    /// For video results, this is typically the video platform or publisher.
    String? source,

    /// The channel or publisher name.
    String? channel,

    /// {@macro flutter_serper.results.date}
    String? date,

    /// {@macro flutter_serper.results.position}
    required int position,
  }) = _VideoResult;

  /// Creates a [VideoResult] from a JSON map.
  factory VideoResult.fromJson(Map<String, dynamic> json) =>
      _$VideoResultFromJson(json);
}
