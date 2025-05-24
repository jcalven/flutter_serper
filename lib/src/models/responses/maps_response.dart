part of 'responses.dart';

/// Response for the Serper Maps API.
@freezed
abstract class MapsResponse extends SerperResponse<MapsQuery>
    with _$MapsResponse {
  const MapsResponse._({
    required super.searchParameters,
    required super.credits,
  });

  const factory MapsResponse({
    required MapsQuery searchParameters,
    required MapResult place,
    required int credits,
  }) = _MapsResponse;

  factory MapsResponse.fromJson(Map<String, dynamic> json) =>
      _$MapsResponseFromJson(json);
}
