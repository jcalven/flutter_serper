import 'package:flutter_serper/flutter_serper.dart';
import 'package:test/test.dart';
import 'package:dio/dio.dart'; // Import Dio
// Import the base file to access Serper class for its static constants
import 'package:flutter_serper/src/flutter_serper_base.dart';

void main() {
  group('Utility Tests', () {
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
      // Instantiate Serper to access its internal Dio instance's options
      final serperClient = Serper(apiKey: 'test-key');
      final dioOptions = serperClient.dioOptions; // Access the exposed options

      // The baseUrl in BaseOptions might not be set if it's dynamically determined per request.
      // We will check the static constants for the intended default base URL for google.serper.dev
      expect(Serper.googleBaseUrl, equals('https://google.serper.dev'));
      expect(dioOptions.connectTimeout, equals(Serper.defaultConnectTimeout));
      expect(dioOptions.receiveTimeout, equals(Serper.defaultReceiveTimeout));
      expect(dioOptions.sendTimeout, equals(Serper.defaultSendTimeout));
    });

    test('Serper allows custom Dio instance with different options', () {
      // This test doesn't directly test SerperApiSettings/SerperOptions anymore.
      // Instead, it verifies that if a custom Dio instance is passed to Serper,
      // those custom options are used.
      final customBaseUrl = 'https://custom.example.com';
      final customConnectTimeout = const Duration(milliseconds: 10000);
      final customReceiveTimeout = const Duration(milliseconds: 6000);
      final customSendTimeout = const Duration(milliseconds: 6000);

      final customDio = Dio(
        BaseOptions(
          baseUrl: customBaseUrl, // Setting it here for the custom Dio instance
          connectTimeout: customConnectTimeout,
          receiveTimeout: customReceiveTimeout,
          sendTimeout: customSendTimeout,
        ),
      );

      final serperClient = Serper(apiKey: 'test-key', dio: customDio);
      final dioOptions = serperClient.dioOptions; // Access the exposed options

      expect(dioOptions.baseUrl, equals(customBaseUrl));
      expect(dioOptions.connectTimeout, equals(customConnectTimeout));
      expect(dioOptions.receiveTimeout, equals(customReceiveTimeout));
      expect(dioOptions.sendTimeout, equals(customSendTimeout));
    });
  });
}
