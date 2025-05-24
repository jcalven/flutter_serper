part of 'responses.dart';

/// Response for the Serper News API.
@freezed
class NewsResponse with _$NewsResponse, SerperResponseMixin<NewsQuery> {
  const factory NewsResponse({
    required NewsQuery searchParameters,
    required List<NewsResult> news,
    KnowledgeGraphResult? knowledgeGraph,
    required int credits,
  }) = _NewsResponse;

  factory NewsResponse.fromJson(Map<String, dynamic> json) =>
      _$NewsResponseFromJson(json);
}
