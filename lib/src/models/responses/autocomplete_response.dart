part of 'responses.dart';

/// Response for the Serper Autocomplete API.
@freezed
abstract class AutocompleteResponse extends SerperResponse<AutocompleteQuery>
    with _$AutocompleteResponse, ResponseUtilityMixin<AutocompleteQuery> {
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
