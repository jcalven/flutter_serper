part of 'responses.dart';

/// {@template webpage_response}
/// Represents a response from the Serper Webpage API.
/// {@endtemplate}
@freezed
abstract class WebpageResponse with _$WebpageResponse {
  const factory WebpageResponse({
    required List<WebpageResult> results,
    // Note: Webpage API has a different structure from other APIs
  }) = _WebpageResponse;

  factory WebpageResponse.fromJson(Map<String, dynamic> json) =>
      _$WebpageResponseFromJson(json);
}
