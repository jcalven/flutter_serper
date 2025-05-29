part of 'responses.dart';

/// Response for the Serper Autocomplete API.
@freezed
abstract class AutocompleteResponse extends SerperResponse<AutocompleteQuery>
    with _$AutocompleteResponse, ResponseUtilityMixin<AutocompleteQuery> {
  const AutocompleteResponse._();

  const factory AutocompleteResponse({
    /// {@template flutter_serper.responses.searchParameters}
    /// The query parameters used for this search request.
    ///
    /// Contains all the parameters that were sent with the original API request.
    /// {@endtemplate}
    required AutocompleteQuery searchParameters,

    /// List of autocomplete suggestions returned by the API
    ///
    /// Each suggestion is a possible completion of the user's query.
    required List<AutocompleteSuggestion> suggestions,

    /// {@template flutter_serper.responses.credits}
    /// The number of credits used for this API request.
    ///
    /// Serper API uses a credit-based system for billing, and this field indicates
    /// how many credits were consumed by this particular API call.
    /// {@endtemplate}
    required int credits,
  }) = _AutocompleteResponse;

  factory AutocompleteResponse.fromJson(Map<String, dynamic> json) =>
      _$AutocompleteResponseFromJson(json);
}
