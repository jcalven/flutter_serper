part of 'queries.dart';

/// Query object for the Serper Places API.
@freezed
abstract class PlacesQuery with _$PlacesQuery {
  const factory PlacesQuery({
    required String q,
    String? location,
    String? gl,
    String? hl,
    bool? autocorrect,
    String? tbs,
    int? page,
  }) = _PlacesQuery;

  factory PlacesQuery.fromJson(Map<String, dynamic> json) =>
      _$PlacesQueryFromJson(json);
}
