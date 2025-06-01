part of 'results.dart';

/// {@template autocompleteSuggestionDocComments}
///
/// An immutable result object representing an autocomplete suggestion returned by the Serper Autocomplete API.
///
/// - [value]: The suggested search query completion. This is a possible completion of the user's partial query.
///
/// This class is used in the [AutocompleteResponse] to represent each suggestion returned by the API.
/// {@endtemplate}
@freezed
abstract class AutocompleteSuggestion with _$AutocompleteSuggestion {
  /// {@macro autocompleteSuggestionDocComments}
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
