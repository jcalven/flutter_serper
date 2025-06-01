part of 'responses.dart';

/// {@template placesResponseDocComments}
///
/// An immutable response object for the Serper Places API, describing the API response
/// by holding the [searchParameters], [places], and [credits] fields.
///
/// - [searchParameters]: The parameters used for the places search.
/// - [places]: List of place results returned by the API. Contains places that match the search query.
/// - [credits]: The number of API credits consumed by this request.
///
/// This class is returned by Serper API methods that perform places search requests.
/// {@endtemplate}
@freezed
abstract class PlacesResponse extends SerperResponse<PlacesQuery>
    with _$PlacesResponse, ResponseUtilityMixin<PlacesQuery> {
  /// {@macro placesResponseDocComments}
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
