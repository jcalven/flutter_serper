part of 'queries.dart';

/// {@template shoppingQueryDocComments}
///
/// An immutable query object for the Serper Shopping API, describing a shopping search
/// by holding the [query], [location], [countryCode], [languageCode], [autocorrect], [tbs], and [page] fields.
///
/// - [query]: The search query string. This is a required parameter and can be empty.
/// - [location]: Optional location to filter results. This can be a city, state, or country.
/// - [countryCode]: The country for the search, as a [CountryCode] enum. Used to specify a location bias.
/// - [languageCode]: The language for the search, as a [LanguageCode] enum. Used to specify the language of the results.
/// - [autocorrect]: Optional parameter to enable or disable autocorrection.
/// - [tbs]: Optional time-based search parameter, as a [TbsValue] enum.
/// - [page]: Optional page number for pagination.
///
/// This class is used as the query model for Serper API methods that perform shopping searches.
/// Create an instance of this class and pass it to the relevant Serper API method to perform a shopping search request.
/// {@endtemplate}
@freezed
abstract class ShoppingQuery with _$ShoppingQuery {
  /// {@macro shoppingQueryDocComments}
  const factory ShoppingQuery({
    /// {@macro flutter_serper.queries.queryString}
    @JsonKey(name: 'q') required String query,

    /// {@macro flutter_serper.queries.location}
    String? location,

    /// {@macro flutter_serper.queries.countryCodeEnum}
    @JsonKey(name: 'gl') CountryCode? countryCode,

    /// {@macro flutter_serper.queries.languageCodeEnum}
    @JsonKey(name: 'hl') LanguageCode? languageCode,

    /// {@macro flutter_serper.queries.autocorrect}
    bool? autocorrect,

    /// {@macro flutter_serper.queries.tbsEnum}
    TbsValue? tbs,

    /// {@macro flutter_serper.queries.page}
    int? page,
  }) = _ShoppingQuery;

  /// Factory to create a ShoppingQuery with string-based inputs.
  factory ShoppingQuery.fromStrings({
    /// {@macro flutter_serper.queries.queryString}
    @JsonKey(name: 'q') required String query,

    /// {@macro flutter_serper.queries.location}
    String? location,

    /// {@macro flutter_serper.queries.countryCodeString}
    String? countryCode,

    /// {@macro flutter_serper.queries.languageCodeString}
    String? languageCode,

    /// {@macro flutter_serper.queries.autocorrect}
    bool? autocorrect,

    /// {@macro flutter_serper.queries.tbsString}
    String? tbs,

    /// {@macro flutter_serper.queries.page}
    int? page,
  }) {
    return ShoppingQuery(
      query: query,
      location: location,
      countryCode: CountryCode.tryParse(countryCode),
      languageCode: LanguageCode.tryParse(languageCode),
      autocorrect: autocorrect,
      tbs: TbsValue.tryParse(tbs),
      page: page,
    );
  }

  factory ShoppingQuery.fromJson(Map<String, dynamic> json) =>
      _$ShoppingQueryFromJson(json);
}
