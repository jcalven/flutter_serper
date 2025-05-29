part of 'queries.dart';

/// Query object for the Serper Reviews API.
@freezed
sealed class ReviewsQuery with _$ReviewsQuery {
  const factory ReviewsQuery.withCid({
    /// {@macro flutter_serper.queries.cid}
    required String cid,

    /// {@macro flutter_serper.queries.countryCodeEnum}
    @JsonKey(name: 'gl') CountryCode? countryCode,

    /// {@macro flutter_serper.queries.languageCodeEnum}
    @JsonKey(name: 'hl') LanguageCode? languageCode,

    /// {@template flutter_serper.queries.sortByEnum}
    /// Optional parameter to sort results, as a [SortByValue] enum.
    ///
    /// Serialized to the 'sortBy' parameter for the API.
    /// {@endtemplate}
    SortByValue? sortBy,

    /// Optional topic ID to filter reviews by topic
    String? topicId,

    /// Optional token for pagination
    String? nextPageToken,

    /// {@macro flutter_serper.queries.queryString}
    @JsonKey(name: 'q') String? query,
  }) = ReviewsQueryCid;

  /// Factory to create a ReviewsQuery (for CID) with string-based inputs.
  factory ReviewsQuery.withCidFromStrings({
    /// {@macro flutter_serper.queries.cid}
    required String cid,

    /// {@macro flutter_serper.queries.countryCodeString}
    String? countryCode,

    /// {@macro flutter_serper.queries.languageCodeString}
    String? languageCode,

    /// {@template flutter_serper.queries.sortByString}
    /// Optional parameter to sort results, as a string.
    ///
    /// Parsed to [SortByValue].
    /// {@endtemplate}
    String? sortBy,

    /// Optional topic ID to filter reviews by topic
    String? topicId,

    /// Optional token for pagination
    String? nextPageToken,

    /// {@macro flutter_serper.queries.queryString}
    @JsonKey(name: 'q') String? query,
  }) {
    return ReviewsQuery.withCid(
      cid: cid,
      countryCode: CountryCode.tryParse(countryCode),
      languageCode: LanguageCode.tryParse(languageCode),
      sortBy: SortByValue.tryParse(sortBy),
      topicId: topicId,
      nextPageToken: nextPageToken,
      query: query,
    );
  }

  const factory ReviewsQuery.withFid({
    /// {@template flutter_serper.queries.fid}
    /// Optional Google Feature ID.
    ///
    /// This can be used to identify a specific feature for the search.
    /// {@endtemplate}
    required String fid,

    /// {@macro flutter_serper.queries.countryCodeEnum}
    @JsonKey(name: 'gl') CountryCode? countryCode,

    /// {@macro flutter_serper.queries.languageCodeEnum}
    @JsonKey(name: 'hl') LanguageCode? languageCode,

    /// {@macro flutter_serper.queries.sortByEnum}
    SortByValue? sortBy,

    /// Optional topic ID to filter reviews by topic
    String? topicId,

    /// Optional token for pagination
    String? nextPageToken,

    /// {@macro flutter_serper.queries.queryString}
    @JsonKey(name: 'q') String? query,
  }) = ReviewsQueryFid;

  /// Factory to create a ReviewsQuery (for FID) with string-based inputs.
  factory ReviewsQuery.withFidFromStrings({
    /// {@macro flutter_serper.queries.fid}
    required String fid,

    /// {@macro flutter_serper.queries.countryCodeString}
    String? countryCode,

    /// {@macro flutter_serper.queries.languageCodeString}
    String? languageCode,

    /// {@macro flutter_serper.queries.sortByString}
    String? sortBy,

    /// Optional topic ID to filter reviews by topic
    String? topicId,

    /// Optional token for pagination
    String? nextPageToken,

    /// {@macro flutter_serper.queries.queryString}
    @JsonKey(name: 'q') String? query,
  }) {
    return ReviewsQuery.withFid(
      fid: fid,
      countryCode: CountryCode.tryParse(countryCode),
      languageCode: LanguageCode.tryParse(languageCode),
      sortBy: SortByValue.tryParse(sortBy),
      topicId: topicId,
      nextPageToken: nextPageToken,
      query: query,
    );
  }

  const factory ReviewsQuery.withPlaceId({
    /// {@macro flutter_serper.queries.placeId}
    required String placeId,

    /// {@macro flutter_serper.queries.countryCodeEnum}
    @JsonKey(name: 'gl') CountryCode? countryCode,

    /// {@macro flutter_serper.queries.languageCodeEnum}
    @JsonKey(name: 'hl') LanguageCode? languageCode,

    /// {@macro flutter_serper.queries.sortByEnum}
    SortByValue? sortBy,

    /// Optional topic ID to filter reviews by topic
    String? topicId,

    /// Optional token for pagination
    String? nextPageToken,

    /// {@macro flutter_serper.queries.queryString}
    @JsonKey(name: 'q') String? query,
  }) = ReviewsQueryPlaceId;

  /// Factory to create a ReviewsQuery (for Place ID) with string-based inputs.
  factory ReviewsQuery.withPlaceIdFromStrings({
    /// {@macro flutter_serper.queries.placeId}
    required String placeId,

    /// {@macro flutter_serper.queries.countryCodeString}
    String? countryCode,

    /// {@macro QueryDocTemplates.languageCodeString}
    String? languageCode,

    /// {@macro QueryDocTemplates.sortByDocString}
    String? sortBy,

    /// Optional topic ID to filter reviews by topic
    String? topicId,

    /// Optional token for pagination
    String? nextPageToken,

    /// {@macro QueryDocTemplates.queryStringDoc}
    @JsonKey(name: 'q') String? query,
  }) {
    return ReviewsQuery.withPlaceId(
      placeId: placeId,
      countryCode: CountryCode.tryParse(countryCode),
      languageCode: LanguageCode.tryParse(languageCode),
      sortBy: SortByValue.tryParse(sortBy),
      topicId: topicId,
      nextPageToken: nextPageToken,
      query: query,
    );
  }

  factory ReviewsQuery.fromJson(Map<String, dynamic> json) =>
      _$ReviewsQueryFromJson(json);
}
