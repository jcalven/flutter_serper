part of 'queries.dart';

/// Query object for the Serper Lens (Image Search) API.
@freezed
abstract class LensQuery with _$LensQuery {
  const factory LensQuery({
    /// {@macro QueryDocTemplates.urlDoc}
    required String url,

    /// {@macro QueryDocTemplates.locationDoc}
    String? location,

    /// {@macro QueryDocTemplates.countryCodeDoc}
    @JsonKey(name: 'gl') CountryCode? countryCode,

    /// {@macro QueryDocTemplates.languageCodeDoc}
    @JsonKey(name: 'hl') LanguageCode? languageCode,

    /// {@macro QueryDocTemplates.tbsDocEnum}
    TbsValue? tbs,

    /// Optional query string to refine the image search
    String? q,
  }) = _LensQuery;

  /// Factory to create a LensQuery with string-based inputs.
  factory LensQuery.fromStrings({
    /// {@macro QueryDocTemplates.urlDoc}
    required String url,

    /// {@macro QueryDocTemplates.locationDoc}
    String? location,

    /// {@macro QueryDocTemplates.hlDoc}
    String? languageCode,

    /// {@macro QueryDocTemplates.glDoc}
    String? countryCode,

    /// {@macro QueryDocTemplates.tbsDocString}
    String? tbs,

    /// Optional query string to refine the image search
    String? q,
  }) {
    return LensQuery(
      url: url,
      location: location,
      languageCode: LanguageCode.tryParse(languageCode),
      countryCode: CountryCode.tryParse(countryCode),
      tbs: TbsValue.tryParse(tbs),
      q: q,
    );
  }

  factory LensQuery.fromJson(Map<String, dynamic> json) =>
      _$LensQueryFromJson(json);
}
