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
    required AutocompleteQuery searchParameters,
    required List<AutocompleteSuggestion> suggestions,
    required int credits,
  }) = _AutocompleteResponse;

  factory AutocompleteResponse.fromJson(Map<String, dynamic> json) =>
      _$AutocompleteResponseFromJson(json);
}

void func() {
  final a = AutocompleteResponse(
    searchParameters: AutocompleteQuery(q: 'example'),
    suggestions: [AutocompleteSuggestion(value: 'Example Suggestion')],
    credits: 100,
  );

  a.credits;

  AutocompleteQuery(q: 'example');
}
