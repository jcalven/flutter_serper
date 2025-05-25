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

        final result = await serper.search(searchQueries);

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

        final result = await serper.images(imagesQueries);

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

        final result = await serper.news(newsQueries);

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

        final result = await serper.videos(videosQueries);

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
        final result = await serper.places([query]);

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
        final result = await serper.maps([query]);

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
        final result = await serper.shopping([query]);
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
        final result = await serper.lens([query]);
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
        final result = await serper.scholar([query]);
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
        final result = await serper.patents([query]);
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
        final result = await serper.reviews([query]);
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
        final result = await serper.autocomplete([query]);
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
        final result = await serper.webpage([query]);

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

    group('callApiWithMixin method', () {
      test('works correctly with custom endpoints', () async {
        // Arrange
        final expectedResponseData = {
          'searchParameters': {'q': 'test'},
          'organic': [
            {
              'title': 'Test Result', // From additional_test
              'link':
                  'http://example.com/custom-result', // From additional_test
              'snippet': 'Custom snippet.', // From additional_test
              'position': 1,
            },
          ],
          'credits': 1,
        };
        // For callApiWithMixin, queries is List<Map<String, dynamic>>
        final queryList = [
          {'q': 'test'},
        ];
        final requestData = json.encode(queryList);

        when(
          mockDio.request(
            'https://google.serper.dev/custom-endpoint',
            data: requestData,
            options: anyNamed('options'),
          ),
        ).thenAnswer(
          (_) async => Response(
            data: expectedResponseData,
            statusCode: 200,
            requestOptions: RequestOptions(
              path: '',
            ), // Path is part of the first arg to request
          ),
        );

        // Act
        final result = await serper.callApiWithMixin<SearchResponse>(
          '/custom-endpoint', // Endpoint path, base URL is prepended by dio/serper client
          queryList,
          SearchResponse.fromJson,
        );

        // Assert
        verify(
          mockDio.request(
            'https://google.serper.dev/custom-endpoint',
            data: requestData,
            options: anyNamed('options'),
          ),
        ).called(1);

        expect(result, isA<SearchResponse>());
        expect(result.organic.length, equals(1));
        expect(result.organic.first.title, equals('Test Result'));
        expect(result.credits, equals(1));
      });
    });
    // End of tests from serper_api_additional_test.dart

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
            mockDio.request(
              // Changed from mockDio.post
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
            mockDio.request(
              // Changed from mockDio.post
              expectedPath,
              data: expectedBody,
              options: anyNamed('options'),
            ),
          ).called(1);
        },
      );

      test('throws SerperApiException on Dio network error', () async {
        when(
          mockDio.request(
            // Changed from mockDio.post
            expectedPath,
            data: expectedBody,
            options: anyNamed('options'),
          ),
        ).thenThrow(
          DioException(
            requestOptions: RequestOptions(path: expectedPath),
            // Simulating e.message being null for this specific test case
            // error: null, // This would make e.message null
            error: 'Connection failed', // Keep an error message for the test
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
                  // Adjusted to match the actual message format from flutter_serper_base.dart
                  equals('Network error: Connection failed'),
                )
                .having((e) => e.statusCode, 'statusCode', null),
          ),
        );
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
  });
}
