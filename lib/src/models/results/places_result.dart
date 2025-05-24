part of 'results.dart';

/// Places result for search results from the Serper Search API.
@freezed
abstract class PlacesResult with _$PlacesResult {
  /// Creates a [PlacesResult].
  const factory PlacesResult({
    /// {@macro ResultDocTemplates.titleDoc}
    required String title,

    /// The full address of the place.
    ///
    /// Typically includes street, city, state/province, and postal code.
    required String address,

    /// The phone number of the place.
    String? phone,

    /// {@macro ResultDocTemplates.ratingDoc}
    double? rating,

    /// {@macro ResultDocTemplates.reviewCountDoc}
    int? reviewCount,

    /// The URL of the place's website.
    String? website,

    /// The type or category of the place.
    ///
    /// Examples include "Restaurant", "Hotel", "Attraction", etc.
    String? type,

    /// The price level of the place.
    ///
    /// Typically represented as "$", "$$", "$$$", etc., indicating relative expense.
    String? priceLevel,

    /// The business hours of operation.
    ///
    /// A list of strings representing the opening hours for each day.
    List<String>? openingHours,

    /// {@macro ResultDocTemplates.positionDoc}
    int? position,
  }) = _PlacesResult;

  /// Creates a [PlacesResult] from a JSON map.
  factory PlacesResult.fromJson(Map<String, dynamic> json) =>
      _$PlacesResultFromJson(json);
}
