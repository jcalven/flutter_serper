part of 'queries.dart';

/// Query object for the Serper News API.
@freezed
class NewsQuery with _$NewsQuery {
  const factory NewsQuery({
    required String q,
    String? location,
    String? gl,
    String? hl,
    int? num,
    bool? autocorrect,
    String? tbs,
    int? page,
  }) = _NewsQuery;

  factory NewsQuery.fromJson(Map<String, dynamic> json) =>
      _$NewsQueryFromJson(json);
}
