part of 'responses.dart';

/// Response for the Serper Webpage API.
@freezed
abstract class WebpageResponse extends SerperResponse<WebpageQuery>
    with _$WebpageResponse {
  const WebpageResponse._();

  const factory WebpageResponse({
    /// {@macro ResponseDocTemplates.resultsDoc}
    ///
    /// For Webpage API, these are the extracted webpage content results.
    required List<WebpageResult> results,
    // Note: Webpage API has a different structure from other APIs
  }) = _WebpageResponse;

  factory WebpageResponse.fromJson(Map<String, dynamic> json) =>
      _$WebpageResponseFromJson(json);
}
