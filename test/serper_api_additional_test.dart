import 'dart:convert'; // Add this import for json.encode

import 'package:dio/dio.dart';
import 'package:flutter_serper/flutter_serper.dart';
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

    // Default stub for any request to avoid MissingStubError for unhandled cases
    // This can be overridden in specific tests if a particular response is needed.
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
          'place': // Changed from 'maps' to 'place' to match MapsResponse model
              {
            'title': 'Coffee Shop Name',
            'cid': '67890', // Required
            'address': '456 Oak St', // Required
            'rating': 4.8, // Required
            'reviewCount': 200, // Required
            'priceLevel': '\$', // Required
            'type': 'Coffee Shop Type', // Required
            'phone': '555-5678',
            'website': 'https://coffeeshop.example.com',
            'categories': ['Cafe', 'Bakery'],
            'openingHours': ['Mon-Sun 7am-7pm'],
            'reviews': [],
            'photos': [],
            'additionalInfo': {'outdoor_seating': 'yes'},
            'description': 'Best coffee in town.',
          }, // End of place object
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
        // expect(result.maps.length, equals(1)); // MapsResponse has a single `place` field, not a list of `maps`
        // expect(result.maps.first.title, equals('Coffee Shop Name'));
        expect(
          result.place.title,
          equals('Coffee Shop Name'),
        ); // Corrected to use result.place
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
        expect(result.organic.length, equals(1)); // Changed from result.lens
        expect(
          result.organic.first.title,
          equals('Similar Image Result'),
        ); // Changed from result.lens
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
            'publicationInfo':
                'Example University Press, Journal of ML', // Added non-nullable publicationInfo
            'year': 2023, // Added non-nullable year
            'citedBy': 150, // Added non-nullable citedBy (int)
            'pdfUrl':
                'https://example.com/ml-basics.pdf', // Added non-nullable pdfUrl
            'id': 'scholar_id_123', // Added non-nullable id
            // 'source': 'Example University', // ScholarResult uses publicationInfo
            // 'authors': ['John Doe', 'Jane Smith'], // ScholarResult doesn't have authors list
            // 'publicationDate': '2023-01-15', // ScholarResult uses year (int)
            // 'citedBy': {\n              //   'value': 150,\n              //   'link': 'https://example.com/citations'\n              // }, // ScholarResult has citedBy as int
            // 'position': 1, // ScholarResult doesn't have position
            // 'pdfLink': 'https://example.com/ml-basics.pdf', // pdfUrl is the correct field name
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
      expect(result.organic.length, equals(1)); // Changed from result.scholar
      expect(
        result.organic.first.title,
        equals('Machine Learning Basics'),
      ); // Changed from result.scholar
      expect(result.credits, equals(12));
    });

    test(
      'patents method calls the correct endpoint and returns PatentsResponse',
      () async {
        // Arrange
        final expectedResponse = {
          'searchParameters': {'q': 'solar energy'},
          'organic': [
            // Changed from 'patents' to 'organic'
            {
              'title': 'Solar Panel Innovation',
              'link': 'https://example.com/solar-patent',
              'snippet': 'A new type of solar panel technology.',
              'inventor':
                  'Alice Brown, Bob Green', // Added non-nullable inventor (String)
              'assignee': 'Solar Corp', // Added non-nullable assignee
              'publicationDate': '2022-05-20', // Non-nullable
              'priorityDate': '2021-05-20', // Non-nullable
              'filingDate': '2021-10-10', // Added non-nullable filingDate
              'grantDate': '2023-05-20', // Nullable, but good to include
              'publicationNumber':
                  'US1234567B2', // Added non-nullable publicationNumber
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
              // 'source': 'USPTO', // PatentResult doesn't have source
              // 'patentOffice': 'US', // PatentResult doesn't have patentOffice
              // 'inventors': ['Alice Brown', 'Bob Green'], // inventor is a String, not List<String>
              // 'patentNumber': 'US1234567B2', // publicationNumber is the correct field name
              // 'applicationNumber': 'US2022/123456', // PatentResult doesn't have applicationNumber
            },
          ],
          'credits': 20,
        };
        final query = PatentsQuery(q: 'solar energy');
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
        expect(result.organic.length, equals(1)); // Changed from result.patents
        expect(
          result.organic.first.title,
          equals('Solar Panel Innovation'),
        ); // Changed from result.patents
        expect(result.credits, equals(20));
      },
    );

    test(
      'reviews method calls the correct endpoint and returns ReviewsResponse',
      () async {
        // Arrange
        final expectedResponse = {
          'searchParameters': {
            'cid': 'test_cid',
            'runtimeType':
                'withCid', // Ensure runtimeType is correctly placed for ReviewsQuery deserialization
          },
          'reviews': [
            {
              'author': 'Jane D.', // Was reviewerName
              'authorUrl':
                  'https://example.com/jane_d_profile', // Was link, and made more specific
              'text': 'Wonderful stay, highly recommend.', // Was snippet
              'rating': 5.0, // Ensure it's a double
              'date': '2023-10-01',
              'position': 1,
              // Removed: title, source, link, imageUrl as they are not in PlaceReview model
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
        final query = ReviewsQuery.withCid(cid: 'test_cid', q: 'hotel reviews');
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
        // expect(result.reviews.first.title, equals('Great Hotel!')); // PlaceReview does not have a `title` field. It has `text` or `author`.
        expect(
          result.reviews.first.text,
          equals('Wonderful stay, highly recommend.'),
        ); // Corrected to assert `text`
        expect(result.credits, equals(7));
      },
    );

    test(
      'autocomplete method calls the correct endpoint and returns AutocompleteResponse',
      () async {
        // Arrange
        final expectedResponse = {
          'searchParameters': {'q': 'how to'},
          'suggestions': [
            {
              'value': 'how to tie a tie',
            }, // Corrected from `suggestion` to `value`
            {
              'value': 'how to make pancakes',
            }, // Corrected from `suggestion` to `value`
          ],
          'credits': 2,
        };
        final query = AutocompleteQuery(q: 'how to');
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
            data: expectedResponse, // This should be a Map, not a List
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
        expect(
          result.suggestions.first.value,
          equals('how to tie a tie'),
        ); // Corrected to use `value`
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
            data: expectedResponse, // This should be a Map, not a List
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
