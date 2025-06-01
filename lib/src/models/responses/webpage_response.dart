part of 'responses.dart';

/// {@template webpageResponseDocComments}
///
/// An immutable response object for the Serper Webpage API, describing the API response
/// by holding the [results] field.
///
/// - [results]: List of webpage content results returned by the API. Contains webpages that match the search query.
///
/// This class is returned by Serper API methods that perform webpage scraping requests.
/// {@endtemplate}
@Freezed(fromJson: true, toJson: true)
abstract class WebpageResponse extends SerperResponse<WebpageQuery>
    with _$WebpageResponse {
  /// {@macro webpageResponseDocComments}
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
