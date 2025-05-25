part of 'responses.dart';

/// Response for the Serper Shopping API.
@freezed
abstract class ShoppingResponse extends SerperResponse<ShoppingQuery>
    with _$ShoppingResponse, ResponseUtilityMixin<ShoppingQuery> {
  const ShoppingResponse._(
    //   {
    //   required super.searchParameters,
    //   required super.credits,
    // }
  );

  const factory ShoppingResponse({
    /// {@macro ResponseDocTemplates.searchParametersDoc}
    required ShoppingQuery searchParameters,

    /// List of shopping results returned by the API
    ///
    /// Contains products that match the search query.
    required List<ShoppingResult> shopping,

    /// {@macro ResponseDocTemplates.knowledgeGraphDoc}
    KnowledgeGraphResult? knowledgeGraph,

    /// {@macro ResponseDocTemplates.creditsDoc}
    required int credits,
  }) = _ShoppingResponse;

  factory ShoppingResponse.fromJson(Map<String, dynamic> json) =>
      _$ShoppingResponseFromJson(json);
}
