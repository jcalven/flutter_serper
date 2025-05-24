part of 'responses.dart';

/// Response for the Serper Lens (Image Search) API.
@freezed
abstract class LensResponse extends SerperResponse<LensQuery>
    with _$LensResponse {
  const LensResponse._({
    required super.searchParameters,
    required super.credits,
  });
  const factory LensResponse({
    required LensQuery searchParameters,
    required List<LensResult> organic,
    required int credits,
  }) = _LensResponse;

  factory LensResponse.fromJson(Map<String, dynamic> json) =>
      _$LensResponseFromJson(json);
}
