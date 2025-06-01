part of 'responses.dart';

/// {@template mapsResponseDocComments}
///
/// An immutable response object for the Serper Maps API, describing the API response
/// by holding the [searchParameters], [latLng], [places], and [credits] fields.
///
/// - [searchParameters]: The parameters used for the maps search.
/// - [latLng]: The latitude and longitude coordinates returned by the Maps API. Contains the location coordinates in the format "@lat,lng,zoom".
/// - [places]: List of places returned by the Maps API. Contains basic place information including position and place ID.
/// - [credits]: The number of API credits consumed by this request.
///
/// This class is returned by Serper API methods that perform maps search requests.
/// {@endtemplate}
@freezed
abstract class MapsResponse extends SerperResponse<MapsQuery>
    with _$MapsResponse, ResponseUtilityMixin<MapsQuery> {
  /// {@macro mapsResponseDocComments}
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
