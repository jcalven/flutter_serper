part of 'responses.dart';

/// Response for the Serper Autocomplete API.
@freezed
abstract class AutocompleteResponse extends SerperResponse<AutocompleteQuery>
    with _$AutocompleteResponse {
  const AutocompleteResponse._({
    required super.searchParameters,
    required super.credits,
  });

  const factory AutocompleteResponse({
    /// {@macro ResponseDocTemplates.searchParametersDoc}
    required AutocompleteQuery searchParameters,

    /// List of autocomplete suggestions returned by the API
    ///
    /// Each suggestion is a possible completion of the user's query.
    required List<AutocompleteSuggestion> suggestions,

    /// {@macro ResponseDocTemplates.creditsDoc}
    required int credits,
  }) = _AutocompleteResponse;

  factory AutocompleteResponse.fromJson(Map<String, dynamic> json) =>
      _$AutocompleteResponseFromJson(json);
}
