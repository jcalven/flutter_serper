part of 'responses.dart';

/// Response for the Serper Videos API.
@freezed
class VideosResponse with _$VideosResponse, SerperResponseMixin<VideosQuery> {
  const factory VideosResponse({
    required VideosQuery searchParameters,
    required List<VideoResult> videos,
    KnowledgeGraphResult? knowledgeGraph,
    required int credits,
  }) = _VideosResponse;

  factory VideosResponse.fromJson(Map<String, dynamic> json) =>
      _$VideosResponseFromJson(json);
}
