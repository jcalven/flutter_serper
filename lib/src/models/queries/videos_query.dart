part of 'queries.dart';

/// Query object for the Serper Videos API.
@freezed
class VideosQuery with _$VideosQuery {
  const factory VideosQuery({
    required String q,
    String? location,
    String? gl,
    String? hl,
    int? num,
    bool? autocorrect,
    String? tbs,
    int? page,
  }) = _VideosQuery;

  factory VideosQuery.fromJson(Map<String, dynamic> json) =>
      _$VideosQueryFromJson(json);
}
