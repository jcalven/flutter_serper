part of 'queries.dart';

/// Query object for the Serper Shopping API.
@freezed
abstract class ShoppingQuery with _$ShoppingQuery {
  const factory ShoppingQuery({
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
  }) = _ShoppingQuery;

  /// Factory to create a ShoppingQuery with string-based inputs.
  factory ShoppingQuery.fromStrings({
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
    return ShoppingQuery(
      q: q,
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
