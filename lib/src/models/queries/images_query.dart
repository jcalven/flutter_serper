part of 'queries.dart';

/// {@template imagesQueryDocComments}
///
/// An immutable query object for the Serper Images API, describing an image search
/// by holding the [query], [location], [countryCode], [languageCode], [num], [autocorrect], [tbs], and [page] fields.
///
/// - [query]: The search query string. This is a required parameter and can be empty.
/// - [location]: Optional location to filter results. This can be a city, state, or country.
/// - [countryCode]: The country for the search, as a [CountryCode] enum. Used to specify a location bias.
/// - [languageCode]: The language for the search, as a [LanguageCode] enum. Used to specify the language of the results.
/// - [num]: Optional number of results to return.
/// - [autocorrect]: Optional parameter to enable or disable autocorrection.
/// - [tbs]: Optional time-based search parameter, as a [TbsValue] enum.
/// - [page]: Optional page number for pagination.
///
/// This class is used as the query model for Serper API methods that perform image searches.
/// Create an instance of this class and pass it to the relevant Serper API method to perform an image search request.
/// {@endtemplate}
@freezed
abstract class ImagesQuery with _$ImagesQuery {
  /// {@macro imagesQueryDocComments}
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
