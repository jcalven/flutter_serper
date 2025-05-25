part of 'responses.dart';

/// Response for the Serper Patents API.
@freezed
abstract class PatentsResponse extends SerperResponse<PatentsQuery>
    with _$PatentsResponse, ResponseUtilityMixin<PatentsQuery> {
  const PatentsResponse._();

  const factory PatentsResponse({
    /// {@macro ResponseDocTemplates.searchParametersDoc}
    required PatentsQuery searchParameters,

    /// {@macro ResponseDocTemplates.organicDoc}
    ///
    /// For Patents API, these are the patent results that match the search query.
    required List<PatentResult> organic,

    /// {@macro ResponseDocTemplates.creditsDoc}
    required int credits,
  }) = _PatentsResponse;

  factory PatentsResponse.fromJson(Map<String, dynamic> json) =>
      _$PatentsResponseFromJson(json);
}
