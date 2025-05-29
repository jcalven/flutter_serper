part of 'results.dart';

/// Maps result from the Serper Maps API.
@freezed
abstract class MapResult with _$MapResult {
  /// Creates a [MapResult].
  const factory MapResult({
    /// {@macro flutter_serper.results.title}
    required String title,

    /// The unique Customer ID (CID) of the place in Google Maps.
    ///
    /// This identifier can be used to look up the place in Google Maps.
    required String cid,

    /// The full address of the place.
    ///
    /// Typically includes street, city, state/province, and postal code.
    required String address,

    /// {@macro flutter_serper.results.rating}
    required double rating,

    /// {@macro flutter_serper.results.reviewCount}
    required int reviewCount,

    /// The price level of the place.
    ///
    /// Typically represented as "$", "$$", "$$$", etc., indicating relative expense.
    required String priceLevel,

    /// The type or category of the place.
    ///
    /// Examples include "Restaurant", "Hotel", "Attraction", etc.
    String? description,
  }) = _MapResult;

  /// Creates a [MapResult] from a JSON map.
  factory MapResult.fromJson(Map<String, dynamic> json) =>
      _$MapResultFromJson(json);
}
