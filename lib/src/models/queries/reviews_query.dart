part of 'queries.dart';

/// Query object for the Serper Reviews API.
@freezed
sealed class ReviewsQuery with _$ReviewsQuery {
  const factory ReviewsQuery.withCid({
    /// {@macro QueryDocTemplates.cidDoc}
    required String cid,

    /// {@macro QueryDocTemplates.countryCodeDoc}
    @JsonKey(name: 'gl') CountryCode? countryCode,

    /// {@macro QueryDocTemplates.languageCodeDoc}
    @JsonKey(name: 'hl') LanguageCode? languageCode,

    /// {@macro QueryDocTemplates.sortByDocEnum}
    SortByValue? sortBy,

    /// Optional topic ID to filter reviews by topic
    String? topicId,

    /// Optional token for pagination
    String? nextPageToken,

    /// {@macro QueryDocTemplates.queryStringDoc}
    String? q,
  }) = ReviewsQueryCid;

  /// Factory to create a ReviewsQuery (for CID) with string-based inputs.
  factory ReviewsQuery.withCidFromStrings({
    /// {@macro QueryDocTemplates.cidDoc}
    required String cid,

    /// {@macro QueryDocTemplates.glDoc}
    String? countryCode,

    /// {@macro QueryDocTemplates.hlDoc}
    String? languageCode,

    /// {@macro QueryDocTemplates.sortByDocString}
    String? sortBy,

    /// Optional topic ID to filter reviews by topic
    String? topicId,

    /// Optional token for pagination
    String? nextPageToken,

    /// {@macro QueryDocTemplates.queryStringDoc}
    String? q,
  }) {
    return ReviewsQuery.withCid(
      cid: cid,
      countryCode: CountryCode.tryParse(countryCode),
      languageCode: LanguageCode.tryParse(languageCode),
      sortBy: SortByValue.tryParse(sortBy),
      topicId: topicId,
      nextPageToken: nextPageToken,
      q: q,
    );
  }

  const factory ReviewsQuery.withFid({
    /// {@macro QueryDocTemplates.fidDoc}
    required String fid,

    /// {@macro QueryDocTemplates.countryCodeDoc}
    @JsonKey(name: 'gl') CountryCode? countryCode,

    /// {@macro QueryDocTemplates.languageCodeDoc}
    @JsonKey(name: 'hl') LanguageCode? languageCode,

    /// {@macro QueryDocTemplates.sortByDocEnum}
    SortByValue? sortBy,

    /// Optional topic ID to filter reviews by topic
    String? topicId,

    /// Optional token for pagination
    String? nextPageToken,

    /// {@macro QueryDocTemplates.queryStringDoc}
    String? q,
  }) = ReviewsQueryFid;

  /// Factory to create a ReviewsQuery (for FID) with string-based inputs.
  factory ReviewsQuery.withFidFromStrings({
    /// {@macro QueryDocTemplates.fidDoc}
    required String fid,

    /// {@macro QueryDocTemplates.glDoc}
    String? countryCode,

    /// {@macro QueryDocTemplates.hlDoc}
    String? languageCode,

    /// {@macro QueryDocTemplates.sortByDocString}
    String? sortBy,

    /// Optional topic ID to filter reviews by topic
    String? topicId,

    /// Optional token for pagination
    String? nextPageToken,

    /// {@macro QueryDocTemplates.queryStringDoc}
    String? q,
  }) {
    return ReviewsQuery.withFid(
      fid: fid,
      countryCode: CountryCode.tryParse(countryCode),
      languageCode: LanguageCode.tryParse(languageCode),
      sortBy: SortByValue.tryParse(sortBy),
      topicId: topicId,
      nextPageToken: nextPageToken,
      q: q,
    );
  }

  const factory ReviewsQuery.withPlaceId({
    /// {@macro QueryDocTemplates.placeIdDoc}
    required String placeId,

    /// {@macro QueryDocTemplates.countryCodeDoc}
    @JsonKey(name: 'gl') CountryCode? countryCode,

    /// {@macro QueryDocTemplates.languageCodeDoc}
    @JsonKey(name: 'hl') LanguageCode? languageCode,

    /// {@macro QueryDocTemplates.sortByDocEnum}
    SortByValue? sortBy,

    /// Optional topic ID to filter reviews by topic
    String? topicId,

    /// Optional token for pagination
    String? nextPageToken,

    /// {@macro QueryDocTemplates.queryStringDoc}
    String? q,
  }) = ReviewsQueryPlaceId;

  /// Factory to create a ReviewsQuery (for Place ID) with string-based inputs.
  factory ReviewsQuery.withPlaceIdFromStrings({
    /// {@macro QueryDocTemplates.placeIdDoc}
    required String placeId,

    /// {@macro QueryDocTemplates.glDoc}
    String? countryCode,

    /// {@macro QueryDocTemplates.hlDoc}
    String? languageCode,

    /// {@macro QueryDocTemplates.sortByDocString}
    String? sortBy,

    /// Optional topic ID to filter reviews by topic
    String? topicId,

    /// Optional token for pagination
    String? nextPageToken,

    /// {@macro QueryDocTemplates.queryStringDoc}
    String? q,
  }) {
    return ReviewsQuery.withPlaceId(
      placeId: placeId,
      countryCode: CountryCode.tryParse(countryCode),
      languageCode: LanguageCode.tryParse(languageCode),
      sortBy: SortByValue.tryParse(sortBy),
      topicId: topicId,
      nextPageToken: nextPageToken,
      q: q,
    );
  }

  factory ReviewsQuery.fromJson(Map<String, dynamic> json) =>
      _$ReviewsQueryFromJson(json);
}
