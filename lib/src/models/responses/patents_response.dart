part of 'responses.dart';

/// Response for the Serper Patents API.
@freezed
abstract class PatentsResponse extends SerperResponse<PatentsQuery>
    with _$PatentsResponse, ResponseUtilityMixin<PatentsQuery> {
  const PatentsResponse._();

  const factory PatentsResponse({
    /// {@macro flutter_serper.responses.searchParameters}
    required PatentsQuery searchParameters,

    /// {@macro flutter_serper.responses.organic}
    ///
    /// For Patents API, these are the patent results that match the search query.
    required List<PatentResult> organic,

    /// {@macro flutter_serper.responses.credits}
    required int credits,
  }) = _PatentsResponse;

  factory PatentsResponse.fromJson(Map<String, dynamic> json) =>
      _$PatentsResponseFromJson(json);
}
