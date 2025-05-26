part of 'queries.dart';

/// Query object for the Serper Places API.
@freezed
abstract class PlacesQuery with _$PlacesQuery {
  const factory PlacesQuery({
    /// {@macro QueryDocTemplates.queryStringDoc}
    required String q,

    /// {@macro QueryDocTemplates.locationDoc}
    String? location,

    /// {@macro QueryDocTemplates.countryCodeDoc}
    @JsonKey(name: 'gl') CountryCode? countryCode,

    /// {@macro QueryDocTemplates.languageCodeDoc}
    @JsonKey(name: 'hl') LanguageCode? languageCode,

    /// {@macro QueryDocTemplates.autocorrectDoc}
    bool? autocorrect,

    /// {@macro QueryDocTemplates.tbsDocEnum}
    TbsValue? tbs,

    /// {@macro QueryDocTemplates.pageDoc}
    int? page,
  }) = _PlacesQuery;

  /// Factory to create a PlacesQuery with string-based inputs.
  factory PlacesQuery.fromStrings({
    /// {@macro QueryDocTemplates.queryStringDoc}
    required String q,

    /// {@macro QueryDocTemplates.locationDoc}
    String? location,

    /// {@macro QueryDocTemplates.glDoc}
    String? countryCode,

    /// {@macro QueryDocTemplates.hlDoc}
    String? languageCode,

    /// {@macro QueryDocTemplates.autocorrectDoc}
    bool? autocorrect,

    /// {@macro QueryDocTemplates.tbsDocString}
    String? tbs,

    /// {@macro QueryDocTemplates.pageDoc}
    int? page,
  }) {
    return PlacesQuery(
      q: q,
      location: location,
      countryCode: CountryCode.tryParse(countryCode),
      languageCode: LanguageCode.tryParse(languageCode),
      autocorrect: autocorrect,
      tbs: TbsValue.tryParse(tbs),
      page: page,
    );
  }

  factory PlacesQuery.fromJson(Map<String, dynamic> json) =>
      _$PlacesQueryFromJson(json);
}
