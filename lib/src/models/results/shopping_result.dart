part of 'results.dart';

/// Shopping result from the Serper Shopping API.
@freezed
abstract class ShoppingResult with _$ShoppingResult {
  /// Creates a [ShoppingResult].
  const factory ShoppingResult({
    /// {@macro flutter_serper.results.title}
    required String title,

    /// {@macro flutter_serper.results.source}
    ///
    /// For shopping results, this is typically the retailer or merchant name.
    String? source,

    /// {@macro flutter_serper.results.link}
    required String link,

    /// {@macro flutter_serper.results.price}
    String? price,

    /// Shipping or delivery information for the product.
    ///
    /// May include cost, timeframe, or other delivery details.
    String? delivery,

    /// {@macro flutter_serper.results.imageUrl}
    String? imageUrl,

    /// {@macro flutter_serper.results.position}
    required int position,
  }) = _ShoppingResult;

  /// Creates a [ShoppingResult] from a JSON map.
  factory ShoppingResult.fromJson(Map<String, dynamic> json) =>
      _$ShoppingResultFromJson(json);
}
