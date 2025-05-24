part of 'responses.dart';

/// Response for the Serper Shopping API.
@freezed
abstract class ShoppingResponse extends SerperResponse<ShoppingQuery>
    with _$ShoppingResponse {
  const ShoppingResponse._({
    required super.searchParameters,
    required super.credits,
  });
  const factory ShoppingResponse({
    required ShoppingQuery searchParameters,
    required List<ShoppingResult> shopping,
    KnowledgeGraphResult? knowledgeGraph,
    required int credits,
  }) = _ShoppingResponse;

  factory ShoppingResponse.fromJson(Map<String, dynamic> json) =>
      _$ShoppingResponseFromJson(json);
}
