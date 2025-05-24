part of 'queries.dart';

/// Query object for the Serper Autocomplete API.
@freezed
abstract class AutocompleteQuery with _$AutocompleteQuery {
  const factory AutocompleteQuery({
    /// {@macro QueryDocTemplates.queryStringDoc}
    required String q,

    /// {@macro QueryDocTemplates.locationDoc}
    String? location,

    /// {@macro QueryDocTemplates.glDoc}
    String? gl,

    /// {@macro QueryDocTemplates.hlDoc}
    String? hl,
  }) = _AutocompleteQuery;

  factory AutocompleteQuery.fromJson(Map<String, dynamic> json) =>
      _$AutocompleteQueryFromJson(json);
}
