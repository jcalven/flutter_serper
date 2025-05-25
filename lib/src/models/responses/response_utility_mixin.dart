part of 'responses.dart';

mixin ResponseUtilityMixin<T> on SerperResponse<T> {
  /// The search parameters used for the autocomplete query.
  T get searchParameters;

  /// The number of credits used for this response.
  int get credits;
}
