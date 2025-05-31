part of 'responses.dart';

/// Response for the Serper Places API.
@freezed
abstract class PlacesResponse extends SerperResponse<PlacesQuery>
    with _$PlacesResponse, ResponseUtilityMixin<PlacesQuery> {
  const PlacesResponse._();

  const factory PlacesResponse({
    /// {@macro flutter_serper.responses.searchParameters}
    required PlacesQuery searchParameters,

    /// List of place results returned by the API
    ///
    /// Contains places that match the search query.
    required List<PlaceResult> places,

    /// {@macro flutter_serper.responses.credits}
    required int credits,
  }) = _PlacesResponse;

  factory PlacesResponse.fromJson(Map<String, dynamic> json) =>
      _$PlacesResponseFromJson(json);
}
