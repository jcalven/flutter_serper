import 'package:freezed_annotation/freezed_annotation.dart';
part 'queries.freezed.dart';
part 'queries.g.dart';

/// Query object for the Serper Search API.
@freezed
class SearchQuery with _$SearchQuery {
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

/// Query object for the Serper Places API.
@freezed
class PlacesQuery with _$PlacesQuery {
  const factory PlacesQuery({
    required String q,
    String? location,
    String? gl,
    String? hl,
    bool? autocorrect,
    String? tbs,
    int? page,
  }) = _PlacesQuery;

  factory PlacesQuery.fromJson(Map<String, dynamic> json) =>
      _$PlacesQueryFromJson(json);
}

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

/// Query object for the Serper Maps API.
@freezed
class MapsQuery with _$MapsQuery {
  const factory MapsQuery({
    required String q,
    String? hl,
    String? ll,
    String? placeId,
    String? cid,
    int? page,
  }) = _MapsQuery;

  factory MapsQuery.fromJson(Map<String, dynamic> json) =>
      _$MapsQueryFromJson(json);
}

/// Query object for the Serper Reviews API.
@freezed
class ReviewsQuery with _$ReviewsQuery {
  const factory ReviewsQuery({
    required String cid,
    required String fid,
    required String placeId,
    String? gl,
    String? hl,
    String? sortBy,
    String? topicId,
    String? nextPageToken,
    String? q,
  }) = _ReviewsQuery;

  factory ReviewsQuery.fromJson(Map<String, dynamic> json) =>
      _$ReviewsQueryFromJson(json);
}

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

/// Query object for the Serper Shopping API.
@freezed
class ShoppingQuery with _$ShoppingQuery {
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

/// Query object for the Serper Lens (Image Search) API.
@freezed
class LensQuery with _$LensQuery {
  const factory LensQuery({
    required String url,
    String? location,
    String? gl,
    String? hl,
    String? tbs,
    String? q,
  }) = _LensQuery;

  factory LensQuery.fromJson(Map<String, dynamic> json) =>
      _$LensQueryFromJson(json);
}

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

/// Query object for the Serper Autocomplete API.
@freezed
class AutocompleteQuery with _$AutocompleteQuery {
  const factory AutocompleteQuery({
    required String q,
    String? location,
    String? gl,
    String? hl,
  }) = _AutocompleteQuery;

  factory AutocompleteQuery.fromJson(Map<String, dynamic> json) =>
      _$AutocompleteQueryFromJson(json);
}

/// Query object for the Serper Webpage API (scraping).
@freezed
class WebpageQuery with _$WebpageQuery {
  const factory WebpageQuery({
    required String url,
    bool? includeMarkdown,
    String? q,
  }) = _WebpageQuery;

  factory WebpageQuery.fromJson(Map<String, dynamic> json) =>
      _$WebpageQueryFromJson(json);
}
