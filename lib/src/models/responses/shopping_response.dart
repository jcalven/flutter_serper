part of 'responses.dart';

/// {@template shoppingResponseDocComments}
///
/// An immutable response object for the Serper Shopping API, describing the API response
/// by holding the [searchParameters], [shopping], and [credits] fields.
///
/// - [searchParameters]: The parameters used for the shopping search.
/// - [shopping]: List of shopping results returned by the API. Contains products that match the search query.
/// - [credits]: The number of API credits consumed by this request.
///
/// This class is returned by Serper API methods that perform shopping search requests.
/// {@endtemplate}
@freezed
abstract class ShoppingResponse extends SerperResponse<ShoppingQuery>
    with _$ShoppingResponse, ResponseUtilityMixin<ShoppingQuery> {
  /// {@macro shoppingResponseDocComments}
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
