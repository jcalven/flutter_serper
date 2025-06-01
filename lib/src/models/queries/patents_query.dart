part of 'queries.dart';

/// {@template patentsQueryDocComments}
///
/// An immutable query object for the Serper Patents API, describing a patents search
/// by holding the [query], [num], and [page] fields.
///
/// - [query]: The search query string. This is a required parameter and can be empty.
/// - [num]: Optional number of results to return. Defaults to 10.
/// - [page]: Optional page number for pagination.
///
/// This class is used as the query model for Serper API methods that perform patents searches.
/// Create an instance of this class and pass it to the relevant Serper API method to perform a patents search request.
/// {@endtemplate}
@freezed
abstract class PatentsQuery with _$PatentsQuery {
  /// {@macro patentsQueryDocComments}
  const factory PatentsQuery({
    /// {@macro flutter_serper.queries.queryString}
    @JsonKey(name: 'q') required String query,

    // /// {@macro flutter_serper.queries.countryCodeEnum}
    // @JsonKey(name: 'gl') CountryCode? countryCode,

    // /// {@macro flutter_serper.queries.languageCodeEnum}
    // @JsonKey(name: 'hl') LanguageCode? languageCode,

    /// {@macro flutter_serper.queries.num}
    @Default(10) int num,

    // /// {@macro flutter_serper.queries.autocorrect}
    // bool? autocorrect,

    // /// {@macro flutter_serper.queries.tbsEnum}
    // TbsValue? tbs,

    /// {@macro flutter_serper.queries.page}
    int? page,
  }) = _PatentsQuery;

  // /// Factory to create a PatentsQuery with string-based inputs.
  // factory PatentsQuery.fromStrings({
  //   /// {@macro flutter_serper.queries.queryString}
  //   @JsonKey(name: 'q') required String query,

  //   /// {@macro flutter_serper.queries.location}
  //   String? location,

  //   /// {@macro flutter_serper.queries.countryCodeString}
  //   String? countryCode,

  //   /// {@macro flutter_serper.queries.languageCodeString}
  //   String? languageCode,

  //   /// {@macro flutter_serper.queries.num}
  //   int? num,

  //   /// {@macro flutter_serper.queries.autocorrect}
  //   bool? autocorrect,

  //   /// {@macro flutter_serper.queries.tbsString}
  //   String? tbs,

  //   /// {@macro flutter_serper.queries.page}
  //   int? page,
  // }) {
  //   return PatentsQuery(
  //     query: query,
  //     location: location,
  //     // countryCode: CountryCode.tryParse(countryCode),
  //     // languageCode: LanguageCode.tryParse(languageCode),
  //     num: num,
  //     // autocorrect: autocorrect,
  //     // tbs: TbsValue.tryParse(tbs),
  //     page: page,
  //   );
  // }

  factory PatentsQuery.fromJson(Map<String, dynamic> json) =>
      _$PatentsQueryFromJson(json);
}
