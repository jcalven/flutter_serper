part of 'results.dart';

/// Video result.
@freezed
abstract class VideoResult with _$VideoResult {
  const factory VideoResult({
    required String title,
    required String link,
    String? snippet,
    String? source,
    String? channelLink,
    String? date,
    String? duration,
    required String thumbnailUrl,
    int? viewCount,
    required int position,
  }) = _VideoResult;

  factory VideoResult.fromJson(Map<String, dynamic> json) =>
      _$VideoResultFromJson(json);
}
