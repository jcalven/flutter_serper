part of 'results.dart';

/// Video result from the Serper Videos API.
@freezed
abstract class VideoResult with _$VideoResult {
  /// Creates a [VideoResult].
  const factory VideoResult({
    /// {@macro ResultDocTemplates.titleDoc}
    required String title,

    /// {@macro ResultDocTemplates.linkDoc}
    required String link,

    /// {@macro ResultDocTemplates.snippetDoc}
    String? snippet,

    /// {@macro ResultDocTemplates.sourceDoc}
    ///
    /// For video results, this is typically the video platform or publisher.
    String? source,

    /// The URL to the channel that published the video.
    String? channelLink,

    /// {@macro ResultDocTemplates.dateDoc}
    ///
    /// For video results, this is typically the publication date.
    String? date,

    /// The duration or length of the video.
    ///
    /// Typically formatted as a time string (e.g., "10:30").
    String? duration,

    /// {@macro ResultDocTemplates.thumbnailUrlDoc}
    required String thumbnailUrl,

    /// The number of times the video has been viewed.
    int? viewCount,

    /// {@macro ResultDocTemplates.positionDoc}
    required int position,
  }) = _VideoResult;

  /// Creates a [VideoResult] from a JSON map.
  factory VideoResult.fromJson(Map<String, dynamic> json) =>
      _$VideoResultFromJson(json);
}
