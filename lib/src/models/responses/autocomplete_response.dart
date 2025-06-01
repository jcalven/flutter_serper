part of 'responses.dart';

/// {@template autocompleteResponseDocComments}
///
/// An immutable response object for the Serper Autocomplete API, describing the API response
/// by holding the [searchParameters], [suggestions], and [credits] fields.
///
/// - [searchParameters]: The parameters used for the autocomplete search.
/// - [suggestions]: List of autocomplete suggestions returned by the API. Each suggestion is a possible completion of the user's query.
/// - [credits]: The number of API credits consumed by this request.
///
/// This class is returned by Serper API methods that perform autocomplete requests.
/// {@endtemplate}
@freezed
abstract class AutocompleteResponse extends SerperResponse<AutocompleteQuery>
    with _$AutocompleteResponse, ResponseUtilityMixin<AutocompleteQuery> {
  /// {@macro autocompleteResponseDocComments}
  const AutocompleteResponse._();

  const factory AutocompleteResponse({
    /// {@macro flutter_serper.responses.searchParameters}
    required AutocompleteQuery searchParameters,

    /// List of autocomplete suggestions returned by the API
    ///
    /// Each suggestion is a possible completion of the user's query.
    required List<AutocompleteSuggestion> suggestions,

    /// {@macro flutter_serper.responses.credits}
    required int credits,
  }) = _AutocompleteResponse;

  factory AutocompleteResponse.fromJson(Map<String, dynamic> json) =>
      _$AutocompleteResponseFromJson(json);
}
