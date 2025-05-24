part of 'queries.dart';

/// Query object for the Serper Maps API.
@freezed
abstract class MapsQuery with _$MapsQuery {
  const factory MapsQuery({
    /// {@macro QueryDocTemplates.queryStringDoc}
    required String q,

    /// {@macro QueryDocTemplates.hlDoc}
    String? hl,

    /// Optional latitude and longitude parameter
    ///
    /// Format: "latitude,longitude"
    String? ll,

    /// Optional Google Maps place ID parameter
    String? placeId,

    /// Optional Google Maps CID parameter
    String? cid,

    /// {@macro QueryDocTemplates.pageDoc}
    int? page,
  }) = _MapsQuery;

  factory MapsQuery.fromJson(Map<String, dynamic> json) =>
      _$MapsQueryFromJson(json);
}
