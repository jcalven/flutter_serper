part of 'responses.dart';

/// Response for the Serper Places API.
@freezed
class PlacesResponse with _$PlacesResponse, SerperResponseMixin<PlacesQuery> {
  const factory PlacesResponse({
    required PlacesQuery searchParameters,
    required List<PlaceResult> places,
    KnowledgeGraphResult? knowledgeGraph,
    required int credits,
  }) = _PlacesResponse;

  factory PlacesResponse.fromJson(Map<String, dynamic> json) =>
      _$PlacesResponseFromJson(json);
}
