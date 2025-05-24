part of 'results.dart';

/// Local results result.
@freezed
abstract class LocalResultsResult with _$LocalResultsResult {
  const factory LocalResultsResult({
    required String title,
    required String address,
    String? phone,
    String? website,
    double? rating,
    int? reviewCount,
    String? priceLevel,
    List<String>? openingHours,
    List<dynamic>? moreHours,
    required int position,
  }) = _LocalResultsResult;

  factory LocalResultsResult.fromJson(Map<String, dynamic> json) =>
      _$LocalResultsResultFromJson(json);
}
