part of 'responses.dart';

/// Response for the Serper Shopping API.
@freezed
abstract class ShoppingResponse extends SerperResponse<ShoppingQuery>
    with _$ShoppingResponse, ResponseUtilityMixin<ShoppingQuery> {
  const ShoppingResponse._();

  const factory ShoppingResponse({
    /// {@macro flutter_serper.responses.searchParameters}
    required ShoppingQuery searchParameters,

    /// List of shopping results returned by the API
    ///
    /// Contains products that match the search query.
    required List<ShoppingResult> shopping,

    // /// {@macro flutter_serper.responses.knowledgeGraph}
    // KnowledgeGraphResult? knowledgeGraph,

    /// {@macro flutter_serper.responses.credits}
    required int credits,
  }) = _ShoppingResponse;

  factory ShoppingResponse.fromJson(Map<String, dynamic> json) =>
      _$ShoppingResponseFromJson(json);
}
