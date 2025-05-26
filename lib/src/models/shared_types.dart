import 'package:json_annotation/json_annotation.dart';

export 'country_code.dart';
export 'language_code.dart';

/// Enum for time-based search parameter (tbs).
enum TbsValue {
  /// Past hour
  @JsonValue('qdr:h')
  pastHour('Past Hour'),

  /// Past day
  @JsonValue('qdr:d')
  pastDay('Past Day'),

  /// Past week
  @JsonValue('qdr:w')
  pastWeek('Past Week'),

  /// Past month
  @JsonValue('qdr:m')
  pastMonth('Past Month'),

  /// Past year
  @JsonValue('qdr:y')
  pastYear('Past Year');

  const TbsValue(this.displayName);
  final String displayName;

  /// Attempts to parse a string [value] into a [TbsValue] enum member.
  ///
  /// Returns the corresponding [TbsValue] if found, otherwise `null`.
  static TbsValue? tryParse(String? value) {
    if (value == null) return null;
    switch (value) {
      case 'qdr:h':
        return TbsValue.pastHour;
      case 'qdr:d':
        return TbsValue.pastDay;
      case 'qdr:w':
        return TbsValue.pastWeek;
      case 'qdr:m':
        return TbsValue.pastMonth;
      case 'qdr:y':
        return TbsValue.pastYear;
      // Allow matching by enum name as a fallback (case-insensitive)
      default:
        for (final tbsVal in values) {
          if (tbsVal.name.toLowerCase() == value.toLowerCase()) {
            return tbsVal;
          }
        }
        return null;
    }
  }
}

/// Enum for sorting options.
enum SortByValue {
  /// Sort by newest
  @JsonValue('newest')
  newest('Newest'),

  /// Sort by highest rating
  @JsonValue('highest_rating')
  highestRating('Highest Rating'),

  /// Sort by lowest rating
  @JsonValue('lowest_rating')
  lowestRating('Lowest Rating'),

  /// Sort by relevance
  @JsonValue('relevant')
  relevant('Relevant');

  const SortByValue(this.displayName);
  final String displayName;

  /// Attempts to parse a string [value] into a [SortByValue] enum member.
  ///
  /// Returns the corresponding [SortByValue] if found, otherwise `null`.
  static SortByValue? tryParse(String? value) {
    if (value == null) return null;
    switch (value) {
      case 'newest':
        return SortByValue.newest;
      case 'highest_rating':
        return SortByValue.highestRating;
      case 'lowest_rating':
        return SortByValue.lowestRating;
      case 'relevant':
        return SortByValue.relevant;
      // Allow matching by enum name as a fallback (case-insensitive)
      default:
        for (final sortVal in values) {
          if (sortVal.name.toLowerCase() == value.toLowerCase()) {
            return sortVal;
          }
        }
        return null;
    }
  }
}

/// Represents a geographical latitude and longitude.
class LatLng {
  final double latitude;
  final double longitude;

  const LatLng(this.latitude, this.longitude);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is LatLng &&
        other.latitude == latitude &&
        other.longitude == longitude;
  }

  @override
  int get hashCode => latitude.hashCode ^ longitude.hashCode;

  @override
  String toString() => 'LatLng(latitude: $latitude, longitude: $longitude)';
}

/// Converts a [LatLng] object to and from a "latitude,longitude" string.
class LatLngConverter implements JsonConverter<LatLng, String> {
  const LatLngConverter();

  @override
  LatLng fromJson(String json) {
    final parts = json.split(',');
    if (parts.length != 2) {
      throw FormatException('Invalid LatLng string format: $json');
    }
    return LatLng(double.parse(parts[0]), double.parse(parts[1]));
  }

  @override
  String toJson(LatLng object) {
    return '${object.latitude},${object.longitude}';
  }
}
