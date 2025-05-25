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
          'searchParameters': {'q': 'test', 'gl': 'us'},
          'organic': [
            {
              'title': 'Test Result',
              'link': 'https://example.com',
              'snippet': 'This is a test result',
              'position': 1,
            },
          ],
          'credits': 5,
        };

        when(
          mockDio.request(
            any,
            options: anyNamed('options'),
            data: anyNamed('data'),
          ),
        ).thenAnswer(
          (_) async => Response(
            data: expectedResponse,
            statusCode: 200,
            requestOptions: RequestOptions(path: ''),
          ),
        );

        // Act
        final result = await serper.search([SearchQuery(q: 'test', gl: 'us')]);

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
        expect(result.credits, equals(5));
      },
    );

    test(
      'images method calls the correct endpoint and returns ImagesResponse',
      () async {
        // Arrange
        final expectedResponse = {
          'searchParameters': {'q': 'test images', 'gl': 'us'},
          'images': [
            {
              'title': 'Test Image',
              'imageUrl': 'https://example.com/image.jpg',
              'source': 'example.com',
              'position': 1,
            },
          ],
          'credits': 5,
        };

        when(
          mockDio.request(
            any,
            options: anyNamed('options'),
            data: anyNamed('data'),
          ),
        ).thenAnswer(
          (_) async => Response(
            data: expectedResponse,
            statusCode: 200,
            requestOptions: RequestOptions(path: ''),
          ),
        );

        // Act
        final result = await serper.images([
          ImagesQuery(q: 'test images', gl: 'us'),
        ]);

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
        expect(
          result.images.first.imageUrl,
          equals('https://example.com/image.jpg'),
        );
        expect(result.credits, equals(5));
      },
    );

    test(
      'news method calls the correct endpoint and returns NewsResponse',
      () async {
        // Arrange
        final expectedResponse = {
          'searchParameters': {'q': 'test news', 'gl': 'us'},
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
          'credits': 5,
        };

        when(
          mockDio.request(
            any,
            options: anyNamed('options'),
            data: anyNamed('data'),
          ),
        ).thenAnswer(
          (_) async => Response(
            data: expectedResponse,
            statusCode: 200,
            requestOptions: RequestOptions(path: ''),
          ),
        );

        // Act
        final result = await serper.news([NewsQuery(q: 'test news', gl: 'us')]);

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
        expect(result.credits, equals(5));
      },
    );

    test(
      'videos method calls the correct endpoint and returns VideosResponse',
      () async {
        // Arrange
        final expectedResponse = {
          'searchParameters': {'q': 'test videos', 'gl': 'us'},
          'videos': [
            {
              'title': 'Test Video',
              'link': 'https://example.com/video',
              'thumbnailUrl': 'https://example.com/thumbnail.jpg',
              'position': 1,
            },
          ],
          'credits': 5,
        };

        when(
          mockDio.request(
            any,
            options: anyNamed('options'),
            data: anyNamed('data'),
          ),
        ).thenAnswer(
          (_) async => Response(
            data: expectedResponse,
            statusCode: 200,
            requestOptions: RequestOptions(path: ''),
          ),
        );

        // Act
        final result = await serper.videos([
          VideosQuery(q: 'test videos', gl: 'us'),
        ]);

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
        expect(result.credits, equals(5));
      },
    );

    test(
      'places method calls the correct endpoint and returns PlacesResponse',
      () async {
        // Arrange
        final expectedResponse = {
          'searchParameters': {'q': 'restaurants', 'gl': 'us'},
          'places': [
            {
              'title': 'Test Restaurant',
              'address': '123 Main St',
              'rating': 4.5,
              'reviewCount': 100,
              'position': 1,
            },
          ],
          'credits': 5,
        };

        when(
          mockDio.request(
            any,
            options: anyNamed('options'),
            data: anyNamed('data'),
          ),
        ).thenAnswer(
          (_) async => Response(
            data: expectedResponse,
            statusCode: 200,
            requestOptions: RequestOptions(path: ''),
          ),
        );

        // Act
        final result = await serper.places([
          PlacesQuery(q: 'restaurants', gl: 'us'),
        ]);

        // Assert
        verify(
          mockDio.request(
            'https://google.serper.dev/places',
            options: anyNamed('options'),
            data: anyNamed('data'),
          ),
        ).called(1);

        expect(result, isA<PlacesResponse>());
        expect(result.places.length, equals(1));
        expect(result.places.first.title, equals('Test Restaurant'));
        expect(result.credits, equals(5));
      },
    );

    test(
      'maps method calls the correct endpoint and returns MapsResponse',
      () async {
        // Arrange
        final expectedResponse = {
          'searchParameters': {'q': 'coffee shop', 'll': '37.7749,-122.4194'},
          'place': {
            'title': 'Test Coffee Shop',
            'address': '123 Main St',
            'rating': 4.5,
            'reviewCount': 100,
            'position': 1,
          },
          'credits': 5,
        };

        when(
          mockDio.request(
            any,
            options: anyNamed('options'),
            data: anyNamed('data'),
          ),
        ).thenAnswer(
          (_) async => Response(
            data: expectedResponse,
            statusCode: 200,
            requestOptions: RequestOptions(path: ''),
          ),
        );

        // Act
        final result = await serper.maps([
          MapsQuery(q: 'coffee shop', ll: '37.7749,-122.4194'),
        ]);

        // Assert
        verify(
          mockDio.request(
            'https://google.serper.dev/maps',
            options: anyNamed('options'),
            data: anyNamed('data'),
          ),
        ).called(1);

        expect(result, isA<MapsResponse>());
        expect(result.place.title, equals('Test Coffee Shop'));
        expect(result.credits, equals(5));
      },
    );

    test('Handles error responses and throws SerperApiException', () async {
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
          isA<SerperApiException>()
              .having((e) => e.statusCode, 'statusCode', 401)
              .having((e) => e.responseData, 'responseData', errorResponse),
        ),
      );
    });
  });
}
