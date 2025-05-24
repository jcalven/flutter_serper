part of 'responses.dart';

/// Response for the Serper News API.
@freezed
abstract class NewsResponse extends SerperResponse<NewsQuery>
    with _$NewsResponse {
  const NewsResponse._({
    required super.searchParameters,
    required super.credits,
  });
  const factory NewsResponse({
    required NewsQuery searchParameters,
    required List<NewsResult> news,
    KnowledgeGraphResult? knowledgeGraph,
    required int credits,
  }) = _NewsResponse;

  factory NewsResponse.fromJson(Map<String, dynamic> json) =>
      _$NewsResponseFromJson(json);
}
