import 'package:flutter_serper/flutter_serper.dart';
import 'package:test/test.dart';

void main() {
  group('SerperApiException Tests', () {
    test('SerperApiException correctly formats message', () {
      // Create exception with just a message
      final exception = SerperApiException(message: 'Test error message');

      // Verify
      expect(exception.message, equals('Test error message'));
      expect(exception.statusCode, isNull);
      expect(exception.endpoint, isNull);
      expect(exception.responseData, isNull);
      expect(exception.toString(), equals('Test error message'));
    });

    test('SerperApiException includes all provided details', () {
      // Create exception with all details
      final exception = SerperApiException(
        message: 'API error',
        statusCode: 401,
        endpoint: '/search',
        responseData: {'error': 'Invalid API key'},
      );

      // Verify
      expect(exception.message, equals('API error'));
      expect(exception.statusCode, equals(401));
      expect(exception.endpoint, equals('/search'));
      expect(exception.responseData, equals({'error': 'Invalid API key'}));
    });

    test('toString() returns the message and status code if available', () {
      // Create exception with all details
      final exception = SerperApiException(
        message: 'Complex error message',
        statusCode: 500,
        endpoint: '/images',
        responseData: {'error': 'Server error'},
      );

      // toString should return the message and status code
      expect(
        exception.toString(),
        equals('Complex error message (Status Code: 500)'),
      );

      // Test case where statusCode is null
      final exceptionWithoutStatusCode = SerperApiException(
        message: 'Another error',
        endpoint: '/search',
      );
      expect(exceptionWithoutStatusCode.toString(), equals('Another error'));
    });
  });
}
