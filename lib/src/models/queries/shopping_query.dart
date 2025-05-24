part of 'queries.dart';

/// Query object for the Serper Shopping API.
@freezed
abstract class ShoppingQuery with _$ShoppingQuery {
  const factory ShoppingQuery({
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
  }) = _ShoppingQuery;

  factory ShoppingQuery.fromJson(Map<String, dynamic> json) =>
      _$ShoppingQueryFromJson(json);
}
