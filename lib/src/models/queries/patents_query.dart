part of 'queries.dart';

/// Query object for the Serper Patents API.
@freezed
class PatentsQuery with _$PatentsQuery {
  const factory PatentsQuery({
    required String q,
    String? location,
    String? gl,
    String? hl,
    int? num,
    bool? autocorrect,
    String? tbs,
    int? page,
  }) = _PatentsQuery;

  factory PatentsQuery.fromJson(Map<String, dynamic> json) =>
      _$PatentsQueryFromJson(json);
}
