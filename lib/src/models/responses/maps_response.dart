part of 'responses.dart';

/// Response for the Serper Maps API.
@freezed
abstract class MapsResponse extends SerperResponse<MapsQuery>
    with _$MapsResponse, ResponseUtilityMixin<MapsQuery> {
  const MapsResponse._(
    //   {
    //   required super.searchParameters,
    //   required super.credits,
    // }
  );

  const factory MapsResponse({
    /// {@macro ResponseDocTemplates.searchParametersDoc}
    required MapsQuery searchParameters,

    /// The place details returned by the Maps API
    ///
    /// Contains detailed information about a specific place.
    required MapResult place,

    /// {@macro ResponseDocTemplates.creditsDoc}
    required int credits,
  }) = _MapsResponse;

  factory MapsResponse.fromJson(Map<String, dynamic> json) =>
      _$MapsResponseFromJson(json);
}
