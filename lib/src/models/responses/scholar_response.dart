part of 'responses.dart';

/// Response for the Serper Scholar API.
@freezed
class ScholarResponse
    with _$ScholarResponse, SerperResponseMixin<ScholarQuery> {
  const factory ScholarResponse({
    required ScholarQuery searchParameters,
    required List<ScholarResult> organic,
    required int credits,
  }) = _ScholarResponse;

  factory ScholarResponse.fromJson(Map<String, dynamic> json) =>
      _$ScholarResponseFromJson(json);
}
