part of 'responses.dart';

/// Base class containing common fields for all Serper API responses.
///
/// This abstract class allows us to reuse the common fields and
/// implementation in all Serper API response classes.
sealed class SerperResponse<T> {
  const SerperResponse();
}
