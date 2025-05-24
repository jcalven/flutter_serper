part of 'queries.dart';

/// Query object for the Serper Shopping API.
@freezed
abstract class ShoppingQuery with _$ShoppingQuery {
  const factory ShoppingQuery({
    required String q,
    String? location,
    String? gl,
    String? hl,
    bool? autocorrect,
    String? tbs,
    int? page,
  }) = _ShoppingQuery;

  factory ShoppingQuery.fromJson(Map<String, dynamic> json) =>
      _$ShoppingQueryFromJson(json);
}
