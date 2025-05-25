import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_serper/flutter_serper.dart';
import 'package:flutter_serper/src/models/queries/queries.dart';
import 'package:flutter_serper/src/models/responses/responses.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'serper_api_additional_test.mocks.dart';

@GenerateMocks([Dio])
void main() {
  late MockDio mockDio;
  late Serper serper;

  setUp(() {
    mockDio = MockDio();
    serper = Serper(apiKey: 'test_api_key', dio: mockDio);

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
        data: {},
        statusCode: 200,
        requestOptions: RequestOptions(path: ''),
      ),
    );
  });

  group('Serper API Additional Methods', () {
    test(
      'places method calls the correct endpoint and returns PlacesResponse',
      () async {
        // Arrange
        final expectedResponse = {
          'searchParameters': {'q': 'restaurants'},
          'places': [
            {
              'position': 1,
              'title': 'Restaurant Name',
              'address': '123 Main St',
              'latitude': 34.0522,
              'longitude': -118.2437,
              'rating': 4.5,
              'ratingCount': 100,
              'category': 'Restaurant',
              'phoneNumber': '555-1234',
              'website': 'https://example.com',
              'cid': '12345',
              'placeId': '67890',
              'hours': 'Mon-Fri 9am-5pm',
              'operatingHours': {'Monday': '9am-5pm'},
              'priceLevel': '\$\$',
              'description': 'A great place to eat.',
              'thumbnailUrl': 'https://example.com/image.jpg',
            },
          ],
          'credits': 10,
        };
        final query = PlacesQuery(q: 'restaurants');
        final requestData = json.encode([query.toJson()]);

        when(
          mockDio.request(
            'https://google.serper.dev/places',
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
        final result = await serper.places([query]);

        // Assert
        verify(
          mockDio.request(
            'https://google.serper.dev/places',
            data: requestData,
            options: anyNamed('options'),
            cancelToken: anyNamed('cancelToken'),
            onReceiveProgress: anyNamed('onReceiveProgress'),
            onSendProgress: anyNamed('onSendProgress'),
            queryParameters: anyNamed('queryParameters'),
          ),
        ).called(1);

        expect(result, isA<PlacesResponse>());
        expect(result.places.length, equals(1));
        expect(result.places.first.title, equals('Restaurant Name'));
        expect(result.credits, equals(10));
      },
    );

    test(
      'maps method calls the correct endpoint and returns MapsResponse',
      () async {
        // Arrange
        final expectedResponse = {
          'searchParameters': {'q': 'coffee shops'},
          'place': {
            'title': 'Coffee Shop Name',
            'cid': '67890',
            'address': '456 Oak St',
            'rating': 4.8,
            'reviewCount': 200,
            'priceLevel': '\$',
            'type': 'Coffee Shop Type',
            'phone': '555-5678',
            'website': 'https://coffeeshop.example.com',
            'categories': ['Cafe', 'Bakery'],
            'openingHours': ['Mon-Sun 7am-7pm'],
            'reviews': [],
            'photos': [],
            'additionalInfo': {'outdoor_seating': 'yes'},
            'description': 'Best coffee in town.',
          },
          'credits': 5,
        };
        final query = MapsQuery(q: 'coffee shops');
        final requestData = json.encode([query.toJson()]);
        when(
          mockDio.request(
            'https://google.serper.dev/maps',
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
        final result = await serper.maps([query]);

        // Assert
        verify(
          mockDio.request(
            'https://google.serper.dev/maps',
            data: requestData,
            options: anyNamed('options'),
            cancelToken: anyNamed('cancelToken'),
            onReceiveProgress: anyNamed('onReceiveProgress'),
            onSendProgress: anyNamed('onSendProgress'),
            queryParameters: anyNamed('queryParameters'),
          ),
        ).called(1);
        expect(result, isA<MapsResponse>());
        expect(
          result.place.title,
          equals('Coffee Shop Name'),
        );
        expect(result.credits, equals(5));
      },
    );

    test(
      'shopping method calls the correct endpoint and returns ShoppingResponse',
      () async {
        // Arrange
        final expectedResponse = {
          'searchParameters': {'q': 'smartphones'},
          'shopping': [
            {
              'title': 'Smartphone X',
              'link': 'https://example.com/phone',
              'price': '\$699.99',
              'currency': 'USD',
              'source': 'Example Store',
              'imageUrl': 'https://example.com/phone.jpg',
              'rating': 4.7,
              'ratingCount': 500,
              'position': 1,
              'delivery': 'Free shipping',
            },
          ],
          'credits': 15,
        };
        final query = ShoppingQuery(q: 'smartphones');
        final requestData = json.encode([query.toJson()]);
        when(
          mockDio.request(
            'https://google.serper.dev/shopping',
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
        final result = await serper.shopping([query]);
        // Assert
        verify(
          mockDio.request(
            'https://google.serper.dev/shopping',
            data: requestData,
            options: anyNamed('options'),
            cancelToken: anyNamed('cancelToken'),
            onReceiveProgress: anyNamed('onReceiveProgress'),
            onSendProgress: anyNamed('onSendProgress'),
            queryParameters: anyNamed('queryParameters'),
          ),
        ).called(1);
        expect(result, isA<ShoppingResponse>());
        expect(result.shopping.length, equals(1));
        expect(result.shopping.first.title, equals('Smartphone X'));
        expect(result.credits, equals(15));
      },
    );

    test(
      'lens method calls the correct endpoint and returns LensResponse',
      () async {
        // Arrange
        final expectedResponse = {
          'searchParameters': {'url': 'https://example.com/image.jpg'},
          'organic': [
            {
              'title': 'Similar Image Result',
              'link': 'https://example.com/similar-image',
              'source': 'Example Source',
              'imageUrl': 'https://example.com/similar-image.jpg',
              'thumbnailUrl': 'https://example.com/similar-image-thumb.jpg',
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
        );
        expect(result.credits, equals(8));
      },
    );

    test('scholar method calls the correct endpoint and returns ScholarResponse', () async {
      // Arrange
      final expectedResponse = {
        'searchParameters': {'q': 'machine learning'},
        'organic': [
          {
            'title': 'Machine Learning Basics',
            'link': 'https://example.com/ml-basics',
            'snippet': 'An introduction to machine learning concepts.',
            'publicationInfo': 'Example University Press, Journal of ML',
            'year': 2023,
            'citedBy': 150,
            'pdfUrl': 'https://example.com/ml-basics.pdf',
            'id': 'scholar_id_123',
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
            {
              'title': 'Solar Panel Innovation',
              'link': 'https://example.com/solar-patent',
              'snippet': 'A new type of solar panel technology.',
              'inventor': 'Alice Brown, Bob Green',
              'assignee': 'Solar Corp',
              'publicationDate': '2022-05-20',
              'priorityDate': '2021-05-20',
              'filingDate': '2021-10-10',
              'grantDate': '2023-05-20',
              'publicationNumber': 'US1234567B2',
              'language': 'en',
              'thumbnailUrl': 'https://example.com/patent-thumb.jpg',
              'pdfUrl': 'https://example.com/patent.pdf',
              'figures': [
                {
                  'imageUrl': 'https://example.com/figure1.jpg',
                  'thumbnailUrl': 'https://example.com/figure1_thumb.jpg',
                },
              ],
              'position': 1,
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
            'runtimeType': 'withCid',
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
              'markdown': '# Example Website\nThis is an example snippet.',
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
            'https://scrape.serper.dev/webpage',
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
            'https://scrape.serper.dev/webpage',
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
          equals('# Example Website\nThis is an example snippet.'),
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

    test('callApiWithMixin works correctly with custom endpoints', () async {
      // Arrange
      final expectedResponseData = {
        'searchParameters': {'q': 'test'},
        'organic': [
          {
            'title': 'Test Result',
            'link': 'https://example.com/test',
            'snippet': 'This is a test snippet.',
            'position': 1,
          },
        ],
        'credits': 1,
      };
      final query = {'q': 'test'};
      final requestData = json.encode([query]);

      when(
        mockDio.request(
          'https://google.serper.dev/custom-endpoint',
          data: requestData,
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
          onReceiveProgress: anyNamed('onReceiveProgress'),
          onSendProgress: anyNamed('onSendProgress'),
          queryParameters: anyNamed('queryParameters'),
        ),
      ).thenAnswer(
        (_) async => Response(
          data: expectedResponseData,
          statusCode: 200,
          requestOptions: RequestOptions(path: ''),
        ),
      );

      // Act
      final result = await serper.callApiWithMixin<SearchResponse>(
        '/custom-endpoint',
        [query],
        SearchResponse.fromJson,
      );

      // Assert
      verify(
        mockDio.request(
          'https://google.serper.dev/custom-endpoint',
          data: requestData,
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
          onReceiveProgress: anyNamed('onReceiveProgress'),
          onSendProgress: anyNamed('onSendProgress'),
          queryParameters: anyNamed('queryParameters'),
        ),
      ).called(1);

      expect(result, isA<SearchResponse>());
      expect(result.organic.length, equals(1));
      expect(result.organic.first.title, equals('Test Result'));
      expect(result.credits, equals(1));
    });
  });
}
