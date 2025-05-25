// A utility class that provides helper methods for working with Serper API responses.
import 'package:flutter_serper/src/models/responses/responses.dart';

/// A utility class that provides helper methods for working with Serper API responses.
class SerperResponseProcessor {
  /// Calculates the total credits used across multiple API responses.
  ///
  /// This method works with any response type that implements [ResponseUtilityMixin].
  ///
  /// Example:
  /// ```dart
  /// final searchResults = await serper.search([SearchQuery(q: 'coffee')]);
  /// final imageResults = await serper.images([ImagesQuery(q: 'coffee')]);
  ///
  /// final totalCredits = SerperResponseProcessor.calculateTotalCredits([
  ///   searchResults,
  ///   imageResults,
  /// ]);
  /// print('Total credits used: $totalCredits');
  /// ```
  static int calculateTotalCredits(List<ResponseUtilityMixin> responses) {
    return responses.fold(0, (total, response) => total + response.credits);
  }

  /// Extracts and merges search parameters from multiple API responses.
  ///
  /// This method works with any response type that implements [ResponseUtilityMixin].
  /// It's useful for tracking what parameters were used across multiple API calls.
  ///
  /// Example:
  /// ```dart
  /// final searchResults = await serper.search([SearchQuery(q: 'coffee')]);
  /// final imageResults = await serper.images([ImagesQuery(q: 'coffee beans')]);
  ///
  /// final allParams = SerperResponseProcessor.mergeSearchParameters([
  ///   searchResults,
  ///   imageResults,
  /// ]);
  /// print('All search parameters: $allParams');
  /// ```
  static List<Map<String, dynamic>> mergeSearchParameters(
    List<ResponseUtilityMixin> responses,
  ) {
    return responses
        .map(
          (response) =>
              (response.searchParameters as dynamic).toJson()
                  as Map<String, dynamic>,
        )
        .toList();
  }

  /// Creates a summary report from multiple API responses.
  ///
  /// This method generates a structured report containing credits used
  /// and search parameters from multiple API calls, making it easy to
  /// track API usage across different endpoints.
  ///
  /// Example:
  /// ```dart
  /// final searchResults = await serper.search([SearchQuery(q: 'coffee')]);
  /// final imageResults = await serper.images([ImagesQuery(q: 'coffee beans')]);
  ///
  /// final report = SerperResponseProcessor.createUsageReport([
  ///   searchResults,
  ///   imageResults,
  /// ]);
  /// print('API Usage Report: ${report['totalCredits']} credits used');
  /// ```
  static Map<String, dynamic> createUsageReport(
    List<ResponseUtilityMixin> responses,
  ) {
    final totalCredits = calculateTotalCredits(responses);
    final parameters = mergeSearchParameters(responses);

    return {
      'totalCredits': totalCredits,
      'averageCreditsPerCall':
          responses.isEmpty ? 0 : totalCredits / responses.length,
      'callCount': responses.length,
      'searchParameters': parameters,
      'timestamp': DateTime.now().toIso8601String(),
    };
  }
}
