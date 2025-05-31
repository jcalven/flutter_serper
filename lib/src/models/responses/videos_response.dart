part of 'responses.dart';

/// Response for the Serper Videos API.
@freezed
abstract class VideosResponse extends SerperResponse<VideosQuery>
    with _$VideosResponse, ResponseUtilityMixin<VideosQuery> {
  const VideosResponse._();

  const factory VideosResponse({
    /// {@macro flutter_serper.responses.searchParameters}
    required VideosQuery searchParameters,

    /// List of video results returned by the API
    ///
    /// Contains videos that match the search query.
    required List<VideoResult> videos,

    // /// {@macro flutter_serper.responses.knowledgeGraph}
    // KnowledgeGraphResult? knowledgeGraph,

    /// {@macro flutter_serper.responses.credits}
    required int credits,
  }) = _VideosResponse;

  factory VideosResponse.fromJson(Map<String, dynamic> json) =>
      _$VideosResponseFromJson(json);
}
