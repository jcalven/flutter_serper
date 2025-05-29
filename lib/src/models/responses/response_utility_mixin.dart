part of 'responses.dart';

mixin ResponseUtilityMixin<T> on SerperResponse<T> {
  /// {@template flutter_serper.responses.searchParameters}
  /// The query parameters used for this search request.
  ///
  /// Contains all the parameters that were sent with the original API request.
  /// {@endtemplate}
  T get searchParameters;

  /// {@template flutter_serper.responses.credits}
  /// The number of credits used for this API request.
  ///
  /// Serper API uses a credit-based system for billing, and this field indicates
  /// how many credits were consumed by this particular API call.
  /// {@endtemplate}
  int get credits;
}
