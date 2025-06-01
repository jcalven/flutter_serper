part of 'results.dart';

/// {@template shoppingResultDocComments}
///
/// An immutable result object representing a shopping result from the Serper Shopping API.
///
/// - [title]: The title of the product.
/// - [source]: The retailer or merchant name.
/// - [link]: The direct link to the product.
/// - [price]: The price of the product.
/// - [delivery]: Shipping or delivery information for the product.
/// - [imageUrl]: The URL to the image of the product.
/// - [position]: The position of this result in the results list.
/// - [rating]: Product rating (e.g., 4.5).
/// - [ratingCount]: Number of ratings or reviews.
/// - [offers]: List of offers for the product.
/// - [productId]: Unique product identifier.
///
/// This class is used in the [ShoppingResponse] to represent each shopping result returned by the API.
/// {@endtemplate}
@freezed
abstract class ShoppingResult with _$ShoppingResult {
  /// {@macro shoppingResultDocComments}
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

    /// Product rating (e.g., 4.5).
    double? rating,

    /// Number of ratings or reviews.
    int? ratingCount,

    /// List of offers for the product.
    String? offers,

    /// Unique product identifier.
    String? productId,
  }) = _ShoppingResult;

  /// Creates a [ShoppingResult] from a JSON map.
  factory ShoppingResult.fromJson(Map<String, dynamic> json) =>
      _$ShoppingResultFromJson(json);
}
