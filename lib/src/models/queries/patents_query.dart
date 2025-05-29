part of 'queries.dart';

/// Query object for the Serper Patents API.
@freezed
abstract class PatentsQuery with _$PatentsQuery {
  const factory PatentsQuery({
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
  }) = _PatentsQuery;

  /// Factory to create a PatentsQuery with string-based inputs.
  factory PatentsQuery.fromStrings({
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
    return PatentsQuery(
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

  factory PatentsQuery.fromJson(Map<String, dynamic> json) =>
      _$PatentsQueryFromJson(json);
}
