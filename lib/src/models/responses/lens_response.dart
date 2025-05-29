part of 'responses.dart';

/// Response for the Serper Lens API.
@freezed
abstract class LensResponse extends SerperResponse<LensQuery>
    with _$LensResponse, ResponseUtilityMixin<LensQuery> {
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
