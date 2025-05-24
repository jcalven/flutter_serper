part of 'results.dart';

/// Autocomplete suggestion returned by the Serper Autocomplete API.
@freezed
abstract class AutocompleteSuggestion with _$AutocompleteSuggestion {
  /// Creates an [AutocompleteSuggestion].
  const factory AutocompleteSuggestion({
    /// The suggested search query completion.
    ///
    /// This is a possible completion of the user's partial query.
    required String value,
  }) = _AutocompleteSuggestion;

  /// Creates an [AutocompleteSuggestion] from a JSON map.
  factory AutocompleteSuggestion.fromJson(Map<String, dynamic> json) =>
      _$AutocompleteSuggestionFromJson(json);
}
