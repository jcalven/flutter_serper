part of 'queries.dart';

/// Query object for the Serper Images API.
@freezed
abstract class ImagesQuery with _$ImagesQuery {
  const factory ImagesQuery({
    /// {@macro QueryDocTemplates.queryStringDoc}
    required String q,

    /// {@macro QueryDocTemplates.locationDoc}
    String? location,

    /// {@macro QueryDocTemplates.countryCodeDoc}
    @JsonKey(name: 'gl') CountryCode? countryCode,

    /// {@macro QueryDocTemplates.languageCodeDoc}
    @JsonKey(name: 'hl') LanguageCode? languageCode,

    /// {@macro QueryDocTemplates.numDoc}
    int? num,

    /// {@macro QueryDocTemplates.autocorrectDoc}
    bool? autocorrect,

    /// {@macro QueryDocTemplates.tbsDocEnum}
    TbsValue? tbs,

    /// {@macro QueryDocTemplates.pageDoc}
    int? page,
  }) = _ImagesQuery;

  /// Factory to create an ImagesQuery with string-based inputs.
  factory ImagesQuery.fromStrings({
    /// {@macro QueryDocTemplates.queryStringDoc}
    required String q,

    /// {@macro QueryDocTemplates.locationDoc}
    String? location,

    /// {@macro QueryDocTemplates.hlDoc}
    String? languageCode,

    /// {@macro QueryDocTemplates.glDoc}
    String? countryCode,

    /// {@macro QueryDocTemplates.numDoc}
    int? num,

    /// {@macro QueryDocTemplates.autocorrectDoc}
    bool? autocorrect,

    /// {@macro QueryDocTemplates.tbsDocString}
    String? tbs,

    /// {@macro QueryDocTemplates.pageDoc}
    int? page,
  }) {
    return ImagesQuery(
      q: q,
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
