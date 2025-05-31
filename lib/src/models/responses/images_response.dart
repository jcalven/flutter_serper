part of 'responses.dart';

/// Response for the Serper Images API.
@freezed
abstract class ImagesResponse extends SerperResponse<ImagesQuery>
    with _$ImagesResponse, ResponseUtilityMixin<ImagesQuery> {
  const ImagesResponse._();

  const factory ImagesResponse({
    /// {@macro flutter_serper.responses.searchParameters}
    required ImagesQuery searchParameters,

    /// List of image results returned by the API
    ///
    /// Contains all the image results that match the search query.
    required List<ImageResult> images,

    /// {@macro flutter_serper.responses.credits}
    required int credits,
  }) = _ImagesResponse;

  factory ImagesResponse.fromJson(Map<String, dynamic> json) =>
      _$ImagesResponseFromJson(json);
}
