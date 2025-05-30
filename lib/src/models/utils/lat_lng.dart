import 'package:json_annotation/json_annotation.dart';

/// Represents a geographical latitude and longitude.
class LatLng {
  final double latitude;
  final double longitude;
  final double zoom;

  const LatLng(this.latitude, this.longitude, {this.zoom = 10.0});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is LatLng &&
        other.latitude == latitude &&
        other.longitude == longitude &&
        other.zoom == zoom;
  }

  @override
  int get hashCode => latitude.hashCode ^ longitude.hashCode ^ zoom.hashCode;

  @override
  String toString() =>
      'LatLng(latitude: $latitude, longitude: $longitude, zoom: $zoom)';
}

/// Converts a [LatLng] object to and from a "latitude,longitude,zoom" string.
class LatLngConverter implements JsonConverter<LatLng, String> {
  const LatLngConverter();

  @override
  LatLng fromJson(String json) {
    final parts = json.split(',');
    if (parts.length != 3) {
      throw FormatException('Invalid LatLng string format: $json');
    }
    final latitudeString = parts[0].replaceAll('@', '');
    final longitudeString = parts[1];
    final zoomString = parts[2].replaceAll('z', '');

    return LatLng(
      double.parse(latitudeString),
      double.parse(longitudeString),
      zoom: double.parse(zoomString),
    );
  }

  @override
  String toJson(LatLng object) {
    return '@${object.latitude},${object.longitude},${object.zoom}z';
  }
}
