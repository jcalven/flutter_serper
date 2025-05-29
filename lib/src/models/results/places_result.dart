part of 'results.dart';

/// Places result for search results from the Serper Search API.
@freezed
abstract class PlacesResult with _$PlacesResult {
  /// Creates a [PlacesResult].
  const factory PlacesResult({
    /// {@macro flutter_serper.results.title}
    required String title,

    /// The full address of the place.
    ///
    /// Typically includes street, city, state/province, and postal code.
    required String address,

    /// The phone number of the place.
    String? phone,

    /// {@macro flutter_serper.results.rating}
    double? rating,

    /// {@template flutter_serper.results.reviewCount}
    /// The number of reviews associated with the result.
    ///
    /// Indicates how many user reviews have been submitted for this item.
    /// {@endtemplate}
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

    int? position,
  }) = _PlacesResult;

  /// Creates a [PlacesResult] from a JSON map.
  factory PlacesResult.fromJson(Map<String, dynamic> json) =>
      _$PlacesResultFromJson(json);
}
