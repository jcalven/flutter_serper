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
