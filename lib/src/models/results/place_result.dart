part of 'results.dart';

/// Place result.
@freezed
abstract class PlaceResult with _$PlaceResult {
  const factory PlaceResult({
    required String title,
    required String address,
    String? phone,
    double? rating,
    int? reviewCount,
    String? website,
    String? type,
    String? priceLevel,
    List<String>? openingHours,
    String? cid,
    required int position,
  }) = _PlaceResult;

  factory PlaceResult.fromJson(Map<String, dynamic> json) =>
      _$PlaceResultFromJson(json);
}
