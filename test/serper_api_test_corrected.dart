import 'package:dio/dio.dart';
import 'package:flutter_serper/flutter_serper.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'mocks.mocks.dart';

void main() {
  group('Serper API Methods', () {
    late MockDio mockDio;
    late Serper serper;

    setUp(() {
      mockDio = MockDio();
      serper = Serper(apiKey: 'test-api-key', dio: mockDio);
    });

    test(
      'search method calls the correct endpoint and returns SearchResponse',
      () async {
        // Arrange
        final expectedResponse = {
          'searchParameters': {'q': 'test'},
          'organic': [
            {
              'title': 'Test Result',
              'link': 'https://example.com',
              'snippet': 'This is a test result',
              'position': 1,
            },
          ],
          'credits': 10,
        };

        when(
          mockDio.request(
            'https://google.serper.dev/search',
            options: anyNamed('options'),
            data: anyNamed('data'),
          ),
        ).thenAnswer(
          (_) async => Response(
            data: expectedResponse,
            statusCode: 200,
            requestOptions: RequestOptions(path: '/search'),
          ),
        );

        // Act
        final result = await serper.search([SearchQuery(q: 'test')]);

        // Assert
        verify(
          mockDio.request(
            'https://google.serper.dev/search',
            options: anyNamed('options'),
            data: anyNamed('data'),
          ),
        ).called(1);

        expect(result, isA<SearchResponse>());
        expect(result.organic.length, equals(1));
        expect(result.organic.first.title, equals('Test Result'));
        expect(result.credits, equals(10));
      },
    );

    test(
      'images method calls the correct endpoint and returns ImagesResponse',
      () async {
        // Arrange
        final expectedResponse = {
          'searchParameters': {'q': 'test image'},
          'images': [
            {
              'title': 'Test Image',
              'imageUrl': 'https://example.com/image.jpg',
              'position': 1,
            },
          ],
          'credits': 10,
        };

        when(
          mockDio.request(
            'https://google.serper.dev/images',
            options: anyNamed('options'),
            data: anyNamed('data'),
          ),
        ).thenAnswer(
          (_) async => Response(
            data: expectedResponse,
            statusCode: 200,
            requestOptions: RequestOptions(path: '/images'),
          ),
        );

        // Act
        final result = await serper.images([ImagesQuery(q: 'test image')]);

        // Assert
        verify(
          mockDio.request(
            'https://google.serper.dev/images',
            options: anyNamed('options'),
            data: anyNamed('data'),
          ),
        ).called(1);

        expect(result, isA<ImagesResponse>());
        expect(result.images.length, equals(1));
        expect(result.images.first.title, equals('Test Image'));
        expect(result.credits, equals(10));
      },
    );

    test(
      'videos method calls the correct endpoint and returns VideosResponse',
      () async {
        // Arrange
        final expectedResponse = {
          'searchParameters': {'q': 'test video'},
          'videos': [
            {
              'title': 'Test Video',
              'link': 'https://example.com/video',
              'thumbnailUrl': 'https://example.com/thumbnail.jpg',
              'position': 1,
            },
          ],
          'credits': 10,
        };

        when(
          mockDio.request(
            'https://google.serper.dev/videos',
            options: anyNamed('options'),
            data: anyNamed('data'),
          ),
        ).thenAnswer(
          (_) async => Response(
            data: expectedResponse,
            statusCode: 200,
            requestOptions: RequestOptions(path: '/videos'),
          ),
        );

        // Act
        final result = await serper.videos([VideosQuery(q: 'test video')]);

        // Assert
        verify(
          mockDio.request(
            'https://google.serper.dev/videos',
            options: anyNamed('options'),
            data: anyNamed('data'),
          ),
        ).called(1);

        expect(result, isA<VideosResponse>());
        expect(result.videos.length, equals(1));
        expect(result.videos.first.title, equals('Test Video'));
        expect(result.credits, equals(10));
      },
    );

    test(
      'news method calls the correct endpoint and returns NewsResponse',
      () async {
        // Arrange
        final expectedResponse = {
          'searchParameters': {'q': 'test news'},
          'news': [
            {
              'title': 'Test News',
              'link': 'https://example.com/news',
              'snippet': 'Test news snippet',
              'date': '2024-01-01',
              'source': 'News Source',
              'position': 1,
            },
          ],
          'credits': 10,
        };

        when(
          mockDio.request(
            'https://google.serper.dev/news',
            options: anyNamed('options'),
            data: anyNamed('data'),
          ),
        ).thenAnswer(
          (_) async => Response(
            data: expectedResponse,
            statusCode: 200,
            requestOptions: RequestOptions(path: '/news'),
          ),
        );

        // Act
        final result = await serper.news([NewsQuery(q: 'test news')]);

        // Assert
        verify(
          mockDio.request(
            'https://google.serper.dev/news',
            options: anyNamed('options'),
            data: anyNamed('data'),
          ),
        ).called(1);

        expect(result, isA<NewsResponse>());
        expect(result.news.length, equals(1));
        expect(result.news.first.title, equals('Test News'));
        expect(result.credits, equals(10));
      },
    );

    test('error handling works correctly', () async {
      // Arrange
      final errorResponse = {
        'error': 'Invalid API key',
        'message': 'The API key provided is not valid',
      };

      when(
        mockDio.request(
          any,
          options: anyNamed('options'),
          data: anyNamed('data'),
        ),
      ).thenThrow(
        DioException(
          requestOptions: RequestOptions(path: ''),
          response: Response(
            data: errorResponse,
            statusCode: 401,
            requestOptions: RequestOptions(path: ''),
          ),
        ),
      );

      // Act & Assert
      expect(
        () => serper.search([SearchQuery(q: 'test')]),
        throwsA(
          isA<SerperApiException>().having(
            (e) => e.message,
            'message',
            contains('Invalid API key'),
          ),
        ),
      );

      verify(
        mockDio.request(
          any,
          options: anyNamed('options'),
          data: anyNamed('data'),
        ),
      ).called(1);
    });

    test('network error handling works correctly', () async {
      // Arrange
      when(
        mockDio.request(
          any,
          options: anyNamed('options'),
          data: anyNamed('data'),
        ),
      ).thenThrow(
        DioException(
          requestOptions: RequestOptions(path: ''),
          message: 'Network error',
        ),
      );

      // Act & Assert
      expect(
        () => serper.search([SearchQuery(q: 'test')]),
        throwsA(
          isA<SerperApiException>().having(
            (e) => e.message,
            'message',
            contains('Network error'),
          ),
        ),
      );

      verify(
        mockDio.request(
          any,
          options: anyNamed('options'),
          data: anyNamed('data'),
        ),
      ).called(1);
    });

    test('generic error handling works correctly', () async {
      // Arrange
      when(
        mockDio.request(
          any,
          options: anyNamed('options'),
          data: anyNamed('data'),
        ),
      ).thenThrow(Exception('Something went wrong'));

      // Act & Assert
      expect(
        () => serper.search([SearchQuery(q: 'test')]),
        throwsA(isA<SerperApiException>()),
      );

      verify(
        mockDio.request(
          any,
          options: anyNamed('options'),
          data: anyNamed('data'),
        ),
      ).called(1);
    });
  });
}
