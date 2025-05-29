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

    /// {@macro flutter_serper.results.date}
    String? date,

    /// {@macro flutter_serper.results.source}
    ///
    /// For video results, this is typically the video platform or publisher.
    String? source,

    /// The URL to the channel that published the video.
    String? channelLink,

    // /// {@macro flutter_serper.results.imageUrl}
    // String? imageUrl,

    /// {@macro flutter_serper.results.position}
    required int position,

    /// The duration of the video.
    ///
    /// Typically formatted as "MM:SS" or "HH:MM:SS".
    String? duration,

    /// {@macro ResultDocTemplates.thumbnailUrlDoc}
    required String thumbnailUrl,

    /// The number of times the video has been viewed.
    int? viewCount,
  }) = _VideoResult;

  /// Creates a [VideoResult] from a JSON map.
  factory VideoResult.fromJson(Map<String, dynamic> json) =>
      _$VideoResultFromJson(json);
}
