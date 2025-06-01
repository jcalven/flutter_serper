part of 'queries.dart';

/// {@template autocompleteQueryDocComments}
///
/// An immutable query object for the Serper Autocomplete API, describing a search
/// by holding the [query], [location], [countryCode], and [languageCode] fields.
///
/// - [query]: The search query string. This is a required parameter and can be empty.
/// - [location]: Optional location to filter results. This can be a city, state, or country.
/// - [countryCode]: The country for the search, as a [CountryCode] enum. Used to specify a location bias.
/// - [languageCode]: The language for the search, as a [LanguageCode] enum. Used to specify the language of the results.
///
/// This class is used as the query model for Serper API methods that perform autocomplete
/// searches. Create an instance of this class and pass it to the relevant Serper API method
/// to perform an autocomplete request.
/// {@endtemplate}
@freezed
abstract class AutocompleteQuery with _$AutocompleteQuery {
  /// {@macro autocompleteQueryDocComments}
  const factory AutocompleteQuery({
    /// {@template flutter_serper.queries.queryString}
    /// The search query string.
    ///
    /// This is a required parameter and can be empty.
    /// {@endtemplate}
    @JsonKey(name: 'q') required String query,

    /// {@template flutter_serper.queries.location}
    /// Optional location to filter results.
    ///
    /// This can be a city, state, or country.
    /// {@endtemplate}
    String? location,

    /// {@template flutter_serper.queries.countryCodeEnum}
    /// The country for the search, as a [CountryCode] enum.
    ///
    /// This can be used to specify a location bias. Parsed to [CountryCode].
    /// {@endtemplate}
    @JsonKey(name: 'gl') CountryCode? countryCode,

    /// {@template flutter_serper.queries.languageCodeEnum}
    /// The language for the search, as a [LanguageCode] enum.
    ///
    /// This can be used to specify the language of the results.
    /// {@endtemplate}
    @JsonKey(name: 'hl') LanguageCode? languageCode,
  }) = _AutocompleteQuery;

  /// Factory to create an AutocompleteQuery with string-based inputs for language and country codes.
  ///
  /// This allows for easy creation using string values, for example, from Dart's `Locale` object.
  /// Invalid or unknown codes will result in the respective parameter being null.
  factory AutocompleteQuery.fromStrings({
    /// {@macro flutter_serper.queries.queryString}
    @JsonKey(name: 'q') required String query,

    /// {@macro flutter_serper.queries.location}
    String? location,

    /// {@template flutter_serper.queries.languageCodeString}
    /// The language for the search, as a string e.g., 'en', 'es'.
    ///
    /// This can be used to specify the language of the results.
    /// {@endtemplate}
    String? languageCode,

    /// {@template flutter_serper.queries.countryCodeString}
    /// The country for the search, as a string e.g., 'US', 'GB'.
    ///
    /// This can be used to specify a location bias. Parsed to [CountryCode].
    /// {@endtemplate}
    String? countryCode,
  }) {
    return AutocompleteQuery(
      query: query,
      location: location,
      languageCode: LanguageCode.tryParse(languageCode),
      countryCode: CountryCode.tryParse(countryCode),
    );
  }

  factory AutocompleteQuery.fromJson(Map<String, dynamic> json) =>
      _$AutocompleteQueryFromJson(json);
}
