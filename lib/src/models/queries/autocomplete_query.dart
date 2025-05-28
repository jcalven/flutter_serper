part of 'queries.dart';

/// Query object for the Serper Autocomplete API.
@freezed
abstract class AutocompleteQuery with _$AutocompleteQuery {
  const factory AutocompleteQuery({
    /// {@macro queries.queryString}
    required String q,

    /// {@macro QueryDocTemplates.locationDoc}
    String? location,

    /// {@macro QueryDocTemplates.countryCodeDoc}
    @JsonKey(name: 'gl') CountryCode? countryCode,

    /// {@macro QueryDocTemplates.languageCodeDoc}
    @JsonKey(name: 'hl') LanguageCode? languageCode,
  }) = _AutocompleteQuery;

  /// Factory to create an AutocompleteQuery with string-based inputs for language and country codes.
  ///
  /// This allows for easy creation using string values, for example, from Dart's `Locale` object.
  /// Invalid or unknown codes will result in the respective parameter being null.
  factory AutocompleteQuery.fromStrings({
    /// {@macro QueryDocTemplates.queryStringDoc}
    required String q,

    /// {@macro QueryDocTemplates.locationDoc}
    String? location,

    /// {@macro QueryDocTemplates.hlDoc}
    String? languageCode,

    /// {@macro QueryDocTemplates.glDoc}
    String? countryCode,
  }) {
    return AutocompleteQuery(
      q: q,
      location: location,
      languageCode: LanguageCode.tryParse(languageCode),
      countryCode: CountryCode.tryParse(countryCode),
    );
  }

  factory AutocompleteQuery.fromJson(Map<String, dynamic> json) =>
      _$AutocompleteQueryFromJson(json);
}
