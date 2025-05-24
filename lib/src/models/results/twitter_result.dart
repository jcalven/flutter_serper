part of 'results.dart';

/// Twitter result.
@freezed
class TwitterResult with _$TwitterResult {
  const factory TwitterResult({
    String? title,
    required String link,
    String? snippet,
  }) = _TwitterResult;

  factory TwitterResult.fromJson(Map<String, dynamic> json) =>
      _$TwitterResultFromJson(json);
}
