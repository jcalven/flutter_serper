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
    /// {@macro ResponseDocTemplates.searchParametersDoc}
    required VideosQuery searchParameters,

    /// List of video results returned by the API
    ///
    /// Contains videos that match the search query.
    required List<VideoResult> videos,

    /// {@macro ResponseDocTemplates.knowledgeGraphDoc}
    KnowledgeGraphResult? knowledgeGraph,

    /// {@macro ResponseDocTemplates.creditsDoc}
    required int credits,
  }) = _VideosResponse;

  factory VideosResponse.fromJson(Map<String, dynamic> json) =>
      _$VideosResponseFromJson(json);
}
