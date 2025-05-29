part of 'results.dart';

/// Place result from the Serper Places API.
@freezed
abstract class PlaceResult with _$PlaceResult {
  /// Creates a [PlaceResult].
  const factory PlaceResult({
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

    /// {@macro flutter_serper.results.reviewCount}
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

    /// The unique Customer ID (CID) of the place in Google Maps.
    ///
    /// This identifier can be used to look up the place in Google Maps.
    String? cid,

    /// {@macro ResultDocTemplates.positionDoc}
    required int position,
  }) = _PlaceResult;

  /// Creates a [PlaceResult] from a JSON map.
  factory PlaceResult.fromJson(Map<String, dynamic> json) =>
      _$PlaceResultFromJson(json);
}
