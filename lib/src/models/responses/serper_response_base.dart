part of 'responses.dart';

/// Class containing common fields for all Serper API responses.
/// This allows us to reuse the common fields in all response classes.
sealed class SerperResponse<T> {
  const SerperResponse({required this.searchParameters, required this.credits});

  // / The search parameters used for the query.
  final T searchParameters;

  /// The number of credits used for the query.
  final int credits;
}
