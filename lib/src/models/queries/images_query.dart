part of 'queries.dart';

/// Query object for the Serper Images API.
@freezed
abstract class ImagesQuery with _$ImagesQuery {
  const factory ImagesQuery({
    /// {@macro flutter_serper.queries.queryString}
    @JsonKey(name: 'q') required String query,

    /// {@macro flutter_serper.queries.location}
    String? location,

    /// {@macro flutter_serper.queries.countryCodeEnum}
    @JsonKey(name: 'gl') CountryCode? countryCode,

    /// {@macro flutter_serper.queries.languageCodeEnum}
    @JsonKey(name: 'hl') LanguageCode? languageCode,

    /// {@template flutter_serper.queries.num}
    /// Optional number of results to return.
    ///
    /// Default varies by API endpoint.
    /// {@endtemplate}
    int? num,

    /// {@template flutter_serper.queries.autocorrect}
    /// Optional parameter to enable or disable autocorrection.
    ///
    /// When true, the API will attempt to correct spelling errors in the query.
    /// {@endtemplate}
    bool? autocorrect,

    /// {@template flutter_serper.queries.tbsEnum}
    /// Optional time-based search parameter, as a [TbsValue] enum.
    ///
    /// Serialized to the 'tbs' parameter for the API.
    /// {@endtemplate}
    TbsValue? tbs,

    /// {@template flutter_serper.queries.page}
    /// Optional page number for pagination.
    ///
    /// Default is 1.
    /// {@endtemplate}
    int? page,
  }) = _ImagesQuery;

  /// Factory to create an ImagesQuery with string-based inputs.
  factory ImagesQuery.fromStrings({
    /// {@macro flutter_serper.queries.queryString}
    @JsonKey(name: 'q') required String query,

    /// {@macro flutter_serper.queries.location}
    String? location,

    /// {@macro flutter_serper.queries.languageCodeString}
    String? languageCode,

    /// {@macro flutter_serper.queries.countryCodeString}
    String? countryCode,

    /// {@macro flutter_serper.queries.num}
    int? num,

    /// {@macro flutter_serper.queries.autocorrect}
    bool? autocorrect,

    /// {@template flutter_serper.queries.tbsString}
    /// Optional time-based search parameter as a string.
    ///
    /// Common values include:
    /// - 'qdr:h' (past hour)
    /// - 'qdr:d' (past day)
    /// - 'qdr:w' (past week)
    /// - 'qdr:m' (past month)
    /// - 'qdr:y' (past year)
    /// Parsed to [TbsValue].
    /// {@endtemplate}
    String? tbs,

    /// {@macro flutter_serper.queries.page}
    int? page,
  }) {
    return ImagesQuery(
      query: query,
      location: location,
      languageCode: LanguageCode.tryParse(languageCode),
      countryCode: CountryCode.tryParse(countryCode),
      num: num,
      autocorrect: autocorrect,
      tbs: TbsValue.tryParse(tbs),
      page: page,
    );
  }

  factory ImagesQuery.fromJson(Map<String, dynamic> json) =>
      _$ImagesQueryFromJson(json);
}
