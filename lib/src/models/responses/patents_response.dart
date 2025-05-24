part of 'responses.dart';

/// Response for the Serper Patents API.
@freezed
class PatentsResponse
    with _$PatentsResponse, SerperResponseMixin<PatentsQuery> {
  const factory PatentsResponse({
    required PatentsQuery searchParameters,
    required List<PatentResult> organic,
    required int credits,
  }) = _PatentsResponse;

  factory PatentsResponse.fromJson(Map<String, dynamic> json) =>
      _$PatentsResponseFromJson(json);
}
