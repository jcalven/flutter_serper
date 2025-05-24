part of 'responses.dart';

/// Response for the Serper Images API.
@freezed
class ImagesResponse with _$ImagesResponse, SerperResponseMixin<ImagesQuery> {
  const factory ImagesResponse({
    required ImagesQuery searchParameters,
    required List<ImageResult> images,
    KnowledgeGraphResult? knowledgeGraph,
    required int credits,
  }) = _ImagesResponse;

  factory ImagesResponse.fromJson(Map<String, dynamic> json) =>
      _$ImagesResponseFromJson(json);
}
