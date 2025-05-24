part of 'responses.dart';

/// Response for the Serper Images API.
@freezed
abstract class ImagesResponse extends SerperResponse<ImagesQuery>
    with _$ImagesResponse {
  const ImagesResponse._({
    required super.searchParameters,
    required super.credits,
  });

  const factory ImagesResponse({
    required ImagesQuery searchParameters,
    required List<ImageResult> images,
    KnowledgeGraphResult? knowledgeGraph,
    required int credits,
  }) = _ImagesResponse;

  factory ImagesResponse.fromJson(Map<String, dynamic> json) =>
      _$ImagesResponseFromJson(json);
}
