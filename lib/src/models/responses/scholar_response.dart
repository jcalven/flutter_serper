part of 'responses.dart';

/// Response for the Serper Scholar API.
@freezed
abstract class ScholarResponse extends SerperResponse<ScholarQuery>
    with _$ScholarResponse {
  const ScholarResponse._({
    required super.searchParameters,
    required super.credits,
  });
  const factory ScholarResponse({
    required ScholarQuery searchParameters,
    required List<ScholarResult> organic,
    required int credits,
  }) = _ScholarResponse;

  factory ScholarResponse.fromJson(Map<String, dynamic> json) =>
      _$ScholarResponseFromJson(json);
}
