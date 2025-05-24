part of 'queries.dart';

/// Query object for the Serper Places API.
@freezed
abstract class PlacesQuery with _$PlacesQuery {
  const factory PlacesQuery({
    /// {@macro QueryDocTemplates.queryStringDoc}
    required String q,

    /// {@macro QueryDocTemplates.locationDoc}
    String? location,

    /// {@macro QueryDocTemplates.glDoc}
    String? gl,

    /// {@macro QueryDocTemplates.hlDoc}
    String? hl,

    /// {@macro QueryDocTemplates.autocorrectDoc}
    bool? autocorrect,

    /// {@macro QueryDocTemplates.tbsDoc}
    String? tbs,

    /// {@macro QueryDocTemplates.pageDoc}
    int? page,
  }) = _PlacesQuery;

  factory PlacesQuery.fromJson(Map<String, dynamic> json) =>
      _$PlacesQueryFromJson(json);
}
