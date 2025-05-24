part of 'queries.dart';

/// Query object for the Serper Images API.
@freezed
class ImagesQuery with _$ImagesQuery {
  const factory ImagesQuery({
    required String q,
    String? location,
    String? gl,
    String? hl,
    int? num,
    bool? autocorrect,
    String? tbs,
    int? page,
  }) = _ImagesQuery;

  factory ImagesQuery.fromJson(Map<String, dynamic> json) =>
      _$ImagesQueryFromJson(json);
}
