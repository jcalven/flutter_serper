part of 'responses.dart';

/// {@template videosResponseDocComments}
///
/// An immutable response object for the Serper Videos API, describing the API response
/// by holding the [searchParameters], [videos], and [credits] fields.
///
/// - [searchParameters]: The parameters used for the video search.
/// - [videos]: List of video results returned by the API. Contains videos that match the search query.
/// - [credits]: The number of API credits consumed by this request.
///
/// This class is returned by Serper API methods that perform video search requests.
/// {@endtemplate}
@freezed
abstract class VideosResponse extends SerperResponse<VideosQuery>
    with _$VideosResponse, ResponseUtilityMixin<VideosQuery> {
  /// {@macro videosResponseDocComments}
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
