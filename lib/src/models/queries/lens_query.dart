part of 'queries.dart';

/// Query object for the Serper Lens (Image Search) API.
@freezed
abstract class LensQuery with _$LensQuery {
  const factory LensQuery({
    required String url,
    String? location,
    String? gl,
    String? hl,
    String? tbs,
    String? q,
  }) = _LensQuery;

  factory LensQuery.fromJson(Map<String, dynamic> json) =>
      _$LensQueryFromJson(json);
}
