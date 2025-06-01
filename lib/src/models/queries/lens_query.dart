part of 'queries.dart';

/// {@template lensQueryDocComments}
///
/// An immutable query object for the Serper Lens (Image Search) API, describing an image search
/// by holding the [url], [location], [countryCode], [languageCode], [tbs], and [query] fields.
///
/// - [url]: The URL of the image to search with. This is a required parameter.
/// - [location]: Optional location to filter results. This can be a city, state, or country.
/// - [countryCode]: The country for the search, as a [CountryCode] enum. Used to specify a location bias.
/// - [languageCode]: The language for the search, as a [LanguageCode] enum. Used to specify the language of the results.
/// - [tbs]: Optional time-based search parameter, as a [TbsValue] enum.
/// - [query]: Optional query string to refine the image search.
///
/// This class is used as the query model for Serper API methods that perform Lens (image) searches.
/// Create an instance of this class and pass it to the relevant Serper API method to perform a Lens search request.
/// {@endtemplate}
@freezed
abstract class LensQuery with _$LensQuery {
  /// {@macro lensQueryDocComments}
  const factory LensQuery({
    /// {@macro flutter_serper.queries.url}
    required String url,

    /// {@macro flutter_serper.queries.location}
    String? location,

    /// {@macro flutter_serper.queries.countryCodeEnum}
    @JsonKey(name: 'gl') CountryCode? countryCode,

    /// {@macro flutter_serper.queries.languageCodeEnum}
    @JsonKey(name: 'hl') LanguageCode? languageCode,

    /// {@macro flutter_serper.queries.tbsEnum}
    TbsValue? tbs,

    /// Optional query string to refine the image search
    @JsonKey(name: 'q') String? query,
  }) = _LensQuery;

  /// Factory to create a LensQuery with string-based inputs.
  factory LensQuery.fromStrings({
    /// {@macro flutter_serper.queries.url}
    required String url,

    /// {@macro flutter_serper.queries.location}
    String? location,

    /// {@macro flutter_serper.queries.languageCodeString}
    String? languageCode,

    /// {@macro flutter_serper.queries.countryCodeString}
    String? countryCode,

    /// {@macro flutter_serper.queries.tbsString}
    String? tbs,

    /// Optional query string to refine the image search
    @JsonKey(name: 'q') String? query,
  }) {
    return LensQuery(
      url: url,
      location: location,
      languageCode: LanguageCode.tryParse(languageCode),
      countryCode: CountryCode.tryParse(countryCode),
      tbs: TbsValue.tryParse(tbs),
      query: query,
    );
  }

  factory LensQuery.fromJson(Map<String, dynamic> json) =>
      _$LensQueryFromJson(json);
}
