part of 'results.dart';

/// {@template mapResultDocComments}
///
/// An immutable result object representing a map result from the Serper Maps API.
///
/// - [title]: The title of the place.
/// - [cid]: The unique Customer ID (CID) of the place in Google Maps.
/// - [address]: The full address of the place.
/// - [rating]: The rating of the place.
/// - [ratingCount]: The number of ratings for this place.
/// - [priceLevel]: The price level of the place.
/// - [type]: The type or category of the place (nullable).
/// - [types]: The types/categories of the place (multiple, nullable).
/// - [phoneNumber]: The phone number of the place.
/// - [website]: The URL of the place's website.
/// - [openingHours]: The business hours of operation.
/// - [description]: A description of the place.
/// - [position]: The position of this result in the results list.
///
/// This class is used in the [MapsResponse] to represent each map result returned by the API.
/// {@endtemplate}
@freezed
abstract class MapResult with _$MapResult {
  /// {@macro mapResultDocComments}
  /// Creates a [MapResult].
  const MapResult._();

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
    /// May be null if the API doesn't provide type information.
    String? type,

    /// The types/categories of the place (multiple).
    ///
    /// May be null if the API doesn't provide multiple type categories.
    List<String>? types,

    /// {@template flutter_serper.results.phoneNumber}
    /// The phone number of the place.
    /// {@endtemplate}
    String? phoneNumber,

    /// The URL of the place's website.
    String? website,

    /// The business hours of operation.
    ///
    /// A list of strings representing the opening hours for each day.
    Map<String, String>? openingHours,

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

  /// {@template flutter_serper.results.latLng}
  /// The [latLng] property is derived from the [latitude] and [longitude] with
  /// a default zoom level.
  /// {@endtemplate}
  LatLng? get latLng => LatLng(latitude, longitude);
}
