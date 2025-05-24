part of 'results.dart';

/// Places result for search results.
@freezed
abstract class PlacesResult with _$PlacesResult {
  const factory PlacesResult({
    required String title,
    required String address,
    String? phone,
    double? rating,
    int? reviewCount,
    String? website,
    String? type,
    String? priceLevel,
    List<String>? openingHours,
    int? position,
  }) = _PlacesResult;

  factory PlacesResult.fromJson(Map<String, dynamic> json) =>
      _$PlacesResultFromJson(json);
}
