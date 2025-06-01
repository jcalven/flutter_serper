part of 'results.dart';

/// {@template videoResultDocComments}
///
/// An immutable result object representing a video result from the Serper Videos API.
///
/// - [title]: The title of the video.
/// - [link]: The direct link to the video.
/// - [snippet]: A brief excerpt or description of the video.
/// - [imageUrl]: The URL to the image associated with the video.
/// - [videoUrl]: The direct video URL (may be a preview or thumbnail).
/// - [duration]: The duration of the video.
/// - [source]: The video platform or publisher.
/// - [channel]: The channel or publisher name.
/// - [date]: The date of the video.
/// - [position]: The position of this result in the results list.
///
/// This class is used in the [VideosResponse] to represent each video result returned by the API.
/// {@endtemplate}
@freezed
abstract class VideoResult with _$VideoResult {
  /// {@macro videoResultDocComments}
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
