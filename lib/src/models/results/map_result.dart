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
    required String type,

    /// The phone number of the place.
    String? phone,

    /// The URL of the place's website.
    String? website,

    /// The categories that the place belongs to.
    ///
    /// A list of descriptive tags associated with the place.
    List<String>? categories,

    /// The business hours of operation.
    ///
    /// A list of strings representing the opening hours for each day.
    List<String>? openingHours,

    /// User reviews of the place.
    ///
    /// A list of review objects containing detailed user feedback.
    List<MapResultReview>? reviews,

    /// Photos of the place.
    ///
    /// A list of photo objects with URLs to images of the place.
    List<MapResultPhoto>? photos,

    /// Additional information about the place.
    ///
    /// A map of key-value pairs containing various facts and details.
    Map<String, dynamic>? additionalInfo,

    /// A description of the place.
    ///
    /// Provides additional context or explanation about the place.
    String? description,
  }) = _MapResult;

  /// Creates a [MapResult] from a JSON map.
  factory MapResult.fromJson(Map<String, dynamic> json) =>
      _$MapResultFromJson(json);
}
