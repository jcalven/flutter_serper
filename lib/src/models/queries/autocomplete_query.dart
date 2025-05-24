part of 'queries.dart';

/// Query object for the Serper Autocomplete API.
@freezed
abstract class AutocompleteQuery with _$AutocompleteQuery {
  const factory AutocompleteQuery({
    required String q,
    String? location,
    String? gl,
    String? hl,
  }) = _AutocompleteQuery;

  factory AutocompleteQuery.fromJson(Map<String, dynamic> json) =>
      _$AutocompleteQueryFromJson(json);
}
