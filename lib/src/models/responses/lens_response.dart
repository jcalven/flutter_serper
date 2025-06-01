part of 'responses.dart';

/// {@template lensResponseDocComments}
///
/// An immutable response object for the Serper Lens API, describing the API response
/// by holding the [searchParameters], [organic], and [credits] fields.
///
/// - [searchParameters]: The parameters used for the Lens search.
/// - [organic]: List of results related to the image that was searched.
/// - [credits]: The number of API credits consumed by this request.
///
/// This class is returned by Serper API methods that perform Lens search requests.
/// {@endtemplate}
@freezed
abstract class LensResponse extends SerperResponse<LensQuery>
    with _$LensResponse, ResponseUtilityMixin<LensQuery> {
  /// {@macro lensResponseDocComments}
  const LensResponse._();

  const factory LensResponse({
    /// {@macro flutter_serper.responses.searchParameters}
    required LensQuery searchParameters,

    /// {@macro flutter_serper.responses.organic}
    ///
    /// For Lens API, these are results related to the image that was searched.
    required List<LensResult> organic,

    /// {@macro flutter_serper.responses.credits}
    required int credits,
  }) = _LensResponse;

  factory LensResponse.fromJson(Map<String, dynamic> json) =>
      _$LensResponseFromJson(json);
}
