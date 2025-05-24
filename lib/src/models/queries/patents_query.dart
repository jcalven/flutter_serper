part of 'queries.dart';

/// Query object for the Serper Patents API.
@freezed
abstract class PatentsQuery with _$PatentsQuery {
  const factory PatentsQuery({
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
  }) = _PatentsQuery;

  factory PatentsQuery.fromJson(Map<String, dynamic> json) =>
      _$PatentsQueryFromJson(json);
}
