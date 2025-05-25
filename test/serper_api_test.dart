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
      final String expectedPath = 'https://google.serper.dev/search';
      final String expectedBody = jsonEncode([searchQuery.toJson()]);

      test('returns SearchResponse on successful API call', () async {
        when(
          mockDio.request(
            // Changed from mockDio.post
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

        final result = await serper.search(
          searchQuery,
        ); // Changed from searchQueries

        expect(result, isA<SearchResponse>());
        expect(result.searchParameters.q, 'test query');
        expect(result.organic.first.title, "Test Result 1");
        expect(result.credits, 5); // Added assertion for credits
        verify(
          mockDio.request(
            // Changed from mockDio.post
            expectedPath,
            data: expectedBody,
            options: anyNamed('options'),
          ),
        ).called(1);
      });
    });

    group('images method', () {
      final imagesQuery = ImagesQuery(q: 'test images', gl: 'us');
      final String expectedPath = 'https://google.serper.dev/images';
      final String expectedBody = jsonEncode([imagesQuery.toJson()]);
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
          mockDio.request(
            // Changed from mockDio.post
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

        final result = await serper.images(
          imagesQuery,
        ); // Changed from imagesQueries

        expect(result, isA<ImagesResponse>());
        expect(result.images.length, equals(1));
        expect(
          result.images.first.imageUrl,
          equals('https://example.com/image.jpg'),
        );
        expect(result.credits, equals(5));
        verify(
          mockDio.request(
            // Changed from mockDio.post
            expectedPath,
            data: expectedBody,
            options: anyNamed('options'),
          ),
        ).called(1);
      });
    });

    group('news method', () {
      final newsQuery = NewsQuery(q: 'test news', gl: 'us');
      final String expectedPath = 'https://google.serper.dev/news';
      final String expectedBody = jsonEncode([newsQuery.toJson()]);
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
          mockDio.request(
            // Changed from mockDio.post
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

        final result = await serper.news(newsQuery); // Changed from newsQueries

        expect(result, isA<NewsResponse>());
        expect(result.news.length, equals(1));
        expect(result.news.first.title, equals('Test News'));
        expect(result.credits, equals(5));
        verify(
          mockDio.request(
            // Changed from mockDio.post
            expectedPath,
            data: expectedBody,
            options: anyNamed('options'),
          ),
        ).called(1);
      });
    });

    group('videos method', () {
      final videosQuery = VideosQuery(q: 'test videos', gl: 'us');
      final String expectedPath = 'https://google.serper.dev/videos';
      final String expectedBody = jsonEncode([videosQuery.toJson()]);
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
          mockDio.request(
            // Changed from mockDio.post
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

        final result = await serper.videos(
          videosQuery,
        ); // Changed from videosQueries

        expect(result, isA<VideosResponse>());
        expect(result.videos.length, equals(1));
        expect(result.videos.first.title, equals('Test Video'));
        expect(result.credits, equals(5));
        verify(
          mockDio.request(
            // Changed from mockDio.post
            expectedPath,
            data: expectedBody,
            options: anyNamed('options'),
          ),
        ).called(1);
      });
    });

    // Tests from serper_api_additional_test.dart begin here
    // Replacing existing 'places method'
    group('places method', () {
      test('calls the correct endpoint and returns PlacesResponse', () async {
        // Arrange
        final expectedResponse = {
          'searchParameters': {'q': 'restaurants'},
          'places': [
            {
              'title': 'Restaurant Name', // From additional_test
              'address': '123 Food St', // From additional_test
              'latitude': 34.0522, // From additional_test
              'longitude': -118.2437, // From additional_test
              'rating': 4.2, // From additional_test
              'reviewCount': 85, // From additional_test
              'type': 'Restaurant Type', // From additional_test
              'phoneNumber': '+1234567890', // From additional_test
              'website':
                  'http://restaurant.example.com', // From additional_test
              'position': 1,
            },
          ],
          'credits': 10,
        };
        final query = PlacesQuery(q: 'restaurants');
        final requestData = json.encode([query.toJson()]);

        when(
          mockDio.request(
            'https://google.serper.dev/places', // Corrected: Use full path
            data: requestData,
            options: anyNamed('options'),
          ),
        ).thenAnswer(
          (_) async => Response(
            data: expectedResponse,
            statusCode: 200,
            requestOptions: RequestOptions(
              path: 'https://google.serper.dev/places',
            ), // Corrected: Use full path
          ),
        );

        // Act
        final result = await serper.places(query); // Changed from [query]

        // Assert
        verify(
          mockDio.request(
            'https://google.serper.dev/places', // Corrected: Use full path
            data: requestData,
            options: anyNamed('options'),
          ),
        ).called(1);

        expect(result, isA<PlacesResponse>());
        expect(result.places.length, equals(1));
        expect(result.places.first.title, equals('Restaurant Name'));
        expect(result.credits, equals(10));
      });
    });

    // Replacing existing 'maps method'
    group('maps method', () {
      test('calls the correct endpoint and returns MapsResponse', () async {
        // Arrange
        final expectedResponse = {
          'searchParameters': {'q': 'coffee shops'},
          'place': {
            'title': 'Coffee Shop Name', // From additional_test
            'address': '456 Bean Ave', // From additional_test
            'latitude': 34.0522, // From additional_test
            'longitude': -118.2437, // From additional_test
            'rating': 4.8, // From additional_test
            'reviewCount': 120, // From additional_test
            'type': 'Cafe', // From additional_test
            'description': 'Best coffee in town.',
            'cid': 'test-cid-maps', // From additional_test
            'priceLevel': '\$\$', // Corrected: Removed extra backslashes
            'position': 1,
          },
          'credits': 5,
        };
        final query = MapsQuery(q: 'coffee shops');
        final requestData = json.encode([query.toJson()]);
        when(
          mockDio.request(
            'https://google.serper.dev/maps', // Corrected: Use full path
            data: requestData,
            options: anyNamed('options'),
          ),
        ).thenAnswer(
          (_) async => Response(
            data: expectedResponse,
            statusCode: 200,
            requestOptions: RequestOptions(
              path: 'https://google.serper.dev/maps',
            ), // Corrected: Use full path
          ),
        );
        // Act
        final result = await serper.maps(query); // Changed from [query]

        // Assert
        verify(
          mockDio.request(
            'https://google.serper.dev/maps', // Corrected: Use full path
            data: requestData,
            options: anyNamed('options'),
          ),
        ).called(1);
        expect(result, isA<MapsResponse>());
        expect(result.place.title, equals('Coffee Shop Name'));
        expect(result.credits, equals(5));
      });
    });

    group('shopping method', () {
      test('calls the correct endpoint and returns ShoppingResponse', () async {
        // Arrange
        final expectedResponse = {
          'searchParameters': {'q': 'smartphones'},
          'shopping': [
            {
              'title': 'Smartphone X', // From additional_test
              'price': '\$699.99',
              'source': 'Seller Store', // From additional_test
              'imageUrl':
                  'http://example.com/smartphone.jpg', // From additional_test
              'rating': 4.5,
              'reviews': 200,
              'position': 1,
              'link':
                  'http://example.com/smartphone', // Added missing non-nullable field
              'delivery':
                  'Usually ships in 2 days', // Added missing non-nullable field
            },
          ],
          'credits': 15,
        };
        final query = ShoppingQuery(q: 'smartphones');
        final requestData = json.encode([query.toJson()]);
        when(
          mockDio.request(
            'https://google.serper.dev/shopping', // Corrected: Use full path
            data: requestData,
            options: anyNamed('options'),
          ),
        ).thenAnswer(
          (_) async => Response(
            data: expectedResponse,
            statusCode: 200,
            requestOptions: RequestOptions(
              path: 'https://google.serper.dev/shopping',
            ), // Corrected: Use full path
          ),
        );
        // Act
        final result = await serper.shopping(query); // Changed from [query]
        // Assert
        verify(
          mockDio.request(
            'https://google.serper.dev/shopping', // Corrected: Use full path
            data: requestData,
            options: anyNamed('options'),
          ),
        ).called(1);
        expect(result, isA<ShoppingResponse>());
        expect(result.shopping.length, equals(1));
        expect(result.shopping.first.title, equals('Smartphone X'));
        expect(result.credits, equals(15));
      });
    });

    group('lens method', () {
      test('calls the correct endpoint and returns LensResponse', () async {
        // Arrange
        final expectedResponse = {
          'searchParameters': {'url': 'https://example.com/image.jpg'},
          'organic': [
            {
              'title': 'Similar Image Result',
              'link': 'http://example.com/similar-image',
              'source': 'similar-images.com',
              'thumbnailUrl': 'https://example.com/similar-image-thumb.jpg',
              'position': 1,
              'imageUrl':
                  'https://example.com/similar-image.jpg', // Added missing non-nullable field
            },
          ],
          'credits': 8,
        };
        final query = LensQuery(url: 'https://example.com/image.jpg');
        final requestData = json.encode([query.toJson()]);

        when(
          mockDio.request(
            'https://google.serper.dev/lens', // Corrected: Use full path
            data: requestData,
            options: anyNamed('options'),
          ),
        ).thenAnswer(
          (_) async => Response(
            data: expectedResponse,
            statusCode: 200,
            requestOptions: RequestOptions(
              path: 'https://google.serper.dev/lens',
            ), // Corrected: Use full path
          ),
        );
        // Act
        final result = await serper.lens(query); // Changed from [query]
        // Assert
        verify(
          mockDio.request(
            'https://google.serper.dev/lens', // Corrected: Use full path
            data: requestData,
            options: anyNamed('options'),
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
      });
    });

    group('scholar method', () {
      test('calls the correct endpoint and returns ScholarResponse', () async {
        // Arrange
        final expectedResponse = {
          'searchParameters': {'q': 'machine learning'},
          'organic': [
            {
              'title': 'Machine Learning Basics',
              'link': 'http://example.com/ml-basics', // From additional_test
              'snippet': 'An introduction to ML.', // From additional_test
              'publicationInfo': 'Example University Press, Journal of ML',
              'year': 2023,
              'citedBy': 150,
              'pdfUrl': 'https://example.com/ml-basics.pdf',
              'id': 'scholar_id_123',
              'position': 1,
            },
          ],
          'credits': 12,
        };
        final query = ScholarQuery(q: 'machine learning');
        final requestData = json.encode([query.toJson()]);
        when(
          mockDio.request(
            'https://google.serper.dev/scholar', // Corrected: Use full path
            data: requestData,
            options: anyNamed('options'),
          ),
        ).thenAnswer(
          (_) async => Response(
            data: expectedResponse,
            statusCode: 200,
            requestOptions: RequestOptions(
              path: 'https://google.serper.dev/scholar',
            ), // Corrected: Use full path
          ),
        );
        // Act
        final result = await serper.scholar(query); // Changed from [query]
        // Assert
        verify(
          mockDio.request(
            'https://google.serper.dev/scholar', // Corrected: Use full path
            data: requestData,
            options: anyNamed('options'),
          ),
        ).called(1);
        expect(result, isA<ScholarResponse>());
        expect(result.organic.length, equals(1));
        expect(result.organic.first.title, equals('Machine Learning Basics'));
        expect(result.credits, equals(12));
      });
    });

    group('patents method', () {
      test('calls the correct endpoint and returns PatentsResponse', () async {
        // Arrange
        final expectedResponse = {
          'searchParameters': {'q': 'solar energy patents'},
          'organic': [
            {
              'title': 'Solar Panel Innovation',
              'link': 'http://example.com/solar-patent',
              'snippet': 'Details about solar panel tech.',
              'inventor': 'Alice Brown, Bob Green',
              'assignee': 'Solar Corp',
              'publicationNumber': 'US1234567B2',
              'language': 'en',
              'thumbnailUrl': 'https://example.com/patent-thumb.jpg',
              'position': 1,
              'priorityDate': '2022-01-01', // Added missing non-nullable field
              'filingDate': '2022-06-01', // Added missing non-nullable field
              'publicationDate':
                  '2023-01-15', // Corrected from 'date' to 'publicationDate'
            },
          ],
          'credits': 20,
        };
        final query = PatentsQuery(q: 'solar energy patents');
        final requestData = json.encode([query.toJson()]);
        when(
          mockDio.request(
            'https://google.serper.dev/patents', // Corrected: Use full path
            data: requestData,
            options: anyNamed('options'),
          ),
        ).thenAnswer(
          (_) async => Response(
            data: expectedResponse,
            statusCode: 200,
            requestOptions: RequestOptions(
              path: 'https://google.serper.dev/patents',
            ), // Corrected: Use full path
          ),
        );
        // Act
        final result = await serper.patents(query); // Changed from [query]
        // Assert
        verify(
          mockDio.request(
            'https://google.serper.dev/patents', // Corrected: Use full path
            data: requestData,
            options: anyNamed('options'),
          ),
        ).called(1);
        expect(result, isA<PatentsResponse>());
        expect(result.organic.length, equals(1));
        expect(result.organic.first.title, equals('Solar Panel Innovation'));
        expect(result.credits, equals(20));
      });
    });

    group('reviews method', () {
      test('calls the correct endpoint and returns ReviewsResponse', () async {
        // Arrange
        final expectedResponse = {
          'searchParameters': {
            'q': 'hotel reviews',
            'cid': '12345',
            'runtimeType': 'withCid',
          },
          'reviews': [
            {
              'text': 'Wonderful stay, highly recommend.',
              'rating': 5.0,
              'author': 'Jane Doe',
              'date': '2023-05-15',
              'source':
                  'reviewsite.com', // This was present, but PlaceReview needs authorUrl
              'position': 1,
              'link': 'http://reviewsite.com/review/123',
              'title': 'Great Hotel!',
              'authorUrl':
                  'http://reviewsite.com/users/janedoe', // Added missing non-nullable field
            },
          ],
          'placeInfo': {
            'title': 'Grand Hotel',
            'address': '789 Holiday Rd',
            'rating': 4.7,
            'ratingCount': 50,
          },
          'credits': 7,
        };
        final query = ReviewsQuery.withCid(cid: '12345', q: 'hotel reviews');
        final requestData = json.encode([query.toJson()]);
        when(
          mockDio.request(
            'https://google.serper.dev/reviews', // Corrected: Use full path
            data: requestData,
            options: anyNamed('options'),
          ),
        ).thenAnswer(
          (_) async => Response(
            data: expectedResponse,
            statusCode: 200,
            requestOptions: RequestOptions(
              path: 'https://google.serper.dev/reviews',
            ), // Corrected: Use full path
          ),
        );
        // Act
        final result = await serper.reviews(query); // Changed from [query]

        // Assert
        verify(
          mockDio.request(
            'https://google.serper.dev/reviews', // Corrected: Use full path
            data: requestData,
            options: anyNamed('options'),
          ),
        ).called(1);
        expect(result, isA<ReviewsResponse>());
        expect(result.reviews.length, equals(1));
        expect(
          result.reviews.first.text,
          equals('Wonderful stay, highly recommend.'),
        );
        expect(result.credits, equals(7));
      });
    });

    group('autocomplete method', () {
      test('calls the correct endpoint and returns AutocompleteResponse', () async {
        // Arrange
        final expectedResponse = {
          'searchParameters': {'q': 'flo'},
          'suggestions': [
            {'value': 'flutter documentation'}, // From additional_test
            {'value': 'flower delivery'},
          ],
          'credits': 2,
        };
        final query = AutocompleteQuery(q: 'flo');
        final requestData = json.encode([query.toJson()]);
        when(
          mockDio.request(
            'https://google.serper.dev/autocomplete', // Corrected: Use full path
            data: requestData,
            options: anyNamed('options'),
          ),
        ).thenAnswer(
          (_) async => Response(
            data: expectedResponse,
            statusCode: 200,
            requestOptions: RequestOptions(
              path: 'https://google.serper.dev/autocomplete',
            ), // Corrected: Use full path
          ),
        );
        // Act
        final result = await serper.autocomplete(query); // Changed from [query]

        // Assert
        verify(
          mockDio.request(
            'https://google.serper.dev/autocomplete', // Corrected: Use full path
            data: requestData,
            options: anyNamed('options'),
          ),
        ).called(1);
        expect(result, isA<AutocompleteResponse>());
        expect(result.suggestions.length, equals(2));
        expect(result.suggestions.first.value, equals('flutter documentation'));
        expect(result.credits, equals(2));
      });
    });

    group('webpage method', () {
      test('calls the correct endpoint and returns WebpageResponse', () async {
        // Arrange
        final expectedResponse = {
          'searchParameters': {'url': 'https://example.com'},
          'results': [
            {
              'text': 'This is the extracted text from example.com.',
              'markdown':
                  '# Example Website\\nThis is an example snippet.', // Corrected: Single backslash for newline
              'metadata': {
                'title': 'Example Website',
                'link': 'https://example.com',
                'snippet': 'This is an example snippet.',
              },
              'credits': 1, // From additional_test
            },
          ],
          // 'credits': 1, // This was outside results in additional_test, but WebpageResponse has credits per result
        };
        final query = WebpageQuery(url: 'https://example.com');
        // Webpage API takes a single query, not a list in the body.
        // The client's `serper.webpage([query])` method should handle this.
        // The `_post` method in `flutter_serper_base.dart` jsonEncodes the list.
        // Let's assume the API handles a list with one item or the client adapts.
        // For mocking, we match how `_post` sends it.
        final requestData = json.encode([query.toJson()]);
        when(
          mockDio.request(
            'https://scrape.serper.dev/webpage', // Corrected: Use full path for webpage endpoint
            data: requestData,
            options: anyNamed('options'),
          ),
        ).thenAnswer(
          (_) async => Response(
            data: expectedResponse,
            statusCode: 200,
            requestOptions: RequestOptions(
              path: 'https://scrape.serper.dev/webpage',
            ), // Corrected: Use full path
          ),
        );

        // Act
        final result = await serper.webpage(query); // Changed from [query]

        // Assert
        verify(
          mockDio.request(
            'https://scrape.serper.dev/webpage', // Corrected: Use full path for webpage endpoint
            data: requestData,
            options: anyNamed('options'),
          ),
        ).called(1);

        expect(result, isA<WebpageResponse>());
        expect(result.results.length, equals(1));
        final firstResult = result.results.first;
        expect(
          firstResult.text,
          equals('This is the extracted text from example.com.'),
        );
        expect(firstResult.credits, equals(1));
      });
    });

    group('callApi method', () {
      // Renamed from callApiWithMixin
      test(
        'correctly calls _post and _deserializeResponse, then returns the response', // Updated method name in test description
        () async {
          final query = SearchQuery(q: 'generic query');
          final List<Map<String, dynamic>> queryData = [query.toJson()];
          final String endpoint = '/search';

          when(
            mockDio.request(
              // Changed from mockDio.post
              'https://google.serper.dev$endpoint',
              data: json.encode(queryData),
              options: anyNamed('options'),
            ),
          ).thenAnswer(
            (_) async => Response(
              requestOptions: RequestOptions(
                path: 'https://google.serper.dev$endpoint',
              ),
              data: mockSuccessSearchResponseJson,
              statusCode: 200,
            ),
          );

          final result = await serper.callApi<SearchResponse>(
            // Renamed method call
            endpoint,
            queryData,
            SearchResponse.fromJson,
          );

          expect(result, isA<SearchResponse>());
          expect(result.searchParameters.q, 'test query');
          expect(result.organic.first.title, "Test Result 1");
          expect(result.credits, 5);
        },
      );

      test(
        'throws SerperApiException on API error (e.g., 401, 403, 429)',
        () async {
          final query = SearchQuery(q: 'test query');
          final List<Map<String, dynamic>> queryData = [query.toJson()];
          final String endpoint = '/search';

          when(
            mockDio.request(
              // Changed from mockDio.post
              'https://google.serper.dev$endpoint',
              data: json.encode(queryData),
              options: anyNamed('options'),
            ),
          ).thenThrow(
            DioException(
              requestOptions: RequestOptions(
                path: 'https://google.serper.dev$endpoint',
              ),
              response: Response(
                requestOptions: RequestOptions(
                  path: 'https://google.serper.dev$endpoint',
                ),
                data: mockSerperErrorJson,
                statusCode: 401,
              ),
            ),
          );

          expect(
            () => serper.callApi<SearchResponse>(
              // Renamed method call
              endpoint,
              queryData,
              SearchResponse.fromJson,
            ),
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
        },
      );

      test('throws SerperApiException on Dio network error', () async {
        final query = SearchQuery(q: 'test query');
        final List<Map<String, dynamic>> queryData = [query.toJson()];
        final String endpoint = '/search';

        when(
          mockDio.request(
            // Changed from mockDio.post
            'https://google.serper.dev$endpoint',
            data: json.encode(queryData),
            options: anyNamed('options'),
          ),
        ).thenThrow(
          DioException(
            requestOptions: RequestOptions(
              path: 'https://google.serper.dev$endpoint',
            ),
            // Simulating e.message being null for this specific test case
            // error: null, // This would make e.message null
            error: 'Connection failed', // Keep an error message for the test
            type: DioExceptionType.connectionError,
          ),
        );

        expect(
          () => serper.callApi<SearchResponse>(
            // Renamed method call
            endpoint,
            queryData,
            SearchResponse.fromJson,
          ),
          throwsA(
            isA<SerperApiException>()
                .having(
                  (e) => e.message,
                  'message',
                  // Adjusted to match the actual message format from flutter_serper_base.dart
                  equals('Network error: Connection failed'),
                )
                .having((e) => e.statusCode, 'statusCode', null),
          ),
        );
      });
    });
    // End of tests from serper_api_additional_test.dart

    group('Error Handling', () {
      // Re-using searchQuery and searchQueries from the 'search method' group for error tests.
      // If those are not in scope, they need to be defined here or passed.
      // For simplicity, assuming they are accessible or re-declared if run in separate contexts.
      final searchQuery = SearchQuery(q: 'test query');
      final String expectedPath = 'https://google.serper.dev/search';
      final String expectedBody = jsonEncode([searchQuery.toJson()]);

      test(
        'throws SerperApiException on API error (e.g., 401, 403, 429)',
        () async {
          // Arrange
          when(
            mockDio.request(
              expectedPath,
              data: expectedBody,
              options: anyNamed('options'),
            ),
          ).thenThrow(
            DioException(
              requestOptions: RequestOptions(path: expectedPath),
              response: Response(
                requestOptions: RequestOptions(path: expectedPath),
                data: mockSerperErrorJson, // Using the globally defined mock
                statusCode: 401,
              ),
            ),
          );

          // Act & Assert
          expect(
            () => serper.search(searchQuery), // Test with a single query method
            throwsA(
              isA<SerperApiException>()
                  .having((e) => e.statusCode, 'statusCode', 401)
                  .having(
                    (e) => e.message,
                    'message',
                    contains('Invalid API key.'),
                  ),
            ), // Check message from mockSerperErrorJson
          );
          verify(
            mockDio.request(
              expectedPath,
              data: expectedBody,
              options: anyNamed('options'),
            ),
          ).called(1);
        },
      );

      test('throws SerperApiException on Dio network error', () async {
        // Arrange
        when(
          mockDio.request(
            expectedPath,
            data: expectedBody,
            options: anyNamed('options'),
          ),
        ).thenThrow(
          DioException(
            requestOptions: RequestOptions(path: expectedPath),
            message: 'Network connection failed.',
          ),
        );

        // Act & Assert
        expect(
          () => serper.search(searchQuery), // Test with a single query method
          throwsA(
            isA<SerperApiException>()
                .having(
                  (e) => e.message,
                  'message',
                  contains('Network connection failed.'),
                )
                .having((e) => e.statusCode, 'statusCode', null),
          ), // No status code for network errors typically
        );
        verify(
          mockDio.request(
            expectedPath,
            data: expectedBody,
            options: anyNamed('options'),
          ),
        ).called(1);
      });
    });

    group('Batch API Methods', () {
      group('searchBatch method', () {
        final searchQueries = [
          SearchQuery(q: 'flutter development'),
          SearchQuery(q: 'dart programming'),
        ];
        const String expectedPath = 'https://google.serper.dev/search';
        final String expectedBody = jsonEncode(
          searchQueries.map((q) => q.toJson()).toList(),
        );

        final mockSuccessSearchBatchResponseJsonData = [
          {
            "searchParameters": {
              "q": "flutter development",
              "type": "search",
              "engine": "google",
            },
            "organic": [
              {
                "title": "Flutter Dev Results",
                "link": "https://flutter.dev",
                "snippet": "Official Flutter documentation.",
                "position": 1,
              },
            ],
            "credits": 5,
          },
          {
            "searchParameters": {
              "q": "dart programming",
              "type": "search",
              "engine": "google",
            },
            "organic": [
              {
                "title": "Dart Lang Results",
                "link": "https://dart.dev",
                "snippet": "Official Dart documentation.",
                "position": 1,
              },
            ],
            "credits": 5,
          },
        ];

        test('returns List<SearchResponse> on successful API call', () async {
          when(
            mockDio.request(
              expectedPath,
              data: expectedBody,
              options: anyNamed('options'),
            ),
          ).thenAnswer(
            (_) async => Response(
              requestOptions: RequestOptions(path: expectedPath),
              data: mockSuccessSearchBatchResponseJsonData,
              statusCode: 200,
            ),
          );

          // Act
          final result = await serper.searchBatch(searchQueries);

          // Assert
          expect(result, isA<List<SearchResponse>>());
          expect(result.length, 2);
          expect(result[0].searchParameters.q, 'flutter development');
          expect(result[0].organic.first.title, "Flutter Dev Results");
          expect(result[0].credits, 5);
          expect(result[1].searchParameters.q, 'dart programming');
          expect(result[1].organic.first.title, "Dart Lang Results");
          expect(result[1].credits, 5);

          verify(
            mockDio.request(
              // Corrected verify
              expectedPath,
              data: expectedBody,
              options: anyNamed('options'),
            ),
          ).called(1);
        });

        test('throws SerperApiException on API error for batch', () async {
          // Arrange
          when(
            mockDio.request(
              // Corrected mock setup
              expectedPath,
              data: expectedBody,
              options: anyNamed('options'),
            ),
          ).thenThrow(
            DioException(
              requestOptions: RequestOptions(path: expectedPath),
              response: Response(
                requestOptions: RequestOptions(path: expectedPath),
                data: {'message': 'Forbidden'}, // Example error message
                statusCode: 403,
              ),
            ),
          );

          // Act & Assert
          expect(
            () => serper.searchBatch(searchQueries),
            throwsA(
              isA<SerperApiException>()
                  .having((e) => e.statusCode, 'statusCode', 403)
                  .having((e) => e.message, 'message', contains('Forbidden')),
            ),
          );
          verify(
            mockDio.request(
              // Corrected verify
              expectedPath,
              data: expectedBody,
              options: anyNamed('options'),
            ),
          ).called(1);
        });

        test(
          'throws SerperApiException on Dio network error for batch',
          () async {
            // Arrange
            when(
              mockDio.request(
                // Corrected mock setup
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).thenThrow(
              DioException(
                requestOptions: RequestOptions(path: expectedPath),
                message: 'Network error during batch search',
                type: DioExceptionType.connectionError,
              ),
            );

            // Act & Assert
            expect(
              () => serper.searchBatch(searchQueries),
              throwsA(
                isA<SerperApiException>()
                    .having(
                      (e) => e.message,
                      'message',
                      contains('Network error during batch search'),
                    )
                    .having((e) => e.statusCode, 'statusCode', null),
              ),
            );
            verify(
              mockDio.request(
                // Corrected verify
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).called(1);
          },
        );
      });

      group('imagesBatch method', () {
        final imagesQueries = [
          ImagesQuery(q: 'cats', gl: 'us'),
          ImagesQuery(q: 'dogs', gl: 'ca'),
        ];
        const String expectedPath = 'https://google.serper.dev/images';
        final String expectedBody = jsonEncode(
          imagesQueries.map((q) => q.toJson()).toList(),
        );

        // Define mock success response data for images batch
        final mockSuccessImagesBatchResponseJsonData = [
          {
            "searchParameters": {
              "q": "cats",
              "gl": "us",
              "type": "images",
              "engine": "google",
            },
            "images": [
              {
                "title": "Cute Cat",
                "link": "https://example.com/cat.jpg",
                "imageUrl": "https://example.com/cat_thumb.jpg",
                "position": 1,
                "source": "example.com",
                "thumbnailUrl": "https://example.com/cat_thumb.jpg",
              },
            ],
            "credits": 3,
          },
          {
            "searchParameters": {
              "q": "dogs",
              "gl": "ca",
              "type": "images",
              "engine": "google",
            },
            "images": [
              {
                "title": "Happy Dog",
                "link": "https://example.com/dog.jpg",
                "imageUrl": "https://example.com/dog_thumb.jpg",
                "position": 1,
                "source": "example.com",
                "thumbnailUrl": "https://example.com/dog_thumb.jpg",
              },
            ],
            "credits": 3,
          },
        ];

        test('returns List<ImagesResponse> on successful API call', () async {
          // Arrange
          when(
            mockDio.request(
              expectedPath,
              data: expectedBody,
              options: anyNamed('options'),
            ),
          ).thenAnswer(
            (_) async => Response(
              requestOptions: RequestOptions(path: expectedPath),
              data: mockSuccessImagesBatchResponseJsonData,
              statusCode: 200,
            ),
          );

          // Act
          final result = await serper.imagesBatch(imagesQueries);

          // Assert
          expect(result, isA<List<ImagesResponse>>());
          expect(result.length, 2);
          expect(result[0].searchParameters.q, 'cats');
          expect(result[0].images.first.title, "Cute Cat");
          expect(result[0].credits, 3);
          expect(result[1].searchParameters.q, 'dogs');
          expect(result[1].images.first.title, "Happy Dog");
          expect(result[1].credits, 3);

          verify(
            mockDio.request(
              expectedPath,
              data: expectedBody,
              options: anyNamed('options'),
            ),
          ).called(1);
        });

        test(
          'throws SerperApiException on API error for batch images',
          () async {
            // Arrange
            when(
              mockDio.request(
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).thenThrow(
              DioException(
                requestOptions: RequestOptions(path: expectedPath),
                response: Response(
                  requestOptions: RequestOptions(path: expectedPath),
                  data: {
                    'message': 'Payment Required',
                  }, // Example error message
                  statusCode: 402,
                ),
              ),
            );

            // Act & Assert
            expect(
              () => serper.imagesBatch(imagesQueries),
              throwsA(
                isA<SerperApiException>()
                    .having((e) => e.statusCode, 'statusCode', 402)
                    .having(
                      (e) => e.message,
                      'message',
                      contains('Payment Required'),
                    ),
              ),
            );
            verify(
              mockDio.request(
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).called(1);
          },
        );

        test(
          'throws SerperApiException on Dio network error for batch images',
          () async {
            // Arrange
            when(
              mockDio.request(
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).thenThrow(
              DioException(
                requestOptions: RequestOptions(path: expectedPath),
                message: 'Network error during batch images',
                type: DioExceptionType.connectionError,
              ),
            );

            // Act & Assert
            expect(
              () => serper.imagesBatch(imagesQueries),
              throwsA(
                isA<SerperApiException>()
                    .having(
                      (e) => e.message,
                      'message',
                      contains('Network error during batch images'),
                    )
                    .having((e) => e.statusCode, 'statusCode', null),
              ),
            );
            verify(
              mockDio.request(
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).called(1);
          },
        );
      }); // End of imagesBatch group

      group('newsBatch method', () {
        final newsQueries = [
          NewsQuery(q: 'breaking news', gl: 'us'),
          NewsQuery(q: 'tech updates', gl: 'gb'),
        ];
        const String expectedPath = 'https://google.serper.dev/news';
        final String expectedBody = jsonEncode(
          newsQueries.map((q) => q.toJson()).toList(),
        );

        final mockSuccessNewsBatchResponseJsonData = [
          {
            "searchParameters": {
              "q": "breaking news",
              "gl": "us",
              "type": "news",
              "engine": "google",
            },
            "news": [
              {
                "title": "Major Event Unfolds",
                "link": "https://example.com/news1",
                "snippet": "Details about the major event.",
                "date": "2024-03-10",
                "source": "News Network A",
                "position": 1,
              },
            ],
            "credits": 2,
          },
          {
            "searchParameters": {
              "q": "tech updates",
              "gl": "gb",
              "type": "news",
              "engine": "google",
            },
            "news": [
              {
                "title": "New Gadget Released",
                "link": "https://example.com/news2",
                "snippet": "Latest in technology.",
                "date": "2024-03-09",
                "source": "Tech Blog B",
                "position": 1,
              },
            ],
            "credits": 2,
          },
        ];

        test('returns List<NewsResponse> on successful API call', () async {
          // Arrange
          when(
            mockDio.request(
              expectedPath,
              data: expectedBody,
              options: anyNamed('options'),
            ),
          ).thenAnswer(
            (_) async => Response(
              requestOptions: RequestOptions(path: expectedPath),
              data: mockSuccessNewsBatchResponseJsonData,
              statusCode: 200,
            ),
          );

          // Act
          final result = await serper.newsBatch(newsQueries);

          // Assert
          expect(result, isA<List<NewsResponse>>());
          expect(result.length, 2);
          expect(result[0].searchParameters.q, 'breaking news');
          expect(result[0].news.first.title, "Major Event Unfolds");
          expect(result[0].credits, 2);
          expect(result[1].searchParameters.q, 'tech updates');
          expect(result[1].news.first.title, "New Gadget Released");
          expect(result[1].credits, 2);

          verify(
            mockDio.request(
              expectedPath,
              data: expectedBody,
              options: anyNamed('options'),
            ),
          ).called(1);
        });

        test('throws SerperApiException on API error for batch news', () async {
          // Arrange
          when(
            mockDio.request(
              // Corrected mock setup
              expectedPath,
              data: expectedBody,
              options: anyNamed('options'),
            ),
          ).thenThrow(
            DioException(
              requestOptions: RequestOptions(path: expectedPath),
              response: Response(
                requestOptions: RequestOptions(path: expectedPath),
                data: {'message': 'Unauthorized Access'},
                statusCode: 401,
              ),
            ),
          );

          // Act & Assert
          expect(
            () => serper.newsBatch(newsQueries),
            throwsA(
              isA<SerperApiException>()
                  .having((e) => e.statusCode, 'statusCode', 401)
                  .having(
                    (e) => e.message,
                    'message',
                    contains('Unauthorized Access'),
                  ),
            ),
          );
          verify(
            mockDio.request(
              expectedPath,
              data: expectedBody,
              options: anyNamed('options'),
            ),
          ).called(1);
        });

        test(
          'throws SerperApiException on Dio network error for batch news',
          () async {
            // Arrange
            when(
              mockDio.request(
                // Corrected mock setup
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).thenThrow(
              DioException(
                requestOptions: RequestOptions(path: expectedPath),
                message: 'Network error during batch news',
                type: DioExceptionType.connectionError,
              ),
            );

            // Act & Assert
            expect(
              () => serper.newsBatch(newsQueries),
              throwsA(
                isA<SerperApiException>()
                    .having(
                      (e) => e.message,
                      'message',
                      contains('Network error during batch news'),
                    )
                    .having((e) => e.statusCode, 'statusCode', null),
              ),
            );
            verify(
              mockDio.request(
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).called(1);
          },
        );
      }); // End of newsBatch group

      group('videosBatch method', () {
        final videosQueries = [
          VideosQuery(q: 'funny cat videos', gl: 'us'),
          VideosQuery(q: 'dart tutorial', gl: 'de'),
        ];
        const String expectedPath = 'https://google.serper.dev/videos';
        final String expectedBody = jsonEncode(
          videosQueries.map((q) => q.toJson()).toList(),
        );

        final mockSuccessVideosBatchResponseJsonData = [
          {
            "searchParameters": {
              "q": "funny cat videos",
              "gl": "us",
              "type": "videos",
              "engine": "google",
            },
            "videos": [
              {
                "title": "Hilarious Cat Moments",
                "link": "https://youtube.com/catvideo",
                "length": "3:45",
                "source": "YouTube",
                "imageUrl": "https://example.com/cat_thumb.jpg",
                "position": 1,
                "thumbnailUrl": "https://example.com/cat_thumb.jpg",
                "description": "Funny cats doing funny things.",
              },
            ],
            "credits": 1,
          },
          {
            "searchParameters": {
              "q": "dart tutorial",
              "gl": "de",
              "type": "videos",
              "engine": "google",
            },
            "videos": [
              {
                "title": "Learn Dart in 1 Hour",
                "link": "https://youtube.com/darttutorial",
                "length": "58:20",
                "source": "YouTube",
                "imageUrl": "https://example.com/dart_thumb.jpg",
                "position": 1,
                "thumbnailUrl": "https://example.com/dart_thumb.jpg",
                "description": "A comprehensive Dart tutorial.",
              },
            ],
            "credits": 1,
          },
        ];

        test('returns List<VideosResponse> on successful API call', () async {
          // Arrange
          when(
            mockDio.request(
              expectedPath,
              data: expectedBody,
              options: anyNamed('options'),
            ),
          ).thenAnswer(
            (_) async => Response(
              requestOptions: RequestOptions(path: expectedPath),
              data: mockSuccessVideosBatchResponseJsonData,
              statusCode: 200,
            ),
          );

          // Act
          final result = await serper.videosBatch(videosQueries);

          // Assert
          expect(result, isA<List<VideosResponse>>());
          expect(result.length, 2);
          expect(result[0].searchParameters.q, 'funny cat videos');
          expect(result[0].videos.first.title, "Hilarious Cat Moments");
          expect(result[0].credits, 1);
          expect(result[1].searchParameters.q, 'dart tutorial');
          expect(result[1].videos.first.title, "Learn Dart in 1 Hour");
          expect(result[1].credits, 1);

          verify(
            mockDio.request(
              expectedPath,
              data: expectedBody,
              options: anyNamed('options'),
            ),
          ).called(1);
        });

        test(
          'throws SerperApiException on API error for batch videos',
          () async {
            // Arrange
            when(
              mockDio.request(
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).thenThrow(
              DioException(
                requestOptions: RequestOptions(path: expectedPath),
                response: Response(
                  requestOptions: RequestOptions(path: expectedPath),
                  data: {'message': 'Rate Limit Exceeded'},
                  statusCode: 429,
                ),
              ),
            );

            // Act & Assert
            expect(
              () => serper.videosBatch(videosQueries),
              throwsA(
                isA<SerperApiException>()
                    .having((e) => e.statusCode, 'statusCode', 429)
                    .having(
                      (e) => e.message,
                      'message',
                      contains('Rate Limit Exceeded'),
                    ),
              ),
            );
            verify(
              mockDio.request(
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).called(1);
          },
        );

        test(
          'throws SerperApiException on Dio network error for batch videos',
          () async {
            // Arrange
            when(
              mockDio.request(
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).thenThrow(
              DioException(
                requestOptions: RequestOptions(path: expectedPath),
                message: 'Network error during batch videos',
                type: DioExceptionType.connectionError,
              ),
            );

            // Act & Assert
            expect(
              () => serper.videosBatch(videosQueries),
              throwsA(
                isA<SerperApiException>()
                    .having(
                      (e) => e.message,
                      'message',
                      contains('Network error during batch videos'),
                    )
                    .having((e) => e.statusCode, 'statusCode', null),
              ),
            );
            verify(
              mockDio.request(
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).called(1);
          },
        );
      }); // End of videosBatch group

      group('placesBatch method', () {
        final placesQueries = [
          PlacesQuery(q: 'restaurants near me', location: '34.0522,-118.2437'),
          PlacesQuery(
            q: 'coffee shops in downtown',
            gl: 'us',
          ), // gl is a valid param for PlacesQuery
        ];
        const String expectedPath = 'https://google.serper.dev/places';
        final String expectedBody = jsonEncode(
          placesQueries.map((q) => q.toJson()).toList(),
        );

        final mockSuccessPlacesBatchResponseJsonData = [
          {
            "searchParameters": {
              "q": "restaurants near me",
              "location": "34.0522,-118.2437",
            }, // Removed type, engine. Kept location
            "places": [
              {
                "title": "Restaurant A",
                "address": "123 Main St",
                "latitude": 34.0522,
                "longitude": -118.2437,
                "rating": 4.5,
                "reviewCount": 100,
                "type": "Italian",
                "phoneNumber": "555-1234",
                "website": "http://restauranta.com",
                "position": 1,
              },
            ],
            "credits": 10,
          },
          {
            "searchParameters": {
              "q": "coffee shops in downtown",
              "gl": "us",
            }, // Removed type, engine. Kept gl
            "places": [
              {
                "title": "Cafe B",
                "address": "456 Oak Ave",
                "latitude": 34.0500,
                "longitude": -118.2500,
                "rating": 4.8,
                "reviewCount": 150,
                "type": "Cafe",
                "phoneNumber": "555-5678",
                "website": "http://cafeb.com",
                "position": 1,
              },
            ],
            "credits": 10,
          },
        ];

        test('returns List<PlacesResponse> on successful API call', () async {
          // Arrange
          when(
            mockDio.request(
              expectedPath,
              data: expectedBody,
              options: anyNamed('options'),
            ),
          ).thenAnswer(
            (_) async => Response(
              requestOptions: RequestOptions(path: expectedPath),
              data: mockSuccessPlacesBatchResponseJsonData,
              statusCode: 200,
            ),
          );

          // Act
          final result = await serper.placesBatch(placesQueries);

          // Assert
          expect(result, isA<List<PlacesResponse>>());
          expect(result.length, 2);
          expect(result[0].searchParameters.q, 'restaurants near me');
          expect(result[0].searchParameters.location, '34.0522,-118.2437');
          expect(result[0].places.first.title, "Restaurant A");
          expect(result[0].credits, 10);
          expect(result[1].searchParameters.q, 'coffee shops in downtown');
          expect(result[1].searchParameters.gl, 'us');
          expect(result[1].places.first.title, "Cafe B");
          expect(result[1].credits, 10);

          verify(
            mockDio.request(
              expectedPath,
              data: expectedBody,
              options: anyNamed('options'),
            ),
          ).called(1);
        });

        test(
          'throws SerperApiException on API error for batch places',
          () async {
            // Arrange
            when(
              mockDio.request(
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).thenThrow(
              DioException(
                requestOptions: RequestOptions(path: expectedPath),
                response: Response(
                  requestOptions: RequestOptions(path: expectedPath),
                  data: {'message': 'Invalid Location'},
                  statusCode: 400,
                ),
              ),
            );

            // Act & Assert
            expect(
              () => serper.placesBatch(placesQueries),
              throwsA(
                isA<SerperApiException>()
                    .having((e) => e.statusCode, 'statusCode', 400)
                    .having(
                      (e) => e.message,
                      'message',
                      contains('Invalid Location'),
                    ),
              ),
            );
            verify(
              mockDio.request(
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).called(1);
          },
        );

        test(
          'throws SerperApiException on Dio network error for batch places',
          () async {
            // Arrange
            when(
              mockDio.request(
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).thenThrow(
              DioException(
                requestOptions: RequestOptions(path: expectedPath),
                message: 'Network error during batch places',
                type: DioExceptionType.connectionError,
              ),
            );

            // Act & Assert
            expect(
              () => serper.placesBatch(placesQueries),
              throwsA(
                isA<SerperApiException>()
                    .having(
                      (e) => e.message,
                      'message',
                      contains('Network error during batch places'),
                    )
                    .having((e) => e.statusCode, 'statusCode', null),
              ),
            );
            verify(
              mockDio.request(
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).called(1);
          },
        );
      }); // End of placesBatch group

      group('mapsBatch method', () {
        final mapsQueries = [
          MapsQuery(q: 'Eiffel Tower', hl: 'fr'), // Changed gl to hl
          MapsQuery(
            q: 'Statue of Liberty',
            ll: '40.6892,-74.0445',
          ), // Changed gl and type to ll
        ];
        const String expectedPath = 'https://google.serper.dev/maps';
        final String expectedBody = jsonEncode(
          mapsQueries.map((q) => q.toJson()).toList(),
        );

        final mockSuccessMapsBatchResponseJsonData = [
          {
            "searchParameters": {
              "q": "Eiffel Tower",
              "hl": "fr",
            }, // Removed type, engine. Kept hl
            "place": {
              "title": "Eiffel Tower",
              "address":
                  "Champ de Mars, 5 Avenue Anatole France, 75007 Paris, France",
              "latitude": 48.8584,
              "longitude": 2.2945,
              "rating": 4.7,
              "reviewCount": 200000,
              "type": "Tourist attraction",
              "description": "Iconic tower in Paris.",
              "cid": "cid_eiffel",
              "priceLevel": "\$\$\$",
              "position": 1,
            },
            "credits": 5,
          },
          {
            "searchParameters": {
              "q": "Statue of Liberty",
              "ll": "40.6892,-74.0445",
            }, // Removed type, engine. Kept ll
            "place": {
              "title": "Statue of Liberty",
              "address": "New York, NY 10004, United States",
              "latitude": 40.6892,
              "longitude": -74.0445,
              "rating": 4.8,
              "reviewCount": 150000,
              "type": "Monument",
              "description":
                  "A colossal neoclassical sculpture on Liberty Island.",
              "cid": "cid_liberty",
              "priceLevel": "\$",
              "position": 1,
            },
            "credits": 5,
          },
        ];

        test('returns List<MapsResponse> on successful API call', () async {
          // Arrange
          when(
            mockDio.request(
              // Corrected mock setup
              expectedPath,
              data: expectedBody,
              options: anyNamed('options'),
            ),
          ).thenAnswer(
            (_) async => Response(
              requestOptions: RequestOptions(
                path: expectedPath,
              ), // Added requestOptions
              data:
                  mockSuccessMapsBatchResponseJsonData, // Used defined mock data
              statusCode: 200,
            ),
          );

          // Act
          final result = await serper.mapsBatch(mapsQueries);

          // Assert
          expect(result, isA<List<MapsResponse>>());
          expect(result.length, 2);
          expect(result[0].searchParameters.q, 'Eiffel Tower');
          expect(result[0].searchParameters.hl, 'fr');
          expect(
            result[0].place.title,
            "Eiffel Tower",
          ); // Removed null-aware operator
          expect(result[0].credits, 5);
          expect(result[1].searchParameters.q, 'Statue of Liberty');
          expect(result[1].searchParameters.ll, '40.6892,-74.0445');
          expect(
            result[1].place.title,
            "Statue of Liberty",
          ); // Removed null-aware operator
          expect(result[1].credits, 5);

          verify(
            mockDio.request(
              expectedPath,
              data: expectedBody,
              options: anyNamed('options'),
            ),
          ).called(1);
        });

        test('throws SerperApiException on API error for batch maps', () async {
          // Arrange
          when(
            mockDio.request(
              // Corrected mock setup
              expectedPath,
              data: expectedBody,
              options: anyNamed('options'),
            ),
          ).thenThrow(
            DioException(
              requestOptions: RequestOptions(path: expectedPath),
              response: Response(
                requestOptions: RequestOptions(
                  path: expectedPath,
                ), // Added requestOptions
                data: {'message': 'Bad Request'}, // Example error message
                statusCode: 400,
              ),
            ),
          );

          // Act & Assert
          expect(
            // Completed expect block
            () => serper.mapsBatch(mapsQueries),
            throwsA(
              isA<SerperApiException>()
                  .having((e) => e.statusCode, 'statusCode', 400)
                  .having((e) => e.message, 'message', contains('Bad Request')),
            ),
          );
          verify(
            mockDio.request(
              expectedPath,
              data: expectedBody,
              options: anyNamed('options'),
            ),
          ).called(1);
        });

        test(
          'throws SerperApiException on Dio network error for batch maps',
          () async {
            // Arrange
            when(
              mockDio.request(
                // Corrected mock setup
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).thenThrow(
              DioException(
                requestOptions: RequestOptions(
                  path: expectedPath,
                ), // Added requestOptions
                message:
                    'Network error during batch maps', // Example error message
                type: DioExceptionType.connectionError,
              ),
            );

            // Act & Assert
            expect(
              // Completed expect block
              () => serper.mapsBatch(mapsQueries),
              throwsA(
                isA<SerperApiException>()
                    .having(
                      (e) => e.message,
                      'message',
                      contains('Network error during batch maps'),
                    )
                    .having((e) => e.statusCode, 'statusCode', null),
              ),
            );
            verify(
              mockDio.request(
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).called(1);
          },
        );
      }); // End of mapsBatch group

      group('reviewsBatch method', () {
        final reviewsQueries = [
          ReviewsQuery.withPlaceId(
            placeId: 'ChIJN1t_tDeuEmsRUsoyG83frY4',
            hl: 'en',
            q: 'hotel reviews',
          ),
          ReviewsQuery.withCid(
            cid: '1234567890',
            sortBy: 'newest',
            q: 'restaurant feedback',
          ),
        ];
        const String expectedPath = 'https://google.serper.dev/reviews';
        final String expectedBody = jsonEncode(
          reviewsQueries.map((q) => q.toJson()).toList(),
        );

        final mockSuccessReviewsBatchResponseJsonData = [
          {
            // searchParameters should match ReviewsQuery.withPlaceId structure
            "searchParameters": {
              "placeId": "ChIJN1t_tDeuEmsRUsoyG83frY4",
              "hl": "en",
              "q": "hotel reviews",
              "runtimeType": "withPlaceId",
            },
            // PlaceReview does not have a 'title' field. It has 'text', 'author', 'rating', etc.
            "reviews": [
              {
                "rating": 5,
                "text": "Loved the hotel.",
                "date": "2024-01-15",
                "source": "Booking.com",
                "author": "John D.",
                "authorUrl": "http://example.com/johnd",
                "link": "http://example.com/review1",
                "position": 1,
              },
            ],
            "credits": 7,
            "nextPageToken": "token123",
          },
          {
            // searchParameters should match ReviewsQuery.withCid structure
            "searchParameters": {
              "cid": "1234567890",
              "sortBy": "newest",
              "q": "restaurant feedback",
              "runtimeType": "withCid",
            },
            // PlaceReview does not have a 'title' field.
            "reviews": [
              {
                "rating": 4,
                "text": "Tasty dishes.",
                "date": "2024-02-20",
                "source": "OpenTable",
                "author": "Jane S.",
                "authorUrl": "http://example.com/janes",
                "link": "http://example.com/review2",
                "position": 1,
              },
            ],
            "credits": 7,
            // No nextPageToken for the second one in this example
          },
        ];

        test('returns List<ReviewsResponse> on successful API call', () async {
          // Arrange
          when(
            mockDio.request(
              expectedPath,
              data: expectedBody,
              options: anyNamed('options'),
            ),
          ).thenAnswer(
            (_) async => Response(
              requestOptions: RequestOptions(path: expectedPath),
              data: mockSuccessReviewsBatchResponseJsonData,
              statusCode: 200,
            ),
          );

          // Act
          final result = await serper.reviewsBatch(reviewsQueries);

          // Assert
          expect(result, isA<List<ReviewsResponse>>());
          expect(result.length, 2);

          // First response assertions
          expect(result[0].searchParameters, isA<ReviewsQueryPlaceId>());
          final params1 = result[0].searchParameters as ReviewsQueryPlaceId;
          expect(params1.placeId, 'ChIJN1t_tDeuEmsRUsoyG83frY4');
          expect(params1.hl, 'en');
          expect(params1.q, 'hotel reviews');
          expect(
            result[0].reviews.first.text,
            "Loved the hotel.",
          ); // Asserting on 'text' instead of non-existent 'title'
          expect(result[0].credits, 7);
          expect(result[0].nextPageToken, "token123");

          // Second response assertions
          expect(result[1].searchParameters, isA<ReviewsQueryCid>());
          final params2 = result[1].searchParameters as ReviewsQueryCid;
          expect(params2.cid, '1234567890');
          expect(params2.sortBy, 'newest');
          expect(params2.q, 'restaurant feedback');
          expect(
            result[1].reviews.first.text,
            "Tasty dishes.",
          ); // Asserting on 'text' instead of non-existent 'title'
          expect(result[1].credits, 7);
          expect(result[1].nextPageToken, isNull);

          verify(
            mockDio.request(
              expectedPath,
              data: expectedBody,
              options: anyNamed('options'),
            ),
          ).called(1);
        });

        test(
          'throws SerperApiException on API error for batch reviews',
          () async {
            // Arrange
            when(
              mockDio.request(
                // Corrected mock setup
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).thenThrow(
              DioException(
                requestOptions: RequestOptions(path: expectedPath),
                response: Response(
                  requestOptions: RequestOptions(path: expectedPath),
                  data: {'message': 'Not Found'},
                  statusCode: 404,
                ),
              ),
            );

            // Act & Assert
            expect(
              () => serper.reviewsBatch(reviewsQueries),
              throwsA(
                isA<SerperApiException>()
                    .having((e) => e.statusCode, 'statusCode', 404)
                    .having((e) => e.message, 'message', contains('Not Found')),
              ),
            );
            verify(
              mockDio.request(
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).called(1);
          },
        );

        test(
          'throws SerperApiException on Dio network error for batch reviews',
          () async {
            // Arrange
            when(
              mockDio.request(
                // Corrected mock setup
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).thenThrow(
              DioException(
                requestOptions: RequestOptions(path: expectedPath),
                message: 'Network error during batch reviews',
                type: DioExceptionType.connectionError,
              ),
            );

            // Act & Assert
            expect(
              () => serper.reviewsBatch(reviewsQueries),
              throwsA(
                isA<SerperApiException>()
                    .having(
                      (e) => e.message,
                      'message',
                      contains('Network error during batch reviews'),
                    )
                    .having((e) => e.statusCode, 'statusCode', null),
              ),
            );
            verify(
              mockDio.request(
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).called(1);
          },
        );
      }); // End of reviewsBatch group

      group('shoppingBatch method', () {
        final shoppingQueries = [
          // Added example queries
          ShoppingQuery(q: 'laptop deals', gl: 'us'),
          ShoppingQuery(q: 'best running shoes', gl: 'gb', page: 2),
        ];
        const String expectedPath =
            'https://google.serper.dev/shopping'; // Correct endpoint
        final String expectedBody = jsonEncode(
          shoppingQueries.map((q) => q.toJson()).toList(),
        );

        // Define mock success response data for shopping batch
        final mockSuccessShoppingBatchResponseJsonData = [
          {
            "searchParameters": {
              "q": "laptop deals",
              "gl": "us",
              "type": "shopping",
              "engine": "google",
            },
            "shopping": [
              {
                "title": "Great Laptop Offer",
                "link": "https://example.com/laptop",
                "price": "\$999.99",
                "source": "BestStore",
                "imageUrl": "https://example.com/laptop.jpg",
                "rating": 4.5,
                "reviews": 120,
                "position": 1,
              },
            ],
            "credits": 1,
          },
          {
            "searchParameters": {
              "q": "best running shoes",
              "gl": "gb",
              "page": 2,
              "type": "shopping",
              "engine": "google",
            },
            "shopping": [
              {
                "title": "Top Running Shoe",
                "link": "https://example.com/shoe",
                "price": "£89.99",
                "source": "SportShop",
                "imageUrl": "https://example.com/shoe.jpg",
                "rating": 4.8,
                "reviews": 250,
                "position": 1,
              },
            ],
            "credits": 1,
          },
        ];

        test('returns List<ShoppingResponse> on successful API call', () async {
          // Arrange
          when(
            mockDio.request(
              expectedPath,
              data: expectedBody,
              options: anyNamed('options'),
            ),
          ).thenAnswer(
            (_) async => Response(
              requestOptions: RequestOptions(path: expectedPath),
              data: mockSuccessShoppingBatchResponseJsonData,
              statusCode: 200,
            ),
          );

          // Act
          final result = await serper.shoppingBatch(shoppingQueries);

          // Assert
          expect(result, isA<List<ShoppingResponse>>());
          expect(result.length, 2);
          expect(result[0].searchParameters.q, 'laptop deals');
          expect(result[0].shopping.first.title, "Great Laptop Offer");
          expect(result[0].credits, 1);
          expect(result[1].searchParameters.q, 'best running shoes');
          expect(result[1].shopping.first.title, "Top Running Shoe");
          expect(result[1].credits, 1);

          verify(
            mockDio.request(
              expectedPath,
              data: expectedBody,
              options: anyNamed('options'),
            ),
          ).called(1);
        });

        test(
          'throws SerperApiException on API error for batch shopping',
          () async {
            // Arrange
            when(
              mockDio.request(
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).thenThrow(
              DioException(
                requestOptions: RequestOptions(path: expectedPath),
                response: Response(
                  requestOptions: RequestOptions(path: expectedPath),
                  data: {'message': 'Service Unavailable'},
                  statusCode: 503,
                ),
              ),
            );

            // Act & Assert
            expect(
              () => serper.shoppingBatch(shoppingQueries),
              throwsA(
                isA<SerperApiException>()
                    .having((e) => e.statusCode, 'statusCode', 503)
                    .having(
                      (e) => e.message,
                      'message',
                      contains('Service Unavailable'),
                    ),
              ),
            );
            verify(
              mockDio.request(
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).called(1);
          },
        );

        test(
          'throws SerperApiException on Dio network error for batch shopping',
          () async {
            // Arrange
            when(
              mockDio.request(
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).thenThrow(
              DioException(
                requestOptions: RequestOptions(path: expectedPath),
                message: 'Network error during batch shopping',
                type: DioExceptionType.connectionError,
              ),
            );

            // Act & Assert
            expect(
              () => serper.shoppingBatch(shoppingQueries),
              throwsA(
                isA<SerperApiException>()
                    .having(
                      (e) => e.message,
                      'message',
                      contains('Network error during batch shopping'),
                    )
                    .having((e) => e.statusCode, 'statusCode', null),
              ),
            );
            verify(
              mockDio.request(
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).called(1);
          },
        );
      }); // End of shoppingBatch group

      // Add groups for lensBatch, scholarBatch, patentsBatch, autocompleteBatch, webpageBatch here
      // lensBatch
      group('lensBatch method', () {
        final lensQueries = [
          LensQuery(url: 'https://example.com/image1.jpg'),
          LensQuery(url: 'https://example.com/image2.png', gl: 'us'),
        ];
        const String expectedPath = 'https://google.serper.dev/lens';
        final String expectedBody = jsonEncode(
          lensQueries.map((q) => q.toJson()).toList(),
        );

        final mockSuccessLensBatchResponseJsonData = [
          {
            "searchParameters": {
              "url": "https://example.com/image1.jpg",
              "type": "lens",
              "engine": "google",
            },
            "organic": [
              {
                "title": "Similar Image 1",
                "link": "https://example.com/similar1",
                "source": "Source A",
                "imageUrl": "https://example.com/similar1.jpg",
                "thumbnailUrl": "https://example.com/similar1_thumb.jpg",
                "position": 1,
              },
            ],
            // "textMatches": [{"text": "Text found in image 1", "link": "https://example.com/textmatch1"}], // LensResponse uses 'organic'
            "credits": 15,
          },
          {
            "searchParameters": {
              "url": "https://example.com/image2.png",
              "gl": "us",
              "type": "lens",
              "engine": "google",
            },
            "organic": [
              {
                "title": "Similar Image 2",
                "link": "https://example.com/similar2",
                "source": "Source B",
                "imageUrl": "https://example.com/similar2.jpg",
                "thumbnailUrl": "https://example.com/similar2_thumb.jpg",
                "position": 1,
              },
            ],
            // "textMatches": [{"text": "Text found in image 2", "link": "https://example.com/textmatch2"}], // LensResponse uses 'organic'
            "credits": 15,
          },
        ];

        test('returns List<LensResponse> on successful API call', () async {
          when(
            mockDio.request(
              expectedPath,
              data: expectedBody,
              options: anyNamed('options'),
            ),
          ).thenAnswer(
            (_) async => Response(
              requestOptions: RequestOptions(path: expectedPath),
              data: mockSuccessLensBatchResponseJsonData,
              statusCode: 200,
            ),
          );
          final result = await serper.lensBatch(lensQueries);
          expect(result, isA<List<LensResponse>>());
          expect(result.length, 2);
          expect(
            result[0].searchParameters.url,
            'https://example.com/image1.jpg',
          );
          expect(
            result[0].organic.first.title,
            "Similar Image 1",
          ); // Changed from visualMatches
          expect(result[0].credits, 15);
          expect(
            result[1].searchParameters.url,
            'https://example.com/image2.png',
          );
          expect(
            result[1].organic.first.title,
            "Similar Image 2",
          ); // Changed from visualMatches
          expect(result[1].credits, 15);
          verify(
            mockDio.request(
              expectedPath,
              data: expectedBody,
              options: anyNamed('options'),
            ),
          ).called(1);
        });

        test('throws SerperApiException on API error for batch lens', () async {
          when(
            mockDio.request(
              expectedPath,
              data: expectedBody,
              options: anyNamed('options'),
            ),
          ).thenThrow(
            DioException(
              requestOptions: RequestOptions(path: expectedPath),
              response: Response(
                requestOptions: RequestOptions(path: expectedPath),
                data: {'message': 'Invalid Image URL'},
                statusCode: 400,
              ),
            ),
          );
          expect(
            () => serper.lensBatch(lensQueries),
            throwsA(
              isA<SerperApiException>()
                  .having((e) => e.statusCode, 'statusCode', 400)
                  .having(
                    (e) => e.message,
                    'message',
                    contains('Invalid Image URL'),
                  ),
            ),
          );
          verify(
            mockDio.request(
              expectedPath,
              data: expectedBody,
              options: anyNamed('options'),
            ),
          ).called(1);
        });

        test(
          'throws SerperApiException on Dio network error for batch lens',
          () async {
            when(
              mockDio.request(
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).thenThrow(
              DioException(
                requestOptions: RequestOptions(path: expectedPath),
                message: 'Network error for lens',
                type: DioExceptionType.connectionError,
              ),
            );
            expect(
              () => serper.lensBatch(lensQueries),
              throwsA(
                isA<SerperApiException>()
                    .having(
                      (e) => e.message,
                      'message',
                      contains('Network error for lens'),
                    )
                    .having((e) => e.statusCode, 'statusCode', null),
              ),
            );
            verify(
              mockDio.request(
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).called(1);
          },
        );
      }); // End of lensBatch group

      // scholarBatch
      group('scholarBatch method', () {
        final scholarQueries = [
          ScholarQuery(
            q: 'machine learning research',
            tbs: 'qdr:y',
          ), // sortBy is not a valid param, using tbs for time sort example
          ScholarQuery(q: 'quantum physics papers', hl: 'fr'), // language is hl
        ];
        const String expectedPath = 'https://google.serper.dev/scholar';
        final String expectedBody = jsonEncode(
          scholarQueries.map((q) => q.toJson()).toList(),
        );

        final mockSuccessScholarBatchResponseJsonData = [
          {
            "searchParameters": {
              "q": "machine learning research",
              "tbs": "qdr:y",
              "type": "scholar",
              "engine": "google",
            },
            "organic": [
              {
                "title": "Recent ML Paper",
                "link": "https://example.com/ml_paper",
                "snippet": "A new approach to ML...",
                "publicationInfo": "Journal of ML",
                "authors": ["Dr. A", "Dr. B"],
                "year": 2024,
                "citedBy": 10,
                "position": 1,
                "pdfUrl": "https://example.com/ml_paper.pdf",
                "id": "ml_paper_id",
                "source": "Journal of ML",
              },
            ], // Changed scholarResults to organic, citedBy to int
            "credits": 10,
          },
          {
            "searchParameters": {
              "q": "quantum physics papers",
              "hl": "fr",
              "type": "scholar",
              "engine": "google",
            },
            "organic": [
              {
                "title": "Papier de Physique Quantique",
                "link": "https://example.com/qp_paper",
                "snippet": "Une nouvelle approche...",
                "publicationInfo": "Journal de Physique",
                "authors": ["Dr. C"],
                "year": 2023,
                "citedBy": 5,
                "position": 1,
                "pdfUrl": "https://example.com/qp_paper.pdf",
                "id": "qp_paper_id",
                "source": "Journal de Physique",
              },
            ], // Changed scholarResults to organic, citedBy to int
            "credits": 10,
          },
        ];

        test('returns List<ScholarResponse> on successful API call', () async {
          when(
            mockDio.request(
              expectedPath,
              data: expectedBody,
              options: anyNamed('options'),
            ),
          ).thenAnswer(
            (_) async => Response(
              requestOptions: RequestOptions(path: expectedPath),
              data: mockSuccessScholarBatchResponseJsonData,
              statusCode: 200,
            ),
          );
          final result = await serper.scholarBatch(scholarQueries);
          expect(result, isA<List<ScholarResponse>>());
          expect(result.length, 2);
          expect(result[0].searchParameters.q, 'machine learning research');
          expect(
            result[0].organic.first.title,
            "Recent ML Paper",
          ); // Changed from scholarResults
          expect(result[0].organic.first.citedBy, 10);
          expect(result[0].credits, 10);
          expect(result[1].searchParameters.q, 'quantum physics papers');
          expect(
            result[1].organic.first.title,
            "Papier de Physique Quantique",
          ); // Changed from scholarResults
          expect(result[1].organic.first.citedBy, 5);
          expect(result[1].credits, 10);
          verify(
            mockDio.request(
              expectedPath,
              data: expectedBody,
              options: anyNamed('options'),
            ),
          ).called(1);
        });

        test(
          'throws SerperApiException on API error for batch scholar',
          () async {
            when(
              mockDio.request(
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).thenThrow(
              DioException(
                requestOptions: RequestOptions(path: expectedPath),
                response: Response(
                  requestOptions: RequestOptions(path: expectedPath),
                  data: {'message': 'Query Too Broad'},
                  statusCode: 400,
                ),
              ),
            );
            expect(
              () => serper.scholarBatch(scholarQueries),
              throwsA(
                isA<SerperApiException>()
                    .having((e) => e.statusCode, 'statusCode', 400)
                    .having(
                      (e) => e.message,
                      'message',
                      contains('Query Too Broad'),
                    ),
              ),
            );
            verify(
              mockDio.request(
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).called(1);
          },
        );

        test(
          'throws SerperApiException on Dio network error for batch scholar',
          () async {
            when(
              mockDio.request(
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).thenThrow(
              DioException(
                requestOptions: RequestOptions(path: expectedPath),
                message: 'Network error for scholar',
                type: DioExceptionType.connectionError,
              ),
            );
            expect(
              () => serper.scholarBatch(scholarQueries),
              throwsA(
                isA<SerperApiException>()
                    .having(
                      (e) => e.message,
                      'message',
                      contains('Network error for scholar'),
                    )
                    .having((e) => e.statusCode, 'statusCode', null),
              ),
            );
            verify(
              mockDio.request(
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).called(1);
          },
        );
      }); // End of scholarBatch group

      // patentsBatch
      group('patentsBatch method', () {
        final patentsQueries = [
          PatentsQuery(q: 'new battery technology', tbs: 'y'), 
          PatentsQuery(q: 'pharmaceutical innovations', gl: 'US'),
        ];
        const String expectedPath = 'https://google.serper.dev/patents';
        final String expectedBody = jsonEncode(patentsQueries.map((q) => q.toJson()).toList());

        final mockSuccessPatentsBatchResponseJsonData = [
          {
            "searchParameters": {"q": "new battery technology", "tbs": "y", "type": "patents", "engine": "google"},
            "organic": [{"title": "Advanced Battery System", "link": "https://example.com/patent_battery", "snippet": "A novel battery design...", "publicationNumber": "US12345A", "inventor": "Inventor X", "assignee": "Tech Corp", "priorityDate": "2023-01-01", "publicationDate": "2024-01-01", "position": 1, "filingDate": "2023-02-01", "language": "en", "thumbnailUrl": "https://example.com/thumb_battery.jpg"}], 
            "credits": 8,
          },
          {
            "searchParameters": {"q": "pharmaceutical innovations", "gl": "US", "type": "patents", "engine": "google"},
            "organic": [{"title": "New Drug Compound", "link": "https://example.com/patent_drug", "snippet": "A groundbreaking drug...", "publicationNumber": "US67890B", "inventor": "Inventor Y, Inventor Z", "assignee": "Pharma Inc.", "priorityDate": "2022-06-15", "publicationDate": "2023-12-01", "position": 1, "filingDate": "2022-07-01", "language": "en", "thumbnailUrl": "https://example.com/thumb_drug.jpg"}], 
            "credits": 8,
          }
        ];

        test('returns List<PatentsResponse> on successful API call', () async {
          when(
            mockDio.request(
              expectedPath,
              data: expectedBody,
              options: anyNamed('options'),
            ),
          ).thenAnswer(
            (_) async => Response(
              requestOptions: RequestOptions(path: expectedPath),
              data: mockSuccessPatentsBatchResponseJsonData,
              statusCode: 200,
            ),
          );
          final result = await serper.patentsBatch(patentsQueries);
          expect(result, isA<List<PatentsResponse>>());
          expect(result.length, 2);
          expect(result[0].searchParameters.q, 'new battery technology');
          expect(result[0].organic.first.inventor, "Inventor X");
          expect(result[0].credits, 8);
          expect(result[1].searchParameters.q, 'pharmaceutical innovations');
          expect(
            result[1].organic.first.title,
            "New Drug Compound",
          ); // Changed from patents
          expect(result[1].organic.first.inventor, "Inventor Y, Inventor Z");
          expect(result[1].credits, 8);
          verify(
            mockDio.request(
              expectedPath,
              data: expectedBody,
              options: anyNamed('options'),
            ),
          ).called(1);
        });

        test(
          'throws SerperApiException on API error for batch patents',
          () async {
            when(
              mockDio.request(
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).thenThrow(
              DioException(
                requestOptions: RequestOptions(path: expectedPath),
                response: Response(
                  requestOptions: RequestOptions(path: expectedPath),
                  data: {'message': 'Invalid Patent Query'},
                  statusCode: 400,
                ),
              ),
            );
            expect(
              () => serper.patentsBatch(patentsQueries),
              throwsA(
                isA<SerperApiException>()
                    .having((e) => e.statusCode, 'statusCode', 400)
                    .having(
                      (e) => e.message,
                      'message',
                      contains('Invalid Patent Query'),
                    ),
              ),
            );
            verify(
              mockDio.request(
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).called(1);
          },
        );

        test(
          'throws SerperApiException on Dio network error for batch patents',
          () async {
            when(
              mockDio.request(
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).thenThrow(
              DioException(
                requestOptions: RequestOptions(path: expectedPath),
                message: 'Network error for patents',
                type: DioExceptionType.connectionError,
              ),
            );
            expect(
              () => serper.patentsBatch(patentsQueries),
              throwsA(
                isA<SerperApiException>()
                    .having(
                      (e) => e.message,
                      'message',
                      contains('Network error for patents'),
                    )
                    .having((e) => e.statusCode, 'statusCode', null),
              ),
            );
            verify(
              mockDio.request(
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).called(1);
          },
        );
      }); // End of patentsBatch group

      // autocompleteBatch
      group('autocompleteBatch method', () {
        final autocompleteQueries = [
          AutocompleteQuery(q: 'flutter app de', hl: 'en'),
          AutocompleteQuery(q: 'best coffee sho', gl: 'us'),
        ];
        const String expectedPath = 'https://google.serper.dev/autocomplete';
        final String expectedBody = jsonEncode(
          autocompleteQueries.map((q) => q.toJson()).toList(),
        );

        final mockSuccessAutocompleteBatchResponseJsonData = [
          {
            "searchParameters": {
              "q": "flutter app de",
              "hl": "en",
              "type": "autocomplete",
              "engine": "google",
            },
            "suggestions": [
              {"value": "flutter app development"},
              {"value": "flutter app deploy"},
            ], // Corrected to List<Map<String, String>>
            "credits": 0,
          },
          {
            "searchParameters": {
              "q": "best coffee sho",
              "gl": "us",
              "type": "autocomplete",
              "engine": "google",
            },
            "suggestions": [
              {"value": "best coffee shops near me"},
              {"value": "best coffee shops downtown"},
              {"value": "best coffee shops nyc"},
            ], // Corrected to List<Map<String, String>>
            "credits": 0,
          },
        ];

        test(
          'returns List<AutocompleteResponse> on successful API call',
          () async {
            when(
              mockDio.request(
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).thenAnswer(
              (_) async => Response(
                requestOptions: RequestOptions(path: expectedPath),
                data: mockSuccessAutocompleteBatchResponseJsonData,
                statusCode: 200,
              ),
            );
            final result = await serper.autocompleteBatch(autocompleteQueries);
            expect(result, isA<List<AutocompleteResponse>>());
            expect(result.length, 2);
            expect(result[0].searchParameters.q, 'flutter app de');
            expect(
              result[0].suggestions.first.value,
              "flutter app development",
            ); // Corrected assertion
            expect(result[0].credits, 0);
            expect(result[1].searchParameters.q, 'best coffee sho');
            expect(
              result[1].suggestions.first.value,
              "best coffee shops near me",
            ); // Corrected assertion
            expect(result[1].credits, 0);
            verify(
              mockDio.request(
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).called(1);
          },
        );

        test(
          'throws SerperApiException on API error for batch autocomplete',
          () async {
            when(
              mockDio.request(
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).thenThrow(
              DioException(
                requestOptions: RequestOptions(path: expectedPath),
                response: Response(
                  requestOptions: RequestOptions(path: expectedPath),
                  data: {'message': 'Invalid Autocomplete Query'},
                  statusCode: 400,
                ),
              ),
            );
            expect(
              () => serper.autocompleteBatch(autocompleteQueries),
              throwsA(
                isA<SerperApiException>()
                    .having((e) => e.statusCode, 'statusCode', 400)
                    .having(
                      (e) => e.message,
                      'message',
                      contains('Invalid Autocomplete Query'),
                    ),
              ),
            );
            verify(
              mockDio.request(
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).called(1);
          },
        );

        test(
          'throws SerperApiException on Dio network error for batch autocomplete',
          () async {
            when(
              mockDio.request(
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).thenThrow(
              DioException(
                requestOptions: RequestOptions(path: expectedPath),
                message: 'Network error for autocomplete',
                type: DioExceptionType.connectionError,
              ),
            );
            expect(
              () => serper.autocompleteBatch(autocompleteQueries),
              throwsA(
                isA<SerperApiException>()
                    .having(
                      (e) => e.message,
                      'message',
                      contains('Network error for autocomplete'),
                    )
                    .having((e) => e.statusCode, 'statusCode', null),
              ),
            );
            verify(
              mockDio.request(
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).called(1);
          },
        );
      }); // End of autocompleteBatch group

      // webpageBatch
      group('webpageBatch method', () {
        final webpageQueries = [
          WebpageQuery(url: 'https://example.com/page1'),
          WebpageQuery(url: 'https://example.com/page2', includeMarkdown: true),
        ];
        // Webpage API uses a different base URL
        const String expectedPath = 'https://scrape.serper.dev/webpage';
        final String expectedBody = jsonEncode(
          webpageQueries.map((q) => q.toJson()).toList(),
        );

        // Each item in the list is a WebpageResponse
        final mockSuccessWebpageBatchResponseJsonData = [
          {
            // WebpageResponse 1
            "results": [
              {
                "text": "Content of page 1",
                "markdown": null,
                "metadata": {"title": "Page 1"},
                "credits": 1,
              },
            ],
          },
          {
            // WebpageResponse 2
            "results": [
              {
                "text": "Content of page 2",
                "markdown": "# Page 2 Content",
                "metadata": {"title": "Page 2"},
                "credits": 1,
              },
            ],
          },
        ];

        test('returns List<WebpageResponse> on successful API call', () async {
          when(
            mockDio.request(
              expectedPath,
              data: expectedBody,
              options: anyNamed('options'),
            ),
          ).thenAnswer(
            (_) async => Response(
              requestOptions: RequestOptions(path: expectedPath),
              data: mockSuccessWebpageBatchResponseJsonData,
              statusCode: 200,
            ),
          );

          final result = await serper.webpageBatch(webpageQueries);

          expect(result, isA<List<WebpageResponse>>());
          expect(result.length, 2);

          // Check first WebpageResponse
          expect(result[0].results.isNotEmpty, isTrue);
          expect(result[0].results.first.text, "Content of page 1");
          expect(
            result[0].results.first.metadata?['title'],
            "Page 1",
          ); // Added null-aware access
          expect(result[0].results.first.credits, 1);
          // WebpageResponse does not have searchParameters or top-level credits
          // expect(result[0].searchParameters.url, \\'https://example.com/page1\\'); // This would fail
          // expect(result[0].credits, 3); // This would fail

          // Check second WebpageResponse
          expect(result[1].results.isNotEmpty, isTrue);
          expect(result[1].results.first.text, "Content of page 2");
          expect(result[1].results.first.markdown, "# Page 2 Content");
          expect(
            result[1].results.first.metadata?['title'],
            "Page 2",
          ); // Added null-aware access
          expect(result[1].results.first.credits, 1);

          verify(
            mockDio.request(
              expectedPath,
              data: expectedBody,
              options: anyNamed('options'),
            ),
          ).called(1);
        });

        test(
          'throws SerperApiException on API error for batch webpage',
          () async {
            when(
              mockDio.request(
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).thenThrow(
              DioException(
                requestOptions: RequestOptions(path: expectedPath),
                response: Response(
                  requestOptions: RequestOptions(path: expectedPath),
                  data: {'message': 'Invalid URL for Webpage'},
                  statusCode: 400,
                ),
              ),
            );
            expect(
              () => serper.webpageBatch(webpageQueries),
              throwsA(
                isA<SerperApiException>()
                    .having((e) => e.statusCode, 'statusCode', 400)
                    .having(
                      (e) => e.message,
                      'message',
                      contains('Invalid URL for Webpage'),
                    ),
              ),
            );
            verify(
              mockDio.request(
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).called(1);
          },
        );

        test(
          'throws SerperApiException on Dio network error for batch webpage',
          () async {
            when(
              mockDio.request(
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).thenThrow(
              DioException(
                requestOptions: RequestOptions(path: expectedPath),
                message: 'Network error for webpage',
                type: DioExceptionType.connectionError,
              ),
            );
            expect(
              () => serper.webpageBatch(webpageQueries),
              throwsA(
                isA<SerperApiException>()
                    .having(
                      (e) => e.message,
                      'message',
                      contains('Network error for webpage'),
                    )
                    .having((e) => e.statusCode, 'statusCode', null),
              ),
            );
            verify(
              mockDio.request(
                expectedPath,
                data: expectedBody,
                options: anyNamed('options'),
              ),
            ).called(1);
          },
        );
      }); // End of webpageBatch group
    }); // End of Batch API Methods group
  }); // End of Serper API Client group
}
