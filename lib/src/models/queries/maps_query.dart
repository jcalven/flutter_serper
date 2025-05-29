part of 'queries.dart';

/// Query object for the Serper Maps API.
@freezed
abstract class MapsQuery with _$MapsQuery {
  const factory MapsQuery({
    /// {@macro flutter_serper.queries.queryString}
    @JsonKey(name: 'q') required String query,

    /// {@macro flutter_serper.queries.languageCodeEnum}
    @JsonKey(name: 'hl') LanguageCode? languageCode,

    /// {@template flutter_serper.queries.latLngClass}
    /// Optional latitude and longitude, as a [LatLng] object.
    ///
    /// Serialized as "latitude,longitude" for the 'll' parameter.
    /// {@endtemplate}
    @JsonKey(name: 'll') @LatLngConverter() LatLng? latLng,

    /// {@template flutter_serper.queries.placeId}
    /// Optional Google Place ID.
    ///
    /// This can be used to specify a particular place for the search.
    /// {@endtemplate}
    String? placeId,

    /// {@template flutter_serper.queries.cid}
    /// Optional Google CID (Customer ID).
    ///
    /// This can be used to identify a specific business or entity.
    /// {@endtemplate}
    String? cid,

    /// {@macro flutter_serper.queries.page}
    int? page,
  }) = _MapsQuery;

  /// Factory to create a MapsQuery with string-based inputs.
  factory MapsQuery.fromStrings({
    /// {@macro flutter_serper.queries.queryString}
    @JsonKey(name: 'q') required String query,

    /// {@macro flutter_serper.queries.languageCodeString}
    String? languageCode,

    /// {@template flutter_serper.queries.latLngString}
    /// Optional latitude and longitude, as a string in "latitude,longitude" format.
    ///
    /// Parsed to a [LatLng] object.
    /// {@endtemplate}
    String? latLngString,

    /// {@macro flutter_serper.queries.placeId}
    String? placeId,

    /// {@macro flutter_serper.queries.cid}
    String? cid,

    /// {@macro flutter_serper.queries.page}
    int? page,
  }) {
    LatLng? parsedLatLng;
    if (latLngString != null) {
      final parts = latLngString.split(',');
      if (parts.length == 2) {
        final lat = double.tryParse(parts[0].trim());
        final lng = double.tryParse(parts[1].trim());
        if (lat != null && lng != null) {
          parsedLatLng = LatLng(lat, lng);
        }
      }
    }
    return MapsQuery(
      query: query,
      languageCode: LanguageCode.tryParse(languageCode),
      latLng: parsedLatLng,
      placeId: placeId,
      cid: cid,
      page: page,
    );
  }

  factory MapsQuery.fromJson(Map<String, dynamic> json) =>
      _$MapsQueryFromJson(json);
}
