part of 'responses.dart';

/// Mixin containing common fields for all Serper API responses.
/// This allows us to reuse the common fields in all response classes.
mixin SerperResponseMixin<T> {
  T get searchParameters;
  int get credits;
}
