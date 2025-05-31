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
    double? rating,

    /// The number of ratings for this place.
    int? ratingCount,

    /// The price level of the place.
    ///
    /// Typically represented as "$", "$$", "$$$", etc., indicating relative expense.
    String? priceLevel,

    /// The type or category of the place.
    ///
    /// Examples include "Restaurant", "Hotel", "Attraction", etc.
    required String type,

    /// The types/categories of the place (multiple).
    required List<String> types,

    /// {@template flutter_serper.results.phoneNumber}
    /// The phone number of the place.
    /// {@endtemplate}
    String? phoneNumber,

    /// The URL of the place's website.
    String? website,

    // /// The categories that the place belongs to.
    // ///
    // /// A list of descriptive tags associated with the place.
    // List<String>? categories, // Remove, field is not used

    /// The business hours of operation.
    ///
    /// A list of strings representing the opening hours for each day.
    Map<String, String>? openingHours,

    // /// User reviews of the place.
    // ///
    // /// A list of review objects containing detailed user feedback.
    // List<MapResultReview>? reviews, // Remove, field is not used

    // /// Photos of the place.
    // ///
    // /// A list of photo objects with URLs to images of the place.
    // List<MapResultPhoto>? photos, // Remove, field is not used

    // /// Additional information about the place.
    // ///
    // /// A map of key-value pairs containing various facts and details.
    // Map<String, dynamic>? additionalInfo, // Remove, field is not used

    /// A description of the place.
    ///
    /// Provides additional context or explanation about the place.
    String? description,

    /// The thumbnail image URL for the place.
    required String thumbnailUrl,

    /// The booking links for the place.
    List<String>? bookingLinks,

    /// The FID (feature id) for the place.
    required String fid,

    /// The latitude of the place.
    required double latitude,

    /// The longitude of the place.
    required double longitude,

    /// The Google Place ID for this place.
    required String placeId,

    /// The position of the place in the results.
    required int position,
  }) = _MapResult;

  /// Creates a [MapResult] from a JSON map.
  factory MapResult.fromJson(Map<String, dynamic> json) =>
      _$MapResultFromJson(json);
}
