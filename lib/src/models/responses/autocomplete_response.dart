part of 'responses.dart';

/// Response for the Serper Autocomplete API.
@freezed
class AutocompleteResponse
    with _$AutocompleteResponse, SerperResponseMixin<AutocompleteQuery> {
  const factory AutocompleteResponse({
    required AutocompleteQuery searchParameters,
    required List<AutocompleteSuggestion> suggestions,
    required int credits,
  }) = _AutocompleteResponse;

  factory AutocompleteResponse.fromJson(Map<String, dynamic> json) =>
      _$AutocompleteResponseFromJson(json);
}
