import 'package:flutter_serper/flutter_serper.dart';
import 'package:test/test.dart';

void main() {
  group('SerperResponseProcessor', () {
    late SearchResponse searchResponse;
    late ImagesResponse imagesResponse;

    setUp(() {
      // Setup test data
      searchResponse = SearchResponse.fromJson({
        'searchParameters': {'q': 'test', 'gl': 'us'},
        'organic': [
          {
            'title': 'Test Result',
            'link': 'https://example.com',
            'snippet': 'This is a test result',
            'position': 1,
          },
        ],
        'credits': 10,
      });

      imagesResponse = ImagesResponse.fromJson({
        'searchParameters': {'q': 'test image', 'gl': 'us'},
        'images': [
          {
            'title': 'Test Image',
            'imageUrl': 'https://example.com/image.jpg',
            'thumbnailUrl': 'https://example.com/thumbnail.jpg',
            'source': 'Example Source',
            'sourceUrl': 'https://example.com',
            'position': 1,
          },
        ],
        'credits': 5,
      });
    });

    test(
      'calculateTotalCredits returns the sum of credits from all responses',
      () {
        // Act
        final totalCredits = SerperResponseProcessor.calculateTotalCredits([
          searchResponse,
          imagesResponse,
        ]);

        // Assert
        expect(totalCredits, equals(15));
      },
    );

    test('calculateTotalCredits returns 0 for empty list', () {
      // Act
      final totalCredits = SerperResponseProcessor.calculateTotalCredits([]);

      // Assert
      expect(totalCredits, equals(0));
    });

    test('mergeSearchParameters combines parameters from all responses', () {
      // Act
      final mergedParams = SerperResponseProcessor.mergeSearchParameters([
        searchResponse,
        imagesResponse,
      ]);

      // Assert
      expect(mergedParams, hasLength(2));
      expect(mergedParams[0]['q'], equals('test'));
      expect(mergedParams[1]['q'], equals('test image'));
    });

    test('createUsageReport generates a complete report', () {
      // Act
      final report = SerperResponseProcessor.createUsageReport([
        searchResponse,
        imagesResponse,
      ]);

      // Assert
      expect(report['totalCredits'], equals(15));
      expect(report['averageCreditsPerCall'], equals(7.5));
      expect(report['callCount'], equals(2));
      expect(report['searchParameters'], hasLength(2));
      expect(report['timestamp'], isA<String>());
    });
  });
}
