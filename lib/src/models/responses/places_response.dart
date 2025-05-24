part of 'responses.dart';

/// Response for the Serper Places API.
@freezed
abstract class PlacesResponse extends SerperResponse<PlacesQuery>
    with _$PlacesResponse {
  const PlacesResponse._({
    required super.searchParameters,
    required super.credits,
  });
  const factory PlacesResponse({
    required PlacesQuery searchParameters,
    required List<PlaceResult> places,
    KnowledgeGraphResult? knowledgeGraph,
    required int credits,
  }) = _PlacesResponse;

  factory PlacesResponse.fromJson(Map<String, dynamic> json) =>
      _$PlacesResponseFromJson(json);
}
