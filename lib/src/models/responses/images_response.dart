part of 'responses.dart';

/// {@template imagesResponseDocComments}
///
/// An immutable response object for the Serper Images API, describing the API response
/// by holding the [searchParameters], [images], and [credits] fields.
///
/// - [searchParameters]: The parameters used for the image search.
/// - [images]: List of image results returned by the API. Contains all the image results that match the search query.
/// - [credits]: The number of API credits consumed by this request.
///
/// This class is returned by Serper API methods that perform image search requests.
/// {@endtemplate}
@freezed
abstract class ImagesResponse extends SerperResponse<ImagesQuery>
    with _$ImagesResponse, ResponseUtilityMixin<ImagesQuery> {
  /// {@macro imagesResponseDocComments}
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
