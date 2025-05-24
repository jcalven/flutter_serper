part of 'queries.dart';

/// Query object for the Serper News API.
@freezed
abstract class NewsQuery with _$NewsQuery {
  const factory NewsQuery({
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
  }) = _NewsQuery;

  factory NewsQuery.fromJson(Map<String, dynamic> json) =>
      _$NewsQueryFromJson(json);
}
