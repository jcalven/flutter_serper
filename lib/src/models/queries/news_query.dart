part of 'queries.dart';

/// {@template newsQueryDocComments}
///
/// An immutable query object for the Serper News API, describing a news search
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
/// This class is used as the query model for Serper API methods that perform news searches.
/// Create an instance of this class and pass it to the relevant Serper API method to perform a news search request.
/// {@endtemplate}
@freezed
abstract class NewsQuery with _$NewsQuery {
  /// {@macro newsQueryDocComments}
  const factory NewsQuery({
    /// {@macro flutter_serper.queries.queryString}
    @JsonKey(name: 'q') required String query,

    /// {@macro flutter_serper.queries.location}
    String? location,

    /// {@macro flutter_serper.queries.countryCodeEnum}
    @JsonKey(name: 'gl') CountryCode? countryCode,

    /// {@macro flutter_serper.queries.languageCodeEnum}
    @JsonKey(name: 'hl') LanguageCode? languageCode,

    /// {@macro flutter_serper.queries.num}
    int? num,

    /// {@macro flutter_serper.queries.autocorrect}
    bool? autocorrect,

    /// {@macro flutter_serper.queries.tbsEnum}
    TbsValue? tbs,

    /// {@macro flutter_serper.queries.page}
    int? page,
  }) = _NewsQuery;

  /// Factory to create a NewsQuery with string-based inputs.
  factory NewsQuery.fromStrings({
    /// {@macro flutter_serper.queries.queryString}
    @JsonKey(name: 'q') required String query,

    /// {@macro flutter_serper.queries.location}
    String? location,

    /// {@macro flutter_serper.queries.countryCodeString}
    String? countryCode,

    /// {@macro flutter_serper.queries.languageCodeString}
    String? languageCode,

    /// {@macro flutter_serper.queries.num}
    int? num,

    /// {@macro flutter_serper.queries.autocorrect}
    bool? autocorrect,

    /// {@macro flutter_serper.queries.tbsString}
    String? tbs,

    /// {@macro flutter_serper.queries.page}
    int? page,
  }) {
    return NewsQuery(
      query: query,
      location: location,
      countryCode: CountryCode.tryParse(countryCode),
      languageCode: LanguageCode.tryParse(languageCode),
      num: num,
      autocorrect: autocorrect,
      tbs: TbsValue.tryParse(tbs),
      page: page,
    );
  }

  factory NewsQuery.fromJson(Map<String, dynamic> json) =>
      _$NewsQueryFromJson(json);
}
