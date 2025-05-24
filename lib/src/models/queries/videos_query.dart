part of 'queries.dart';

/// Query object for the Serper Videos API.
@freezed
abstract class VideosQuery with _$VideosQuery {
  const factory VideosQuery({
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
  }) = _VideosQuery;

  factory VideosQuery.fromJson(Map<String, dynamic> json) =>
      _$VideosQueryFromJson(json);
}
