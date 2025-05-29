part of 'responses.dart';

/// Response for the Serper Webpage API.
@freezed
abstract class WebpageResponse extends SerperResponse<WebpageQuery>
    with _$WebpageResponse, ResponseUtilityMixin<WebpageQuery> {
  const WebpageResponse._();

  const factory WebpageResponse({
    /// List of webpage content results returned by the API
    ///
    /// Contains webpages that match the search query.
    required List<WebpageResult> results,
  }) = _WebpageResponse;

  factory WebpageResponse.fromJson(Map<String, dynamic> json) =>
      _$WebpageResponseFromJson(json);
}
