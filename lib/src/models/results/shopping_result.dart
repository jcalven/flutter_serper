part of 'results.dart';

/// Shopping result from the Serper Shopping API.
@freezed
abstract class ShoppingResult with _$ShoppingResult {
  /// Creates a [ShoppingResult].
  const factory ShoppingResult({
    /// {@macro ResultDocTemplates.titleDoc}
    required String title,

    /// {@macro ResultDocTemplates.sourceDoc}
    ///
    /// For shopping results, this is typically the retailer or merchant name.
    String? source,

    /// {@macro ResultDocTemplates.linkDoc}
    required String link,

    /// {@macro ResultDocTemplates.priceDoc}
    String? price,

    /// Shipping or delivery information for the product.
    ///
    /// May include cost, timeframe, or other delivery details.
    String? delivery,

    /// {@macro ResultDocTemplates.imageUrlDoc}
    String? imageUrl,

    /// {@macro ResultDocTemplates.positionDoc}
    required int position,
  }) = _ShoppingResult;

  /// Creates a [ShoppingResult] from a JSON map.
  factory ShoppingResult.fromJson(Map<String, dynamic> json) =>
      _$ShoppingResultFromJson(json);
}
