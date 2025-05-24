part of 'responses.dart';

/// Response for the Serper Lens (Image Search) API.
@freezed
class LensResponse with _$LensResponse, SerperResponseMixin<LensQuery> {
  const factory LensResponse({
    required LensQuery searchParameters,
    required List<LensResult> organic,
    required int credits,
  }) = _LensResponse;

  factory LensResponse.fromJson(Map<String, dynamic> json) =>
      _$LensResponseFromJson(json);
}
