part of 'queries.dart';

/// Query object for the Serper Scholar API.
@freezed
abstract class ScholarQuery with _$ScholarQuery {
  const factory ScholarQuery({
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
  }) = _ScholarQuery;

  factory ScholarQuery.fromJson(Map<String, dynamic> json) =>
      _$ScholarQueryFromJson(json);
}
