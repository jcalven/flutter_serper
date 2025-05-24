part of 'results.dart';

/// Maps result.
@freezed
abstract class MapResult with _$MapResult {
  const factory MapResult({
    required String title,
    required String cid,
    required String address,
    required double rating,
    required int reviewCount,
    required String priceLevel,
    required String type,
    String? phone,
    String? website,
    List<String>? categories,
    List<String>? openingHours,
    List<MapResultReview>? reviews,
    List<MapResultPhoto>? photos,
    Map<String, dynamic>? additionalInfo,
    String? description,
  }) = _MapResult;

  factory MapResult.fromJson(Map<String, dynamic> json) =>
      _$MapResultFromJson(json);
}
