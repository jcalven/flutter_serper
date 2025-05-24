part of 'responses.dart';

/// Response for the Serper Patents API.
@freezed
abstract class PatentsResponse extends SerperResponse<PatentsQuery>
    with _$PatentsResponse {
  const PatentsResponse._({
    required super.searchParameters,
    required super.credits,
  });
  const factory PatentsResponse({
    required PatentsQuery searchParameters,
    required List<PatentResult> organic,
    required int credits,
  }) = _PatentsResponse;

  factory PatentsResponse.fromJson(Map<String, dynamic> json) =>
      _$PatentsResponseFromJson(json);
}
