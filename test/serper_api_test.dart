import 'dart:convert'; // For jsonEncode

import 'package:dio/dio.dart';
import 'package:flutter_serper/flutter_serper.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import 'serper_api_test.mocks.dart';

// Mock data for a successful search response
final Map<String, dynamic> mockSuccessSearchResponseJson = {
  "searchParameters": {"q": "test query", "type": "search", "engine": "google"},
  "organic": [
    {
      "title": "Test Result 1",
      "link": "https://example.com/result1",
      "snippet": "This is a test snippet for result 1.",
      "position": 1,
    },
  ],
  "credits": 5, // Added credits
};

// Example for an error response from Serper (contained within DioException's response)
final Map<String, dynamic> mockSerperErrorJson = {
  "statusCode": 401, // Or other error codes
  "message": "Invalid API key.",
};

@GenerateMocks([Dio])
void main() {
  late MockDio mockDio;
  late Serper serper;
  const String apiKey =
      'test-api-key'; // Using apiKey from serper_api_fixed_test_new.dart

  setUp(() {
    mockDio = MockDio();
    serper = Serper(apiKey: apiKey, dio: mockDio);
  });

  group('Serper API Client', () {
    group('search method', () {
      final searchQuery = SearchQuery(q: 'test query');
      final List<SearchQuery> searchQueries = [searchQuery];
      final String expectedPath = 'https://google.serper.dev/search';
      final String expectedBody = jsonEncode(
        searchQueries.map((e) => e.toJson()).toList(),
      );

      test('returns SearchResponse on successful API call', () async {
        when(
          mockDio.post(
            expectedPath,
            data: expectedBody,
            options: anyNamed('options'),
          ),
        ).thenAnswer(
          (_) async => Response(
            requestOptions: RequestOptions(path: expectedPath),
            data: mockSuccessSearchResponseJson,
            statusCode: 200,
          ),
        );

        final result = await serper.search(searchQueries);

        expect(result, isA<SearchResponse>());
        expect(result.searchParameters.q, 'test query');
        expect(result.organic.first.title, "Test Result 1");
        expect(result.credits, 5); // Added assertion for credits
        verify(
          mockDio.post(
            expectedPath,
            data: expectedBody,
            options: anyNamed('options'),
          ),
        ).called(1);
      });
    });

    group('images method', () {
      final imagesQuery = ImagesQuery(q: 'test images', gl: 'us');
      final List<ImagesQuery> imagesQueries = [imagesQuery];
      final String expectedPath = 'https://google.serper.dev/images';
      final String expectedBody = jsonEncode(
        imagesQueries.map((e) => e.toJson()).toList(),
      );
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

      test('calls the correct endpoint and returns ImagesResponse', () async {
        when(
          mockDio.post(
            expectedPath,
            data: expectedBody,
            options: anyNamed('options'),
          ),
        ).thenAnswer(
          (_) async => Response(
            requestOptions: RequestOptions(path: expectedPath),
            data: expectedResponse,
            statusCode: 200,
          ),
        );

        final result = await serper.images(imagesQueries);

        expect(result, isA<ImagesResponse>());
        expect(result.images.length, equals(1));
        expect(
          result.images.first.imageUrl,
          equals('https://example.com/image.jpg'),
        );
        expect(result.credits, equals(5));
        verify(
          mockDio.post(
            expectedPath,
            data: expectedBody,
            options: anyNamed('options'),
          ),
        ).called(1);
      });
    });

    group('news method', () {
      final newsQuery = NewsQuery(q: 'test news', gl: 'us');
      final List<NewsQuery> newsQueries = [newsQuery];
      final String expectedPath = 'https://google.serper.dev/news';
      final String expectedBody = jsonEncode(
        newsQueries.map((e) => e.toJson()).toList(),
      );
      final expectedResponse = {
        'searchParameters': {'q': 'test news', 'gl': 'us'},
        'news': [
          {
            'title': 'Test News',
            'link': 'https://example.com/news',
            'snippet': 'Test news snippet',
            'date': '2024-01-01',
            'source': 'News Source', // Added from full attachment
            'position': 1,
          },
        ],
        'credits': 5,
      };

      test('calls the correct endpoint and returns NewsResponse', () async {
        when(
          mockDio.post(
            expectedPath,
            data: expectedBody,
            options: anyNamed('options'),
          ),
        ).thenAnswer(
          (_) async => Response(
            requestOptions: RequestOptions(path: expectedPath),
            data: expectedResponse,
            statusCode: 200,
          ),
        );

        final result = await serper.news(newsQueries);

        expect(result, isA<NewsResponse>());
        expect(result.news.length, equals(1));
        expect(result.news.first.title, equals('Test News'));
        expect(result.credits, equals(5));
        verify(
          mockDio.post(
            expectedPath,
            data: expectedBody,
            options: anyNamed('options'),
          ),
        ).called(1);
      });
    });

    group('videos method', () {
      final videosQuery = VideosQuery(q: 'test videos', gl: 'us');
      final List<VideosQuery> videosQueries = [videosQuery];
      final String expectedPath = 'https://google.serper.dev/videos';
      final String expectedBody = jsonEncode(
        videosQueries.map((e) => e.toJson()).toList(),
      );
      final expectedResponse = {
        'searchParameters': {'q': 'test videos', 'gl': 'us'},
        'videos': [
          {
            'title': 'Test Video', // Added from full attachment
            'link': 'https://example.com/video', // Added from full attachment
            'thumbnailUrl':
                'https://example.com/thumbnail.jpg', // Added from full attachment
            'position': 1,
          },
        ],
        'credits': 5,
      };
      test('calls the correct endpoint and returns VideosResponse', () async {
        when(
          mockDio.post(
            expectedPath,
            data: expectedBody,
            options: anyNamed('options'),
          ),
        ).thenAnswer(
          (_) async => Response(
            requestOptions: RequestOptions(path: expectedPath),
            data: expectedResponse,
            statusCode: 200,
          ),
        );

        final result = await serper.videos(videosQueries);

        expect(result, isA<VideosResponse>());
        expect(result.videos.length, equals(1));
        expect(result.videos.first.title, equals('Test Video'));
        expect(result.credits, equals(5));
        verify(
          mockDio.post(
            expectedPath,
            data: expectedBody,
            options: anyNamed('options'),
          ),
        ).called(1);
      });
    });

    group('places method', () {
      final placesQuery = PlacesQuery(q: 'restaurants', gl: 'us');
      final List<PlacesQuery> placesQueries = [placesQuery];
      final String expectedPath = 'https://google.serper.dev/places';
      final String expectedBody = jsonEncode(
        placesQueries.map((e) => e.toJson()).toList(),
      );
      final expectedResponse = {
        'searchParameters': {'q': 'restaurants', 'gl': 'us'},
        'places': [
          {
            'title': 'Test Restaurant', // Added from full attachment
            'address': '123 Main St', // Added from full attachment
            'rating': 4.5, // Added from full attachment
            'reviewCount': 100, // Added from full attachment
            'position': 1,
          },
        ],
        'credits': 5,
      };
      test('calls the correct endpoint and returns PlacesResponse', () async {
        when(
          mockDio.post(
            expectedPath,
            data: expectedBody,
            options: anyNamed('options'),
          ),
        ).thenAnswer(
          (_) async => Response(
            requestOptions: RequestOptions(path: expectedPath),
            data: expectedResponse,
            statusCode: 200,
          ),
        );

        final result = await serper.places(placesQueries);

        expect(result, isA<PlacesResponse>());
        expect(result.places.length, equals(1));
        expect(result.places.first.title, equals('Test Restaurant'));
        expect(result.credits, equals(5));
        verify(
          mockDio.post(
            expectedPath,
            data: expectedBody,
            options: anyNamed('options'),
          ),
        ).called(1);
      });
    });

    group('maps method', () {
      final mapsQuery = MapsQuery(q: 'coffee shop', ll: '37.7749,-122.4194');
      // Note: Serper API for maps takes a single query object, not a list.
      // However, the Serper client methods consistently take a List<QueryType>.
      // This test will assume the client handles wrapping/unwrapping if needed,
      // or that the API might accept a list with one item.
      // If Serper.maps() strictly takes a single MapsQuery, this test body needs adjustment.
      // For now, following the pattern of other methods taking List<QueryType>.
      final List<MapsQuery> mapsQueries = [mapsQuery];
      final String expectedPath = 'https://google.serper.dev/maps';
      final String expectedBody = jsonEncode(
        mapsQueries.map((e) => e.toJson()).toList(),
      );
      final expectedResponse = {
        'searchParameters': {'q': 'coffee shop', 'll': '37.7749,-122.4194'},
        'place': {
          // MapsResponse has 'place' not 'places'
          'title': 'Test Coffee Shop',
          'address': '123 Main St',
          'rating': 4.5,
          'reviewCount': 100,
          'position': 1,
        },
        'credits': 5,
      };

      test('calls the correct endpoint and returns MapsResponse', () async {
        when(
          mockDio.post(
            expectedPath,
            data: expectedBody,
            options: anyNamed('options'),
          ),
        ).thenAnswer(
          (_) async => Response(
            requestOptions: RequestOptions(path: expectedPath),
            data: expectedResponse,
            statusCode: 200,
          ),
        );

        final result = await serper.maps(mapsQueries);

        expect(result, isA<MapsResponse>());
        expect(result.place.title, equals('Test Coffee Shop'));
        expect(result.credits, equals(5));
        verify(
          mockDio.post(
            expectedPath,
            data: expectedBody,
            options: anyNamed('options'),
          ),
        ).called(1);
      });
    });

    group('Error Handling', () {
      // Re-using searchQuery and searchQueries from the 'search method' group for error tests.
      // If those are not in scope, they need to be defined here or passed.
      // For simplicity, assuming they are accessible or re-declared if run in separate contexts.
      final searchQuery = SearchQuery(q: 'test query');
      final List<SearchQuery> searchQueries = [searchQuery];
      final String expectedPath = 'https://google.serper.dev/search';
      final String expectedBody = jsonEncode(
        searchQueries.map((e) => e.toJson()).toList(),
      );

      test(
        'throws SerperApiException on API error (e.g., 401, 403, 429)',
        () async {
          when(
            mockDio.post(
              expectedPath,
              data: expectedBody,
              options: anyNamed('options'),
            ),
          ).thenThrow(
            DioException(
              requestOptions: RequestOptions(path: expectedPath),
              response: Response(
                requestOptions: RequestOptions(path: expectedPath),
                data: mockSerperErrorJson,
                statusCode: 401,
              ),
            ),
          );

          expect(
            () => serper.search(searchQueries),
            throwsA(
              isA<SerperApiException>()
                  .having(
                    (e) => e.message,
                    'message',
                    contains('Invalid API key.'),
                  )
                  .having((e) => e.statusCode, 'statusCode', 401),
            ),
          );
          verify(
            mockDio.post(
              expectedPath,
              data: expectedBody,
              options: anyNamed('options'),
            ),
          ).called(1);
        },
      );

      test('throws SerperApiException on Dio network error', () async {
        when(
          mockDio.post(
            expectedPath,
            data: expectedBody,
            options: anyNamed('options'),
          ),
        ).thenThrow(
          DioException(
            requestOptions: RequestOptions(path: expectedPath),
            error: 'Network connection failed',
            type: DioExceptionType.connectionError,
          ),
        );

        expect(
          () => serper.search(searchQueries),
          throwsA(
            isA<SerperApiException>()
                .having(
                  (e) => e.message,
                  'message',
                  contains('Network connection failed'),
                )
                .having((e) => e.statusCode, 'statusCode', null),
          ),
        );
        verify(
          mockDio.post(
            expectedPath,
            data: expectedBody,
            options: anyNamed('options'),
          ),
        ).called(1);
      });
    });
    // TODO: Add test groups for other methods:
    // scholar, patents, shopping, lens, autocomplete, reviews, webpage
    // For 'webpage', the API takes a single WebpageQuery, not a list.
  });
}
