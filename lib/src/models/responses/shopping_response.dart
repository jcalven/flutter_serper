part of 'responses.dart';

/// Response for the Serper Shopping API.
@freezed
class ShoppingResponse
    with _$ShoppingResponse, SerperResponseMixin<ShoppingQuery> {
  const factory ShoppingResponse({
    required ShoppingQuery searchParameters,
    required List<ShoppingResult> shopping,
    KnowledgeGraphResult? knowledgeGraph,
    required int credits,
  }) = _ShoppingResponse;

  factory ShoppingResponse.fromJson(Map<String, dynamic> json) =>
      _$ShoppingResponseFromJson(json);
}
