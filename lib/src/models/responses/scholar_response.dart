part of 'responses.dart';

/// Response for the Serper Scholar API.
@freezed
abstract class ScholarResponse extends SerperResponse<ScholarQuery>
    with _$ScholarResponse, ResponseUtilityMixin<ScholarQuery> {
  const ScholarResponse._();

  const factory ScholarResponse({
    /// {@macro flutter_serper.responses.searchParameters}
    required ScholarQuery searchParameters,

    /// {@macro flutter_serper.responses.organic}
    ///
    /// For Scholar API, these are the academic results that match the search query.
    required List<ScholarResult> organic,

    /// {@macro flutter_serper.responses.credits}
    required int credits,
  }) = _ScholarResponse;

  factory ScholarResponse.fromJson(Map<String, dynamic> json) =>
      _$ScholarResponseFromJson(json);
}
