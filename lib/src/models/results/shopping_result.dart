part of 'results.dart';

/// Shopping result.
@freezed
abstract class ShoppingResult with _$ShoppingResult {
  const factory ShoppingResult({
    required String title,
    String? source,
    required String link,
    String? price,
    String? delivery,
    String? imageUrl,
    required int position,
  }) = _ShoppingResult;

  factory ShoppingResult.fromJson(Map<String, dynamic> json) =>
      _$ShoppingResultFromJson(json);
}
