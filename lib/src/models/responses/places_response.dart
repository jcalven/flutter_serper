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
    /// {@macro ResponseDocTemplates.searchParametersDoc}
    required PlacesQuery searchParameters,

    /// List of place results returned by the API
    ///
    /// Contains places that match the search query.
    required List<PlaceResult> places,

    /// {@macro ResponseDocTemplates.knowledgeGraphDoc}
    KnowledgeGraphResult? knowledgeGraph,

    /// {@macro ResponseDocTemplates.creditsDoc}
    required int credits,
  }) = _PlacesResponse;

  factory PlacesResponse.fromJson(Map<String, dynamic> json) =>
      _$PlacesResponseFromJson(json);
}
