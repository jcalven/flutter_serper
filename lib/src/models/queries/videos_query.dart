part of 'queries.dart';

/// Query object for the Serper Videos API.
@freezed
abstract class VideosQuery with _$VideosQuery {
  const factory VideosQuery({
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
  }) = _VideosQuery;

  /// Factory to create a VideosQuery with string-based inputs.
  factory VideosQuery.fromStrings({
    /// {@macro QueryDocTemplates.queryStringDoc}
    required String q,

    /// {@macro QueryDocTemplates.locationDoc}
    String? location,

    /// {@macro QueryDocTemplates.glDoc}
    String? countryCode,

    /// {@macro QueryDocTemplates.hlDoc}
    String? languageCode,

    /// {@macro QueryDocTemplates.numDoc}
    int? num,

    /// {@macro QueryDocTemplates.autocorrectDoc}
    bool? autocorrect,

    /// {@macro QueryDocTemplates.tbsDocString}
    String? tbs,

    /// {@macro QueryDocTemplates.pageDoc}
    int? page,
  }) {
    return VideosQuery(
      q: q,
      location: location,
      countryCode: CountryCode.tryParse(countryCode),
      languageCode: LanguageCode.tryParse(languageCode),
      num: num,
      autocorrect: autocorrect,
      tbs: TbsValue.tryParse(tbs),
      page: page,
    );
  }

  factory VideosQuery.fromJson(Map<String, dynamic> json) =>
      _$VideosQueryFromJson(json);
}
