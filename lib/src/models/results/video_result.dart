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
    required String snippet,

    /// {@macro flutter_serper.results.date}
    required String date,

    /// {@macro flutter_serper.results.source}
    required String source,

    /// {@macro flutter_serper.results.imageUrl}
    String? imageUrl,

    /// {@macro flutter_serper.results.position}
    required int position,

    /// The duration of the video.
    ///
    /// Typically formatted as "MM:SS" or "HH:MM:SS".
    String? duration,
  }) = _VideoResult;

  /// Creates a [VideoResult] from a JSON map.
  factory VideoResult.fromJson(Map<String, dynamic> json) =>
      _$VideoResultFromJson(json);
}
