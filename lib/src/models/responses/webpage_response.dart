part of 'responses.dart';

/// Response for the Serper Webpage API.
@Freezed(fromJson: true, toJson: true)
abstract class WebpageResponse extends SerperResponse<WebpageQuery>
    with _$WebpageResponse {
  const WebpageResponse._();

  const factory WebpageResponse({
    /// List of webpage content results returned by the API
    ///
    /// Contains webpages that match the search query.
    required WebpageResult results,
  }) = _WebpageResponse;

  factory WebpageResponse.fromJson(Map<String, dynamic> json) {
    final newJson = {'results': json};
    return _$WebpageResponseFromJson(newJson);
  }
}
