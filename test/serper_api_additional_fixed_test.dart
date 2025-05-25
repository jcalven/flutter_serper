import 'package:dio/dio.dart';
import 'package:flutter_serper/flutter_serper.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'mocks.mocks.dart';

void main() {
  group('Serper API Additional Methods', () {
    late MockDio mockDio;
    late Serper serper;

    setUp(() {
      mockDio = MockDio();
      serper = Serper(apiKey: 'test-api-key', dio: mockDio);
    });

    test(
      'lens method calls the correct endpoint and returns LensResponse',
      () async {
        // Arrange
        final expectedResponse = {
          'searchParameters': {'url': 'https://example.com/image.jpg'},
          'organic': [
            {
              'title': 'Lens Result',
              'link': 'https://example.com/result',
              'thumbnailUrl': 'https://example.com/thumbnail.jpg',
              'source': 'Example Source',
              'position': 1,
            },
          ],
          'credits': 5,
        };

        when(
          mockDio.post(
            any,
            data: anyNamed('data'),
            options: anyNamed('options'),
          ),
        ).thenAnswer(
          (_) async => Response(
            data: expectedResponse,
            statusCode: 200,
            requestOptions: RequestOptions(path: ''),
          ),
        );

        // Act
        final result = await serper.lens([
          LensQuery(url: 'https://example.com/image.jpg'),
        ]);

        // Assert
        verify(
          mockDio.post(
            'https://google.serper.dev/lens',
            data: anyNamed('data'),
            options: anyNamed('options'),
          ),
        ).called(1);

        expect(result, isA<LensResponse>());
        expect(result.organic.length, equals(1));
        expect(result.organic.first.title, equals('Lens Result'));
        expect(result.credits, equals(5));
      },
    );

    test(
      'scholar method calls the correct endpoint and returns ScholarResponse',
      () async {
        // Arrange
        final expectedResponse = {
          'searchParameters': {'q': 'machine learning'},
          'organic': [
            {
              'title': 'Research Paper',
              'link': 'https://example.com/paper',
              'snippet': 'Abstract: This paper explores...',
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
            any,
            data: anyNamed('data'),
            options: anyNamed('options'),
          ),
        ).thenAnswer(
          (_) async => Response(
            data: expectedResponse,
            statusCode: 200,
            requestOptions: RequestOptions(path: ''),
          ),
        );

        // Act
        final result = await serper.scholar([
          ScholarQuery(q: 'machine learning'),
        ]);

        // Assert
        verify(
          mockDio.post(
            'https://google.serper.dev/scholar',
            data: anyNamed('data'),
            options: anyNamed('options'),
          ),
        ).called(1);

        expect(result, isA<ScholarResponse>());
        expect(result.organic.length, equals(1));
        expect(result.organic.first.title, equals('Research Paper'));
        expect(result.credits, equals(5));
      },
    );

    test(
      'patents method calls the correct endpoint and returns PatentsResponse',
      () async {
        // Arrange
        final expectedResponse = {
          'searchParameters': {'q': 'solar energy patents'},
          'organic': [
            {
              'title': 'Solar Energy Patent',
              'link': 'https://example.com/patent',
              'snippet': 'A method for converting solar energy...',
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
            any,
            data: anyNamed('data'),
            options: anyNamed('options'),
          ),
        ).thenAnswer(
          (_) async => Response(
            data: expectedResponse,
            statusCode: 200,
            requestOptions: RequestOptions(path: ''),
          ),
        );

        // Act
        final result = await serper.patents([
          PatentsQuery(q: 'solar energy patents'),
        ]);

        // Assert
        verify(
          mockDio.post(
            'https://google.serper.dev/patents',
            data: anyNamed('data'),
            options: anyNamed('options'),
          ),
        ).called(1);

        expect(result, isA<PatentsResponse>());
        expect(result.organic.length, equals(1));
        expect(result.organic.first.title, equals('Solar Energy Patent'));
        expect(result.credits, equals(5));
      },
    );

    test(
      'reviews method calls the correct endpoint and returns ReviewsResponse',
      () async {
        // Arrange
        final expectedResponse = {
          'searchParameters': {
            'q': 'hotel reviews',
            'cid': '12345',
            'fid': '67890',
            'placeId': 'ChIJIQBpAG2ahYAR_6128GcTUEo',
          },
          'reviews': [
            {
              'reviewTitle': 'Hotel Review',
              'reviewLink': 'https://example.com/review',
              'reviewSnippet': 'This is a hotel review',
              'starRating': 4.5,
              'position': 1,
            },
          ],
          'credits': 5,
        };

        when(
          mockDio.post(
            any,
            data: anyNamed('data'),
            options: anyNamed('options'),
          ),
        ).thenAnswer(
          (_) async => Response(
            data: expectedResponse,
            statusCode: 200,
            requestOptions: RequestOptions(path: ''),
          ),
        );

        // Act
        final result = await serper.reviews([
          ReviewsQuery(
            q: 'hotel reviews',
            cid: '12345',
            fid: '67890',
            placeId: 'ChIJIQBpAG2ahYAR_6128GcTUEo',
          ),
        ]);

        // Assert
        verify(
          mockDio.post(
            'https://google.serper.dev/reviews',
            data: anyNamed('data'),
            options: anyNamed('options'),
          ),
        ).called(1);

        expect(result, isA<ReviewsResponse>());
        expect(result.reviews.length, equals(1));
        expect(result.reviews.first.reviewTitle, equals('Hotel Review'));
        expect(result.credits, equals(5));
      },
    );

    test(
      'autocomplete method calls the correct endpoint and returns AutocompleteResponse',
      () async {
        // Arrange
        final expectedResponse = {
          'searchParameters': {'q': 'flo'},
          'suggestions': [
            {'value': 'flutter'},
            {'value': 'flowers'},
          ],
          'credits': 5,
        };

        when(
          mockDio.post(
            any,
            data: anyNamed('data'),
            options: anyNamed('options'),
          ),
        ).thenAnswer(
          (_) async => Response(
            data: expectedResponse,
            statusCode: 200,
            requestOptions: RequestOptions(path: ''),
          ),
        );

        // Act
        final result = await serper.autocomplete([AutocompleteQuery(q: 'flo')]);

        // Assert
        verify(
          mockDio.post(
            'https://google.serper.dev/autocomplete',
            data: anyNamed('data'),
            options: anyNamed('options'),
          ),
        ).called(1);

        expect(result, isA<AutocompleteResponse>());
        expect(result.suggestions.length, equals(2));
        expect(result.suggestions.first.value, equals('flutter'));
        expect(result.credits, equals(5));
      },
    );

    test(
      'webpage method calls the correct endpoint and returns WebpageResponse',
      () async {
        // Arrange
        final expectedResponse = {
          'searchParameters': {'url': 'https://example.com'},
          'results': [
            {
              'title': 'Example Website',
              'link': 'https://example.com',
              'snippet': 'This is an example website...',
              'position': 1,
            },
          ],
          'credits': 10,
        };

        when(
          mockDio.post(
            any,
            data: anyNamed('data'),
            options: anyNamed('options'),
          ),
        ).thenAnswer(
          (_) async => Response(
            data: expectedResponse,
            statusCode: 200,
            requestOptions: RequestOptions(path: ''),
          ),
        );

        // Act
        final result = await serper.webpage([
          WebpageQuery(url: 'https://example.com'),
        ]);

        // Assert
        verify(
          mockDio.post(
            'https://google.serper.dev/webpage',
            data: anyNamed('data'),
            options: anyNamed('options'),
          ),
        ).called(1);

        expect(result, isA<WebpageResponse>());
        expect(result.results.length, equals(1));
        expect(result.results.first.title, equals('Example Website'));
        expect(result.results.first.link, equals('https://example.com'));
        expect(result.credits, equals(10));
      },
    );
  });
}
