part of 'queries.dart';

/// Query object for the Serper Scholar API.
@freezed
class ScholarQuery with _$ScholarQuery {
  const factory ScholarQuery({
    required String q,
    String? location,
    String? gl,
    String? hl,
    bool? autocorrect,
    String? tbs,
    int? page,
  }) = _ScholarQuery;

  factory ScholarQuery.fromJson(Map<String, dynamic> json) =>
      _$ScholarQueryFromJson(json);
}
