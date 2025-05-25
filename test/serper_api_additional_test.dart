import 'package:dio/dio.dart';
import 'package:flutter_serper/flutter_serper.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'serper_api_additional_test.mocks.dart';

@GenerateMocks([Dio])
void main() {
  group('Serper API Additional Methods', () {
    late MockDio mockDio;
    late Serper serper;

    setUp(() {
      mockDio = MockDio();
      serper = Serper(apiKey: 'test-api-key', dio: mockDio);
    });

    test(
      'places method calls the correct endpoint and returns PlacesResponse',
      () async {
        // Arrange
        final expectedResponse = {
          'searchParameters': {'q': 'restaurants', 'location': 'Chicago'},
          'places': [
            {
              'title': 'Restaurant',
              'address': '123 Main St, Chicago, IL',
              'rating': 4.2,
              'reviewCount': 80,
              'position': 1,
            },
          ],
          'credits': 5,
        };

        when(
          mockDio.post(
            'https://google.serper.dev/places',
            data: anyNamed('data'),
            options: anyNamed('options'),
          ),
        ).thenAnswer(
          (_) async => Response(
            data: expectedResponse,
            statusCode: 200,
            requestOptions: RequestOptions(path: '/places'),
          ),
        );

        // Act
        final result = await serper.places([PlacesQuery(q: 'restaurants')]);

        // Assert
        expect(result, isA<PlacesResponse>());
        expect(result.places!.length, equals(1));
        expect(result.places!.first.title, equals('Restaurant'));
        expect(result.credits, equals(5));

        verify(
          mockDio.post(
            'https://google.serper.dev/places',
            data: anyNamed('data'),
            options: anyNamed('options'),
          ),
        ).called(1);
      },
    );

    test(
      'maps method calls the correct endpoint and returns MapsResponse',
      () async {
        // Arrange
        final expectedResponse = {
          'searchParameters': {
            'q': 'coffee shops',
            'location': 'San Francisco',
          },
          'maps': [
            {
              'title': 'Coffee Shop',
              'address': '123 Main St, San Francisco, CA',
              'rating': 4.5,
              'reviewCount': 100,
              'position': 1,
            },
          ],
          'credits': 5,
        };

        when(
          mockDio.post(
            'https://google.serper.dev/maps',
            data: anyNamed('data'),
            options: anyNamed('options'),
          ),
        ).thenAnswer(
          (_) async => Response(
            data: expectedResponse,
            statusCode: 200,
            requestOptions: RequestOptions(path: '/maps'),
          ),
        );

        // Act
        final result = await serper.maps([MapsQuery(q: 'coffee shops')]);

        // Assert
        expect(result, isA<MapsResponse>());
        expect(result.maps!.length, equals(1));
        expect(result.maps!.first.title, equals('Coffee Shop'));
        expect(result.credits, equals(5));

        verify(
          mockDio.post(
            'https://google.serper.dev/maps',
            data: anyNamed('data'),
            options: anyNamed('options'),
          ),
        ).called(1);
      },
    );

    test(
      'shopping method calls the correct endpoint and returns ShoppingResponse',
      () async {
        // Arrange
        final expectedResponse = {
          'searchParameters': {'q': 'smartphones', 'location': 'Boston'},
          'shopping': [
            {
              'title': 'Smartphone',
              'link': 'https://example.com/product',
              'price': '\$999',
              'source': 'Example Store',
              'position': 1,
            },
          ],
          'credits': 5,
        };

        when(
          mockDio.post(
            'https://google.serper.dev/shopping',
            data: anyNamed('data'),
            options: anyNamed('options'),
          ),
        ).thenAnswer(
          (_) async => Response(
            data: expectedResponse,
            statusCode: 200,
            requestOptions: RequestOptions(path: '/shopping'),
          ),
        );

        // Act
        final result = await serper.shopping([ShoppingQuery(q: 'smartphones')]);

        // Assert
        expect(result, isA<ShoppingResponse>());
        expect(result.shopping!.length, equals(1));
        expect(result.shopping!.first.title, equals('Smartphone'));
        expect(result.credits, equals(5));

        verify(
          mockDio.post(
            'https://google.serper.dev/shopping',
            data: anyNamed('data'),
            options: anyNamed('options'),
          ),
        ).called(1);
      },
    );

    test(
      'lens method calls the correct endpoint and returns LensResponse',
      () async {
        // Arrange
        final expectedResponse = {
          'searchParameters': {'imageUrl': 'https://example.com/image.jpg'},
          'lens': [
            {
              'title': 'Lens Result',
              'link': 'https://example.com/result',
              'thumbnail': 'https://example.com/thumbnail.jpg',
              'source': 'Example Source',
              'position': 1,
            },
          ],
          'credits': 5,
        };

        when(
          mockDio.post(
            'https://google.serper.dev/lens',
            data: anyNamed('data'),
            options: anyNamed('options'),
          ),
        ).thenAnswer(
          (_) async => Response(
            data: expectedResponse,
            statusCode: 200,
            requestOptions: RequestOptions(path: '/lens'),
          ),
        );

        // Act
        final result = await serper.lens([
          LensQuery(url: 'https://example.com/image.jpg'),
        ]);

        // Assert
        expect(result, isA<LensResponse>());
        expect(result.lens!.length, equals(1));
        expect(result.lens!.first.title, equals('Lens Result'));
        expect(result.credits, equals(5));

        verify(
          mockDio.post(
            'https://google.serper.dev/lens',
            data: anyNamed('data'),
            options: anyNamed('options'),
          ),
        ).called(1);
      },
    );

    test(
      'scholar method calls the correct endpoint and returns ScholarResponse',
      () async {
        // Arrange
        final expectedResponse = {
          'searchParameters': {'q': 'machine learning'},
          'scholar': [
            {
              'title': 'Research Paper',
              'link': 'https://example.com/paper',
              'snippet': 'This is a research paper',
              'authors': ['Author 1', 'Author 2'],
              'journal': 'Example Journal',
              'citations': 100,
              'year': 2023,
              'position': 1,
            },
          ],
          'credits': 5,
        };

        when(
          mockDio.post(
            'https://google.serper.dev/scholar',
            data: anyNamed('data'),
            options: anyNamed('options'),
          ),
        ).thenAnswer(
          (_) async => Response(
            data: expectedResponse,
            statusCode: 200,
            requestOptions: RequestOptions(path: '/scholar'),
          ),
        );

        // Act
        final result = await serper.scholar([
          ScholarQuery(q: 'machine learning'),
        ]);

        // Assert
        expect(result, isA<ScholarResponse>());
        expect(result.scholar!.length, equals(1));
        expect(result.scholar!.first.title, equals('Research Paper'));
        expect(result.credits, equals(5));

        verify(
          mockDio.post(
            'https://google.serper.dev/scholar',
            data: anyNamed('data'),
            options: anyNamed('options'),
          ),
        ).called(1);
      },
    );

    test(
      'patents method calls the correct endpoint and returns PatentsResponse',
      () async {
        // Arrange
        final expectedResponse = {
          'searchParameters': {'q': 'solar energy'},
          'patents': [
            {
              'title': 'Solar Energy Patent',
              'link': 'https://example.com/patent',
              'snippet': 'This is a patent description',
              'patentNumber': 'US12345678',
              'assignee': 'Example Company',
              'inventors': ['Inventor 1', 'Inventor 2'],
              'filingDate': '2022-01-01',
              'position': 1,
            },
          ],
          'credits': 5,
        };

        when(
          mockDio.post(
            'https://google.serper.dev/patents',
            data: anyNamed('data'),
            options: anyNamed('options'),
          ),
        ).thenAnswer(
          (_) async => Response(
            data: expectedResponse,
            statusCode: 200,
            requestOptions: RequestOptions(path: '/patents'),
          ),
        );

        // Act
        final result = await serper.patents([PatentsQuery(q: 'solar energy')]);

        // Assert
        expect(result, isA<PatentsResponse>());
        expect(result.patents!.length, equals(1));
        expect(result.patents!.first.title, equals('Solar Energy Patent'));
        expect(result.credits, equals(5));

        verify(
          mockDio.post(
            'https://google.serper.dev/patents',
            data: anyNamed('data'),
            options: anyNamed('options'),
          ),
        ).called(1);
      },
    );

    test(
      'reviews method calls the correct endpoint and returns ReviewsResponse',
      () async {
        // Arrange
        final expectedResponse = {
          'searchParameters': {'q': 'hotel reviews'},
          'reviews': [
            {
              'title': 'Hotel Review',
              'link': 'https://example.com/review',
              'snippet': 'This is a hotel review',
              'rating': 4.5,
              'position': 1,
            },
          ],
          'credits': 5,
        };

        when(
          mockDio.post(
            'https://google.serper.dev/reviews',
            data: anyNamed('data'),
            options: anyNamed('options'),
          ),
        ).thenAnswer(
          (_) async => Response(
            data: expectedResponse,
            statusCode: 200,
            requestOptions: RequestOptions(path: '/reviews'),
          ),
        );

        // Act
        final result = await serper.reviews([ReviewsQuery(q: 'hotel reviews')]);

        // Assert
        expect(result, isA<ReviewsResponse>());
        expect(result.reviews!.length, equals(1));
        expect(result.reviews!.first.title, equals('Hotel Review'));
        expect(result.credits, equals(5));

        verify(
          mockDio.post(
            'https://google.serper.dev/reviews',
            data: anyNamed('data'),
            options: anyNamed('options'),
          ),
        ).called(1);
      },
    );

    test(
      'autocomplete method calls the correct endpoint and returns AutocompleteResponse',
      () async {
        // Arrange
        final expectedResponse = {
          'searchParameters': {'q': 'how to'},
          'suggestions': [
            {'suggestion': 'how to cook pasta'},
            {'suggestion': 'how to learn programming'},
          ],
          'credits': 1,
        };

        when(
          mockDio.post(
            'https://google.serper.dev/autocomplete',
            data: anyNamed('data'),
            options: anyNamed('options'),
          ),
        ).thenAnswer(
          (_) async => Response(
            data: expectedResponse,
            statusCode: 200,
            requestOptions: RequestOptions(path: '/autocomplete'),
          ),
        );

        // Act
        final result = await serper.autocomplete([
          AutocompleteQuery(q: 'how to'),
        ]);

        // Assert
        expect(result, isA<AutocompleteResponse>());
        expect(result.suggestions.length, equals(2));
        expect(
          result.suggestions.first.suggestion,
          equals('how to cook pasta'),
        );
        expect(result.credits, equals(1));

        verify(
          mockDio.post(
            'https://google.serper.dev/autocomplete',
            data: anyNamed('data'),
            options: anyNamed('options'),
          ),
        ).called(1);
      },
    );

    test(
      'webpage method calls the correct endpoint and returns WebpageResponse',
      () async {
        // Arrange
        final expectedResponse = {
          'results': [
            {
              'url': 'https://example.com',
              'text': 'This is the extracted text content.',
              'title': 'Example Page',
              'markdown':
                  '# Example Page\n\nThis is the extracted text content.',
            },
          ],
          'credits': 10,
        };

        when(
          mockDio.post(
            'https://scrape.serper.dev/webpage',
            data: anyNamed('data'),
            options: anyNamed('options'),
          ),
        ).thenAnswer(
          (_) async => Response(
            data: expectedResponse,
            statusCode: 200,
            requestOptions: RequestOptions(path: '/webpage'),
          ),
        );

        // Act
        final result = await serper.webpage([
          WebpageQuery(url: 'https://example.com'),
        ]);

        // Assert
        expect(result, isA<WebpageResponse>());
        expect(result.results.length, equals(1));
        expect(result.results.first.url, equals('https://example.com'));
        expect(
          result.results.first.text,
          equals('This is the extracted text content.'),
        );
        expect(result.credits, equals(10));

        verify(
          mockDio.post(
            'https://scrape.serper.dev/webpage',
            data: anyNamed('data'),
            options: anyNamed('options'),
          ),
        ).called(1);
      },
    );

    test('callApiWithMixin works correctly with custom endpoints', () async {
      // Arrange
      final expectedResponse = {
        'searchParameters': {'q': 'test'},
        'customData': {'field': 'value'},
        'credits': 5,
      };

      when(
        mockDio.post(
          'https://google.serper.dev/custom-endpoint',
          data: anyNamed('data'),
          options: anyNamed('options'),
        ),
      ).thenAnswer(
        (_) async => Response(
          data: expectedResponse,
          statusCode: 200,
          requestOptions: RequestOptions(path: '/custom-endpoint'),
        ),
      );

      // Act
      final result = await serper.callApiWithMixin<SearchResponse>(
        '/custom-endpoint',
        [
          {'q': 'test'},
        ],
        SearchResponse.fromJson,
      );

      // Assert
      expect(result, isA<SearchResponse>());
      expect(result.credits, equals(5));

      verify(
        mockDio.post(
          'https://google.serper.dev/custom-endpoint',
          data: anyNamed('data'),
          options: anyNamed('options'),
        ),
      ).called(1);
    });
  });
}
