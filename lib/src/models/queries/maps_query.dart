part of 'queries.dart';

/// Query object for the Serper Maps API.
@freezed
abstract class MapsQuery with _$MapsQuery {
  const factory MapsQuery({
    required String q,
    String? hl,
    String? ll,
    String? placeId,
    String? cid,
    int? page,
  }) = _MapsQuery;

  factory MapsQuery.fromJson(Map<String, dynamic> json) =>
      _$MapsQueryFromJson(json);
}
