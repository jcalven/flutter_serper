part of 'queries.dart';

/// Query object for the Serper Search API.
@freezed
abstract class SearchQuery with _$SearchQuery {
  const factory SearchQuery({
    required String q,
    String? location,
    String? gl,
    String? hl,
    int? num,
    bool? autocorrect,
    String? tbs,
    int? page,
  }) = _SearchQuery;

  factory SearchQuery.fromJson(Map<String, dynamic> json) =>
      _$SearchQueryFromJson(json);
}
