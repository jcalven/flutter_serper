part of 'queries.dart';

/// Query object for the Serper Maps API.
@freezed
abstract class MapsQuery with _$MapsQuery {
  const factory MapsQuery({
    /// {@macro QueryDocTemplates.queryStringDoc}
    required String q,

    /// {@macro QueryDocTemplates.languageCodeDoc}
    @JsonKey(name: 'hl') LanguageCode? languageCode,

    /// {@macro QueryDocTemplates.latLngDocClass}
    @JsonKey(name: 'll') @LatLngConverter() LatLng? latLng,

    /// {@macro QueryDocTemplates.placeIdDoc}
    String? placeId,

    /// {@macro QueryDocTemplates.cidDoc}
    String? cid,

    /// {@macro QueryDocTemplates.pageDoc}
    int? page,
  }) = _MapsQuery;

  /// Factory to create a MapsQuery with string-based inputs.
  factory MapsQuery.fromStrings({
    /// {@macro QueryDocTemplates.queryStringDoc}
    required String q,

    /// {@macro QueryDocTemplates.hlDoc}
    String? languageCode,

    /// {@macro QueryDocTemplates.latLngDocString}
    String? latLngString,

    /// {@macro QueryDocTemplates.placeIdDoc}
    String? placeId,

    /// {@macro QueryDocTemplates.cidDoc}
    String? cid,

    /// {@macro QueryDocTemplates.pageDoc}
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
      q: q,
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
