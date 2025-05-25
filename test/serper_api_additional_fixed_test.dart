import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_serper/flutter_serper.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'mocks.mocks.dart';

void main() {
  late MockDio mockDio;
  late Serper serper;

  setUp(() {
    mockDio = MockDio();
    serper = Serper(apiKey: 'test_api_key', dio: mockDio);

    // Default stub for any request to avoid MissingStubError for unhandled cases
    when(
      mockDio.request(
        any,
        data: anyNamed('data'),
        options: anyNamed('options'),
        cancelToken: anyNamed('cancelToken'),
        onReceiveProgress: anyNamed('onReceiveProgress'),
        onSendProgress: anyNamed('onSendProgress'),
        queryParameters: anyNamed('queryParameters'),
      ),
    ).thenAnswer(
      (_) async => Response(
        data: {}, // Default empty map response
        statusCode: 200,
        requestOptions: RequestOptions(path: ''),
      ),
    );
  });

  group('Serper API Additional Methods', () {
    test(
      'lens method calls the correct endpoint and returns LensResponse',
      () async {
        // Arrange
        final expectedResponse = {
          'searchParameters': {'url': 'https://example.com/image.jpg'},
          'organic': [
            // Changed from 'lens' to 'organic'
            {
              'title': 'Similar Image Result',
              'link': 'https://example.com/similar-image',
              'source': 'Example Source',
              'imageUrl': 'https://example.com/similar-image.jpg',
              'thumbnailUrl':
                  'https://example.com/similar-image-thumb.jpg', // Added non-nullable thumbnailUrl
              // 'position': 1, // LensResult doesn't have position
            },
          ],
          'credits': 8,
        };
        final query = LensQuery(url: 'https://example.com/image.jpg');
        final requestData = json.encode([query.toJson()]);

        when(
          mockDio.request(
            'https://google.serper.dev/lens',
            data: requestData,
            options: anyNamed('options'),
            cancelToken: anyNamed('cancelToken'),
            onReceiveProgress: anyNamed('onReceiveProgress'),
            onSendProgress: anyNamed('onSendProgress'),
            queryParameters: anyNamed('queryParameters'),
          ),
        ).thenAnswer(
          (_) async => Response(
            data: expectedResponse,
            statusCode: 200,
            requestOptions: RequestOptions(path: ''),
          ),
        );
        // Act
        final result = await serper.lens([query]);
        // Assert
        verify(
          mockDio.request(
            'https://google.serper.dev/lens',
            data: requestData,
            options: anyNamed('options'),
            cancelToken: anyNamed('cancelToken'),
            onReceiveProgress: anyNamed('onReceiveProgress'),
            onSendProgress: anyNamed('onSendProgress'),
            queryParameters: anyNamed('queryParameters'),
          ),
        ).called(1);
        expect(result, isA<LensResponse>());
        expect(result.organic.length, equals(1));
        expect(result.organic.first.title, equals('Similar Image Result'));
        expect(
          result.organic.first.thumbnailUrl,
          equals('https://example.com/similar-image-thumb.jpg'),
        ); // Added assertion for thumbnailUrl
        expect(result.credits, equals(8));
      },
    );

    test('scholar method calls the correct endpoint and returns ScholarResponse', () async {
      // Arrange
      final expectedResponse = {
        'searchParameters': {'q': 'machine learning'},
        'organic': [
          // Changed from 'scholar' to 'organic'
          {
            'title': 'Machine Learning Basics',
            'link': 'https://example.com/ml-basics',
            'snippet': 'An introduction to machine learning concepts.',
            // 'source': 'Example University', // ScholarResult uses publicationInfo
            'publicationInfo':
                'Example University Press, Journal of ML', // Added non-nullable publicationInfo
            // 'authors': ['John Doe', 'Jane Smith'], // ScholarResult doesn't have authors list
            'year': 2023, // Added non-nullable year
            // 'publicationDate': '2023-01-15', // ScholarResult uses year (int)
            'citedBy': 150, // Added non-nullable citedBy (int)
            // 'citedBy': {'value': 150, 'link': 'https://example.com/citations'}, // ScholarResult has citedBy as int
            // 'position': 1, // ScholarResult doesn't have position
            'pdfUrl':
                'https://example.com/ml-basics.pdf', // Added non-nullable pdfUrl
            'id': 'scholar_id_123', // Added non-nullable id
          },
        ],
        'credits': 12,
      };
      final query = ScholarQuery(q: 'machine learning');
      final requestData = json.encode([query.toJson()]);
      when(
        mockDio.request(
          'https://google.serper.dev/scholar',
          data: requestData,
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
          onReceiveProgress: anyNamed('onReceiveProgress'),
          onSendProgress: anyNamed('onSendProgress'),
          queryParameters: anyNamed('queryParameters'),
        ),
      ).thenAnswer(
        (_) async => Response(
          data: expectedResponse,
          statusCode: 200,
          requestOptions: RequestOptions(path: ''),
        ),
      );
      // Act
      final result = await serper.scholar([query]);
      // Assert
      verify(
        mockDio.request(
          'https://google.serper.dev/scholar',
          data: requestData,
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
          onReceiveProgress: anyNamed('onReceiveProgress'),
          onSendProgress: anyNamed('onSendProgress'),
          queryParameters: anyNamed('queryParameters'),
        ),
      ).called(1);
      expect(result, isA<ScholarResponse>());
      expect(result.organic.length, equals(1));
      expect(result.organic.first.title, equals('Machine Learning Basics'));
      expect(
        result.organic.first.publicationInfo,
        equals('Example University Press, Journal of ML'),
      );
      expect(result.organic.first.year, equals(2023));
      expect(result.organic.first.citedBy, equals(150));
      expect(
        result.organic.first.pdfUrl,
        equals('https://example.com/ml-basics.pdf'),
      );
      expect(result.organic.first.id, equals('scholar_id_123'));
      expect(result.credits, equals(12));
    });

    test(
      'patents method calls the correct endpoint and returns PatentsResponse',
      () async {
        // Arrange
        final expectedResponse = {
          'searchParameters': {'q': 'solar energy patents'},
          'organic': [
            // Changed from 'patents' to 'organic'
            {
              'title': 'Solar Panel Innovation',
              'link': 'https://example.com/solar-patent',
              'snippet': 'A new type of solar panel technology.',
              // 'source': 'USPTO', // PatentResult doesn't have source
              // 'patentOffice': 'US', // PatentResult doesn't have patentOffice
              'inventor':
                  'Alice Brown, Bob Green', // Added non-nullable inventor (String)
              'assignee': 'Solar Corp', // Added non-nullable assignee
              'publicationDate': '2022-05-20', // Non-nullable
              'priorityDate': '2021-05-20', // Non-nullable
              'filingDate': '2021-10-10', // Added non-nullable filingDate
              'grantDate': '2023-05-20', // Nullable, but good to include
              'patentNumber':
                  'US1234567B2', // Renamed from publicationNumber to patentNumber to match field, but model has publicationNumber
              'publicationNumber':
                  'US1234567B2', // Added non-nullable publicationNumber
              // 'applicationNumber': 'US2022/123456', // PatentResult doesn't have applicationNumber
              'language': 'en', // Added non-nullable language
              'thumbnailUrl':
                  'https://example.com/patent-thumb.jpg', // Added non-nullable thumbnailUrl
              'pdfUrl': 'https://example.com/patent.pdf', // Nullable
              'figures': [
                {
                  'imageUrl': 'https://example.com/figure1.jpg',
                  'thumbnailUrl': 'https://example.com/figure1_thumb.jpg',
                },
              ],
              'position': 1, // Non-nullable
            },
          ],
          'credits': 20,
        };
        final query = PatentsQuery(q: 'solar energy patents');
        final requestData = json.encode([query.toJson()]);
        when(
          mockDio.request(
            'https://google.serper.dev/patents',
            data: requestData,
            options: anyNamed('options'),
            cancelToken: anyNamed('cancelToken'),
            onReceiveProgress: anyNamed('onReceiveProgress'),
            onSendProgress: anyNamed('onSendProgress'),
            queryParameters: anyNamed('queryParameters'),
          ),
        ).thenAnswer(
          (_) async => Response(
            data: expectedResponse,
            statusCode: 200,
            requestOptions: RequestOptions(path: ''),
          ),
        );
        // Act
        final result = await serper.patents([query]);
        // Assert
        verify(
          mockDio.request(
            'https://google.serper.dev/patents',
            data: requestData,
            options: anyNamed('options'),
            cancelToken: anyNamed('cancelToken'),
            onReceiveProgress: anyNamed('onReceiveProgress'),
            onSendProgress: anyNamed('onSendProgress'),
            queryParameters: anyNamed('queryParameters'),
          ),
        ).called(1);
        expect(result, isA<PatentsResponse>());
        expect(result.organic.length, equals(1));
        final patent = result.organic.first;
        expect(patent.title, equals('Solar Panel Innovation'));
        expect(patent.inventor, equals('Alice Brown, Bob Green'));
        expect(patent.assignee, equals('Solar Corp'));
        expect(patent.publicationNumber, equals('US1234567B2'));
        expect(patent.language, equals('en'));
        expect(
          patent.thumbnailUrl,
          equals('https://example.com/patent-thumb.jpg'),
        );
        expect(result.credits, equals(20));
      },
    );

    test(
      'reviews method calls the correct endpoint and returns ReviewsResponse',
      () async {
        // Arrange
        final expectedResponse = {
          'searchParameters': {
            'cid': '12345',
            'q': 'hotel reviews',
            'runtimeType':
                'withCid', // Added runtimeType for ReviewsQuery deserialization
          },
          'reviews': [
            {
              'author': 'Jane D.',
              'authorUrl': 'https://example.com/jane',
              'text': 'Wonderful stay, highly recommend.',
              'rating': 5.0,
              'date': '2023-10-01',
              'position': 1,
            },
          ],
          'placeInfo': {
            'title': 'Hotel Serper',
            'address': '789 Pine St',
            'rating': 4.9,
            'ratingCount': 50,
          },
          'credits': 7,
        };
        final query = ReviewsQuery.withCid(cid: '12345', q: 'hotel reviews');
        final requestData = json.encode([query.toJson()]);
        when(
          mockDio.request(
            'https://google.serper.dev/reviews',
            data: requestData,
            options: anyNamed('options'),
            cancelToken: anyNamed('cancelToken'),
            onReceiveProgress: anyNamed('onReceiveProgress'),
            onSendProgress: anyNamed('onSendProgress'),
            queryParameters: anyNamed('queryParameters'),
          ),
        ).thenAnswer(
          (_) async => Response(
            data: expectedResponse,
            statusCode: 200,
            requestOptions: RequestOptions(path: ''),
          ),
        );
        // Act
        final result = await serper.reviews([query]);
        // Assert
        verify(
          mockDio.request(
            'https://google.serper.dev/reviews',
            data: requestData,
            options: anyNamed('options'),
            cancelToken: anyNamed('cancelToken'),
            onReceiveProgress: anyNamed('onReceiveProgress'),
            onSendProgress: anyNamed('onSendProgress'),
            queryParameters: anyNamed('queryParameters'),
          ),
        ).called(1);
        expect(result, isA<ReviewsResponse>());
        expect(result.reviews.length, equals(1));
        expect(
          result.reviews.first.text,
          equals('Wonderful stay, highly recommend.'),
        );
        expect(result.credits, equals(7));
      },
    );

    test(
      'autocomplete method calls the correct endpoint and returns AutocompleteResponse',
      () async {
        // Arrange
        final expectedResponse = {
          'searchParameters': {'q': 'flo'},
          'suggestions': [
            {'value': 'flutter documentation'},
            {'value': 'flower delivery'},
          ],
          'credits': 2,
        };
        final query = AutocompleteQuery(q: 'flo');
        final requestData = json.encode([query.toJson()]);
        when(
          mockDio.request(
            'https://google.serper.dev/autocomplete',
            data: requestData,
            options: anyNamed('options'),
            cancelToken: anyNamed('cancelToken'),
            onReceiveProgress: anyNamed('onReceiveProgress'),
            onSendProgress: anyNamed('onSendProgress'),
            queryParameters: anyNamed('queryParameters'),
          ),
        ).thenAnswer(
          (_) async => Response(
            data: expectedResponse,
            statusCode: 200,
            requestOptions: RequestOptions(path: ''),
          ),
        );
        // Act
        final result = await serper.autocomplete([query]);
        // Assert
        verify(
          mockDio.request(
            'https://google.serper.dev/autocomplete',
            data: requestData,
            options: anyNamed('options'),
            cancelToken: anyNamed('cancelToken'),
            onReceiveProgress: anyNamed('onReceiveProgress'),
            onSendProgress: anyNamed('onSendProgress'),
            queryParameters: anyNamed('queryParameters'),
          ),
        ).called(1);
        expect(result, isA<AutocompleteResponse>());
        expect(result.suggestions.length, equals(2));
        expect(result.suggestions.first.value, equals('flutter documentation'));
        expect(result.credits, equals(2));
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
              'text': 'This is the extracted text from example.com.',
              'markdown': '# Example Website\\nThis is an example snippet.',
              'metadata': {
                'title': 'Example Website',
                'link': 'https://example.com',
                'snippet': 'This is an example snippet.',
              },
              'credits': 1,
            },
          ],
        };
        final query = WebpageQuery(url: 'https://example.com');
        final requestData = json.encode([query.toJson()]);
        when(
          mockDio.request(
            'https://scrape.serper.dev/webpage', // Corrected URL
            data: requestData,
            options: anyNamed('options'),
            cancelToken: anyNamed('cancelToken'),
            onReceiveProgress: anyNamed('onReceiveProgress'),
            onSendProgress: anyNamed('onSendProgress'),
            queryParameters: anyNamed('queryParameters'),
          ),
        ).thenAnswer(
          (_) async => Response(
            data: expectedResponse,
            statusCode: 200,
            requestOptions: RequestOptions(path: ''),
          ),
        );

        // Act
        final result = await serper.webpage([query]);

        // Assert
        verify(
          mockDio.request(
            'https://scrape.serper.dev/webpage', // Corrected URL
            data: requestData,
            options: anyNamed('options'),
            cancelToken: anyNamed('cancelToken'),
            onReceiveProgress: anyNamed('onReceiveProgress'),
            onSendProgress: anyNamed('onSendProgress'),
            queryParameters: anyNamed('queryParameters'),
          ),
        ).called(1);

        expect(result, isA<WebpageResponse>());
        expect(result.results.length, equals(1));
        final firstResult = result.results.first;
        expect(
          firstResult.text,
          equals('This is the extracted text from example.com.'),
        );
        expect(
          firstResult.markdown,
          equals('# Example Website\\nThis is an example snippet.'),
        );
        expect(firstResult.metadata?['title'], equals('Example Website'));
        expect(firstResult.metadata?['link'], equals('https://example.com'));
        expect(
          firstResult.metadata?['snippet'],
          equals('This is an example snippet.'),
        );
        expect(firstResult.credits, equals(1));
      },
    );
  });
}
