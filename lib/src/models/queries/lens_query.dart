part of 'queries.dart';

/// Query object for the Serper Lens (Image Search) API.
@freezed
abstract class LensQuery with _$LensQuery {
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
