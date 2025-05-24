part of 'results.dart';

/// {@template webpage_result}
/// Represents a single result in a Serper Webpage API response.
/// {@endtemplate}
@freezed
abstract class WebpageResult with _$WebpageResult {
  const factory WebpageResult({
    required String text,
    String? markdown,
    Map<String, dynamic>? metadata,
    required int credits,
  }) = _WebpageResult;

  factory WebpageResult.fromJson(Map<String, dynamic> json) =>
      _$WebpageResultFromJson(json);
}
