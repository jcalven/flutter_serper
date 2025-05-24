part of 'responses.dart';

/// Response for the Serper Maps API.
@freezed
class MapsResponse with _$MapsResponse, SerperResponseMixin<MapsQuery> {
  const factory MapsResponse({
    required MapsQuery searchParameters,
    required MapResult place,
    required int credits,
  }) = _MapsResponse;

  factory MapsResponse.fromJson(Map<String, dynamic> json) =>
      _$MapsResponseFromJson(json);
}
