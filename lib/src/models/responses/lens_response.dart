part of 'responses.dart';

/// Response for the Serper Lens API.
@freezed
abstract class LensResponse extends SerperResponse<LensQuery>
    with _$LensResponse, ResponseUtilityMixin<LensQuery> {
  const LensResponse._();

  const factory LensResponse({
    /// {@macro ResponseDocTemplates.searchParametersDoc}
    required LensQuery searchParameters,

    /// {@macro ResponseDocTemplates.organicDoc}
    ///
    /// For Lens API, these are results related to the image that was searched.
    required List<LensResult> organic,

    /// {@macro ResponseDocTemplates.creditsDoc}
    required int credits,
  }) = _LensResponse;

  factory LensResponse.fromJson(Map<String, dynamic> json) =>
      _$LensResponseFromJson(json);
}
