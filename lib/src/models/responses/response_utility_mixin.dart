part of 'responses.dart';

mixin ResponseUtilityMixin<T> on SerperResponse<T> {
  /// {@macro flutter_serper.responses.searchParameters}
  T get searchParameters;

  /// {@macro flutter_serper.responses.credits}
  int get credits;
}
