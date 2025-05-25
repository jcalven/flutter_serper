import 'package:flutter_serper/flutter_serper.dart';
import 'package:test/test.dart';

void main() {
  group('Utility Tests', () {
    test('SerperApiException formats error messages correctly', () {
      final exception = SerperApiException('API Error', 400, {
        'error': 'Bad Request',
        'message': 'Invalid parameter',
      });

      expect(exception.toString(), contains('API Error'));
      expect(exception.toString(), contains('400'));
      expect(exception.statusCode, equals(400));
      expect(exception.responseData['error'], equals('Bad Request'));
    });

    test('SerperApiSettings provides correct default values', () {
      const settings = SerperApiSettings();

      expect(settings.baseUrl, equals('https://google.serper.dev'));
      expect(settings.connectTimeout, equals(5000));
      expect(settings.receiveTimeout, equals(3000));
      expect(settings.sendTimeout, equals(3000));
    });

    test('SerperApiSettings allows custom values', () {
      const settings = SerperApiSettings(
        baseUrl: 'https://custom.example.com',
        connectTimeout: 10000,
        receiveTimeout: 6000,
        sendTimeout: 6000,
      );

      expect(settings.baseUrl, equals('https://custom.example.com'));
      expect(settings.connectTimeout, equals(10000));
      expect(settings.receiveTimeout, equals(6000));
      expect(settings.sendTimeout, equals(6000));
    });
  });
}
