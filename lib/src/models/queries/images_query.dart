part of 'queries.dart';

/// Query object for the Serper Images API.
@freezed
abstract class ImagesQuery with _$ImagesQuery {
  const factory ImagesQuery({
    /// {@macro QueryDocTemplates.queryStringDoc}
    required String q,

    /// {@macro QueryDocTemplates.locationDoc}
    String? location,

    /// {@macro QueryDocTemplates.glDoc}
    String? gl,

    /// {@macro QueryDocTemplates.hlDoc}
    String? hl,

    /// {@macro QueryDocTemplates.numDoc}
    int? num,

    /// {@macro QueryDocTemplates.autocorrectDoc}
    bool? autocorrect,

    /// {@macro QueryDocTemplates.tbsDoc}
    String? tbs,

    /// {@macro QueryDocTemplates.pageDoc}
    int? page,
  }) = _ImagesQuery;

  factory ImagesQuery.fromJson(Map<String, dynamic> json) =>
      _$ImagesQueryFromJson(json);
}
