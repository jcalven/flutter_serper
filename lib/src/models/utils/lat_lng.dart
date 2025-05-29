/// A simple class to represent a latitude and longitude pair.
class LatLng {
  final double latitude;
  final double longitude;

  LatLng({required this.latitude, required this.longitude});

  @override
  String toString() => '$latitude,$longitude';
}
