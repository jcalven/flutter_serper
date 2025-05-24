part of 'queries.dart';

/// Query object for the Serper Lens (Image Search) API.
@freezed
abstract class LensQuery with _$LensQuery {
  const factory LensQuery({
    /// {@macro QueryDocTemplates.urlDoc}
    required String url,

    /// {@macro QueryDocTemplates.locationDoc}
    String? location,

    /// {@macro QueryDocTemplates.glDoc}
    String? gl,

    /// {@macro QueryDocTemplates.hlDoc}
    String? hl,

    /// {@macro QueryDocTemplates.tbsDoc}
    String? tbs,

    /// Optional query string to refine the image search
    String? q,
  }) = _LensQuery;

  factory LensQuery.fromJson(Map<String, dynamic> json) =>
      _$LensQueryFromJson(json);
}
