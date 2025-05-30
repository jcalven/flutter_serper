part of 'results.dart';

/// Local business results from the Serper API.
@freezed
abstract class LocalResultsResult with _$LocalResultsResult {
  /// Creates a [LocalResultsResult].
  const factory LocalResultsResult({
    /// {@macro flutter_serper.results.title}
    required String title,

    /// The full address of the local business.
    ///
    /// Typically includes street, city, state/province, and postal code.
    required String address,

    /// The phone number of the local business.
    String? phone,

    /// The URL of the local business's website.
    String? website,

    /// {@macro flutter_serper.results.rating}
    double? rating,

    /// {@macro flutter_serper.results.reviewCount}
    int? reviewCount,

    /// The price level of the local business.
    ///
    /// Typically represented as "$", "$$", "$$$", etc., indicating relative expense.
    String? priceLevel,

    /// The business hours of operation.
    ///
    /// A list of strings representing the opening hours for each day.
    List<String>? openingHours,

    /// Additional business hours information.
    ///
    /// May include holiday hours, special hours, etc.
    List<dynamic>? moreHours,

    /// {@macro flutter_serper.results.position}
    required int position,
  }) = _LocalResultsResult;

  /// Creates a [LocalResultsResult] from a JSON map.
  factory LocalResultsResult.fromJson(Map<String, dynamic> json) =>
      _$LocalResultsResultFromJson(json);
}
