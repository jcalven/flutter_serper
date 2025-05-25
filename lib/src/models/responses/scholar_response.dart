part of 'responses.dart';

/// Response for the Serper Scholar API.
@freezed
abstract class ScholarResponse extends SerperResponse<ScholarQuery>
    with _$ScholarResponse, ResponseUtilityMixin<ScholarQuery> {
  const ScholarResponse._(
    //   {
    //   required super.searchParameters,
    //   required super.credits,
    // }
  );

  const factory ScholarResponse({
    /// {@macro ResponseDocTemplates.searchParametersDoc}
    required ScholarQuery searchParameters,

    /// {@macro ResponseDocTemplates.organicDoc}
    ///
    /// For Scholar API, these are the academic results that match the search query.
    required List<ScholarResult> organic,

    /// {@macro ResponseDocTemplates.creditsDoc}
    required int credits,
  }) = _ScholarResponse;

  factory ScholarResponse.fromJson(Map<String, dynamic> json) =>
      _$ScholarResponseFromJson(json);
}
