import 'package:flutter_serper/flutter_serper.dart';
import 'package:test/test.dart';
import 'package:dio/dio.dart';

void main() {
  group('SerperResponseProcessor - Additional Tests', () {
    late SearchResponse searchResponse;
    late ImagesResponse imagesResponse;
    late NewsResponse newsResponse;

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
            'position': 1,
          },
        ],
        'credits': 5,
      });

      newsResponse = NewsResponse.fromJson({
        'searchParameters': {'q': 'test news', 'gl': 'us'},
        'news': [
          {
            'title': 'Test News',
            'link': 'https://example.com/news',
            'snippet': 'This is a test news article',
            'source': 'Example Source',
            'date': '2 hours ago',
            'position': 1,
          },
        ],
        'credits': 8,
      });
    });

    test('calculateTotalCredits handles empty list', () {
      // Act
      final totalCredits = SerperResponseProcessor.calculateTotalCredits([]);

      // Assert
      expect(totalCredits, equals(0));
    });

    test('calculateTotalCredits works with single response', () {
      // Act
      final totalCredits = SerperResponseProcessor.calculateTotalCredits([
        searchResponse,
      ]);

      // Assert
      expect(totalCredits, equals(10));
    });

    test(
      'calculateTotalCredits works with multiple responses of different types',
      () {
        // Act
        final totalCredits = SerperResponseProcessor.calculateTotalCredits([
          searchResponse,
          imagesResponse,
          newsResponse,
        ]);

        // Assert
        expect(totalCredits, equals(23)); // 10 + 5 + 8
      },
    );

    test('mergeSearchParameters handles empty list', () {
      // Act
      final params = SerperResponseProcessor.mergeSearchParameters([]);

      // Assert
      expect(params, isEmpty);
    });

    test('mergeSearchParameters works with single response', () {
      // Act
      final params = SerperResponseProcessor.mergeSearchParameters([
        searchResponse,
      ]);

      // Assert
      expect(params.length, equals(1));
      expect(params.first, containsPair('q', 'test'));
      expect(params.first, containsPair('gl', 'us'));
    });

    test('mergeSearchParameters preserves parameter order', () {
      // Act
      final params = SerperResponseProcessor.mergeSearchParameters([
        searchResponse,
        imagesResponse,
        newsResponse,
      ]);

      // Assert
      expect(params.length, equals(3));
      expect(params[0], containsPair('q', 'test'));
      expect(params[1], containsPair('q', 'test image'));
      expect(params[2], containsPair('q', 'test news'));
    });

    test(
      'createUsageReport generates structured report for mixed response types',
      () {
        // Setup additional response with empty list instead of null
        final videosResponse = VideosResponse.fromJson({
          'searchParameters': {'q': 'test video'},
          'videos': [], // Empty list instead of null
          'credits': 3,
        });

        // Act
        final report = SerperResponseProcessor.createUsageReport([
          searchResponse,
          imagesResponse,
          newsResponse,
          videosResponse,
        ]);

        // Assert - check JSON structure
        expect(report, isA<Map<String, dynamic>>());
        expect(report['totalCredits'], equals(26)); // 10 + 5 + 8 + 3
        expect(report['averageCreditsPerCall'], equals(6.5)); // 26 / 4
        expect(report['callCount'], equals(4));
        expect(report['searchParameters'], hasLength(4));
        expect(report['timestamp'], isA<String>());

        // Verify search parameters are included
        final params = report['searchParameters'] as List;
        expect(params[0]['q'], equals('test'));
        expect(params[1]['q'], equals('test image'));
        expect(params[2]['q'], equals('test news'));
        expect(params[3]['q'], equals('test video'));
      },
    );
  });

  // New group for tests from utils_additional_fixed_test.dart (via utils_additional_test.dart)
  group('Utility Tests from utils_additional_fixed_test.dart', () {
    test('SerperApiException formats error messages correctly', () {
      final exception = SerperApiException(
        message: 'API Error',
        statusCode: 400,
        responseData: {'error': 'Bad Request', 'message': 'Invalid parameter'},
      );

      expect(exception.toString(), contains('API Error'));
      expect(exception.toString(), contains('400'));
      expect(exception.statusCode, equals(400));
      expect(exception.responseData?['error'], equals('Bad Request'));
    });

    test('Serper default Dio options provides correct default values', () {
      final serperClient = Serper(apiKey: 'test-key');
      final dioOptions = serperClient.dioOptions;

      expect(Serper.googleBaseUrl, equals('https://google.serper.dev'));
      expect(dioOptions.connectTimeout, equals(Serper.defaultConnectTimeout));
      expect(dioOptions.receiveTimeout, equals(Serper.defaultReceiveTimeout));
      expect(dioOptions.sendTimeout, equals(Serper.defaultSendTimeout));
    });

    test('Serper allows custom Dio instance with different options', () {
      final customBaseUrl = 'https://custom.example.com';
      final customConnectTimeout = const Duration(milliseconds: 10000);
      final customReceiveTimeout = const Duration(milliseconds: 6000);
      final customSendTimeout = const Duration(milliseconds: 6000);

      final customDio = Dio(
        BaseOptions(
          baseUrl: customBaseUrl,
          connectTimeout: customConnectTimeout,
          receiveTimeout: customReceiveTimeout,
          sendTimeout: customSendTimeout,
        ),
      );

      final serperClient = Serper(apiKey: 'test-key', dio: customDio);
      final dioOptions = serperClient.dioOptions;

      expect(dioOptions.baseUrl, equals(customBaseUrl));
      expect(dioOptions.connectTimeout, equals(customConnectTimeout));
      expect(dioOptions.receiveTimeout, equals(customReceiveTimeout));
      expect(dioOptions.sendTimeout, equals(customSendTimeout));
    });
  });
}
