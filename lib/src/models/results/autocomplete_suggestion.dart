part of 'results.dart';

/// Autocomplete suggestion.
@freezed
class AutocompleteSuggestion with _$AutocompleteSuggestion {
  const factory AutocompleteSuggestion({required String value}) =
      _AutocompleteSuggestion;

  factory AutocompleteSuggestion.fromJson(Map<String, dynamic> json) =>
      _$AutocompleteSuggestionFromJson(json);
}
