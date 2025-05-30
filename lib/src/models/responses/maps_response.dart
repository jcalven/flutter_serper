part of 'responses.dart';

/// Response for the Serper Maps API.
@freezed
abstract class MapsResponse extends SerperResponse<MapsQuery>
    with _$MapsResponse, ResponseUtilityMixin<MapsQuery> {
  const MapsResponse._();

  const factory MapsResponse({
    /// {@macro flutter_serper.responses.searchParameters}
    required MapsQuery searchParameters,

    /// The latitude and longitude coordinates returned by the Maps API
    ///
    /// Contains the location coordinates in the format "@lat,lng,zoom"
    @JsonKey(name: 'll') @LatLngConverter() LatLng? latLng,

    /// List of places returned by the Maps API
    ///
    /// Contains basic place information including position and place ID.
    required List<MapResult> places,

    /// {@macro flutter_serper.responses.credits}
    required int credits,
  }) = _MapsResponse;

  factory MapsResponse.fromJson(Map<String, dynamic> json) =>
      _$MapsResponseFromJson(json);
}
