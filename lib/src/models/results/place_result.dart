part of 'results.dart';

/// {@template placeResultDocComments}
///
/// An immutable result object representing a place result from the Serper Places API.
///
/// - [title]: The title of the place.
/// - [address]: The full address of the place.
/// - [latitude]: The latitude of the place.
/// - [longitude]: The longitude of the place.
/// - [phoneNumber]: The phone number of the place.
/// - [rating]: The rating of the place.
/// - [reviewCount]: The number of reviews for the place.
/// - [website]: The URL of the place's website.
/// - [type]: The type or category of the place.
/// - [priceLevel]: The price level of the place.
/// - [openingHours]: The business hours of operation.
/// - [cid]: The unique Customer ID (CID) of the place in Google Maps.
/// - [position]: The position of this result in the results list.
///
/// This class is used in the [PlacesResponse] to represent each place result returned by the API.
/// {@endtemplate}
@freezed
abstract class PlaceResult with _$PlaceResult {
  /// {@macro placeResultDocComments}
  /// Creates a [PlaceResult].
  const PlaceResult._();

  const factory PlaceResult({
    /// {@macro flutter_serper.results.title}
    String? title,

    /// The full address of the place.
    ///
    /// Typically includes street, city, state/province, and postal code.
    String? address,

    /// The latitude of the place.
    double? latitude,

    /// The longitude of the place.
    double? longitude,

    // {@macro flutter_serper.results.phoneNumber}
    String? phoneNumber,

    /// {@macro flutter_serper.results.rating}
    double? rating,

    /// {@macro flutter_serper.results.reviewCount}
    int? reviewCount,

    /// The URL of the place's website.
    String? website,

    /// The type or category of the place.
    ///
    /// Examples include "Restaurant", "Hotel", "Attraction", etc.
    @JsonKey(name: 'category') String? type,

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
    int? position,
  }) = _PlaceResult;

  /// Creates a [PlaceResult] from a JSON map.
  factory PlaceResult.fromJson(Map<String, dynamic> json) =>
      _$PlaceResultFromJson(json);

  /// {@macro flutter_serper.results.latLng}
  LatLng? get latLng =>
      (latitude != null && longitude != null)
          ? LatLng(latitude!, longitude!)
          : null;
}
