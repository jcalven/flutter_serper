part of 'responses.dart';

/// Response for the Serper Videos API.
@freezed
abstract class VideosResponse extends SerperResponse<VideosQuery>
    with _$VideosResponse {
  const VideosResponse._({
    required super.searchParameters,
    required super.credits,
  });
  const factory VideosResponse({
    required VideosQuery searchParameters,
    required List<VideoResult> videos,
    KnowledgeGraphResult? knowledgeGraph,
    required int credits,
  }) = _VideosResponse;

  factory VideosResponse.fromJson(Map<String, dynamic> json) =>
      _$VideosResponseFromJson(json);
}
