// import 'dart:convert';

// import 'package:dio/dio.dart';
// import 'package:flutter_serper/flutter_serper.dart';
// import 'mocks.mocks.dart';
// import 'package:flutter_serper/src/flutter_serper_base.dart';
// import 'package:flutter_serper/src/models/language_code.dart';
// import 'package:flutter_serper/src/models/country_code.dart';
// import 'package:flutter_serper/src/models/queries/queries.dart';
// import 'package:flutter_serper/src/models/responses/responses.dart';
// import 'package:flutter_serper/src/models/results/results.dart';
// import 'package:flutter_serper/src/models/shared_types.dart';
// import 'package:test/test.dart';
// import 'package:mockito/mockito.dart';

// import 'mocks.mocks.dart';

// const testApiKey = 'test_api_key';

// final defaultOptionsMatcher = isA<RequestOptions>()
//     .having((opts) => opts.headers['X-API-KEY'], 'X-API-KEY', testApiKey)
//     .having((opts) => opts.headers['Content-Type'], 'Content-Type',
//         'application/json');

// void main() {
//   late MockDio mockClient;
//   late Serper serperApi;
//   late MockHttpClientAdapter mockHttpClientAdapter;

//   setUp(() {
//     mockClient = MockDio();
//     serperApi = Serper(apiKey: 'test_api_key', dio: mockClient);
//     mockHttpClientAdapter = MockHttpClientAdapter();
//   });

// // Add this mock if not generated already
// class MockHttpClientAdapter extends Mock implements HttpClientAdapter {}
//   });

//   group('SerperApi', () {
//     group('search method', () {
//       test('returns SearchResponse on success', () async {
//         final query = SearchQuery(q: 'test query');
//         final mockResponse = SearchResponse.fromJson(jsonDecode('''
//         {
//           "searchParameters": {"q": "test query", "gl": "us", "hl": "en"},
//           "organic": [{"title": "Test Result"}],
//           "credits": 1
//         }
//         '''));
//         when(mockClient.post(
//           'https://google.serper.dev/search',
//           data: query.toJson(),
//           options: anyNamed('options'),
//         )).thenAnswer((_) async => Response(
//             requestOptions: RequestOptions(path: ''),
//             data: mockResponse.toJson(),
//             statusCode: 200));

//         final result = await serperApi.search(query);

//         expect(result, isA<SearchResponse>());
//         expect(result.searchParameters.q, 'test query');
//       });

//       test('throws SerperApiException on error', () async {
//         final query = SearchQuery(q: 'test query');
//         when(mockClient.post(
//           'https://google.serper.dev/search',
//           data: query.toJson(),
//           options: anyNamed('options'),
//         )).thenAnswer((_) async => Response(
//             requestOptions: RequestOptions(path: ''),
//             data: {'message': 'Error'},
//             statusCode: 400));

//         expect(
//           () => serperApi.search(query),
//           throwsA(isA<SerperApiException>()),
//         );
//       });
//     });

//     group('places method', () {
//       test('returns PlacesResponse on success', () async {
//         final query = PlacesQuery(
//           q: 'coffee shop',
//           location: '10.0,20.0',
//           countryCode: CountryCode.unitedStates,
//           languageCode: LanguageCode.english,
//           page: 1,
//         );
//         final mockResponse = PlacesResponse.fromJson(jsonDecode('''
//         {
//           "searchParameters": {"q": "coffee shop", "ll": "10.0,20.0", "gl": "us", "hl": "en", "type": "cafe", "page": 1, "limit": 10},
//           "places": [{"title": "Best Cafe"}],
//           "credits": 10
//         }
//         '''));
//         when(mockClient.post(
//           'https://google.serper.dev/places',
//           data: query.toJson(),
//           options: anyNamed('options'),
//         )).thenAnswer((_) async => Response(
//             requestOptions: RequestOptions(path: ''),
//             data: mockResponse.toJson(),
//             statusCode: 200));

//         final result = await serperApi.places(query);

//         expect(result, isA<PlacesResponse>());
//         expect(result.searchParameters.q, 'coffee shop');
//         expect(result.searchParameters.location, '10.0,20.0');
//         expect(result.searchParameters.countryCode, CountryCode.unitedStates);
//         expect(result.searchParameters.languageCode, LanguageCode.english);
//         expect(result.searchParameters.page, 1);
//       });

//       test('throws SerperApiException on error', () async {
//         final query = PlacesQuery(q: 'coffee shop');
//         when(mockClient.post(
//           'https://google.serper.dev/places',
//           data: query.toJson(),
//           options: anyNamed('options'),
//         )).thenAnswer((_) async => Response(
//             requestOptions: RequestOptions(path: ''),
//             data: {'message': 'Error'},
//             statusCode: 400));

//         expect(
//           () => serperApi.places(query),
//           throwsA(isA<SerperApiException>()),
//         );
//       });
//     });

//     group('images method', () {
//       test('returns ImagesResponse on success', () async {
//         final query = ImagesQuery(
//           q: 'cats',
//           countryCode: CountryCode.unitedKingdomGB,
//           languageCode: LanguageCode.english,
//           page: 1,
//           num: 10,
//         );
//         final mockResponse = ImagesResponse.fromJson(jsonDecode('''
//         {
//           "searchParameters": {"q": "cats", "gl": "gb", "hl": "en", "page": 1, "limit": 10},
//           "images": [{"title": "Cat Image"}],
//           "credits": 1
//         }
//         '''));
//         when(mockClient.post(
//           'https://google.serper.dev/images',
//           data: query.toJson(),
//           options: anyNamed('options'),
//         )).thenAnswer((_) async => Response(
//             requestOptions: RequestOptions(path: ''),
//             data: mockResponse.toJson(),
//             statusCode: 200));

//         final result = await serperApi.images(query);

//         expect(result, isA<ImagesResponse>());
//         expect(result.searchParameters.q, 'cats');
//         expect(result.searchParameters.countryCode, CountryCode.unitedKingdomGB);
//         expect(result.searchParameters.languageCode, LanguageCode.english);
//         expect(result.searchParameters.page, 1);
//         expect(result.searchParameters.num, 10);
//       });

//       test('throws SerperApiException on error', () async {
//         final query = ImagesQuery(q: 'cats');
//         when(mockClient.post(
//           'https://google.serper.dev/images',
//           data: query.toJson(),
//           options: anyNamed('options'),
//         )).thenAnswer((_) async => Response(
//             requestOptions: RequestOptions(path: ''),
//             data: {'message': 'Error'},
//             statusCode: 400));

//         expect(
//           () => serperApi.images(query),
//           throwsA(isA<SerperApiException>()),
//         );
//       });
//     });

//     group('news method', () {
//       test('returns NewsResponse on success', () async {
//         final query = NewsQuery(
//           q: 'latest news',
//           countryCode: CountryCode.canada,
//           languageCode: LanguageCode.english,
//           page: 1,
//           num: 10,
//         );
//         final mockResponse = NewsResponse.fromJson(jsonDecode('''
//         {
//           "searchParameters": {"q": "latest news", "gl": "ca", "hl": "en", "page": 1, "limit": 10},
//           "news": [{"title": "Breaking News"}],
//           "credits": 1
//         }
//         '''));
//         when(mockClient.post(
//           'https://google.serper.dev/news',
//           data: query.toJson(),
//           options: anyNamed('options'),
//         )).thenAnswer((_) async => Response(
//             requestOptions: RequestOptions(path: ''),
//             data: mockResponse.toJson(),
//             statusCode: 200));

//         final result = await serperApi.news(query);

//         expect(result, isA<NewsResponse>());
//         expect(result.searchParameters.q, 'latest news');
//         expect(result.searchParameters.countryCode, CountryCode.canada);
//         expect(result.searchParameters.languageCode, LanguageCode.english);
//         expect(result.searchParameters.page, 1);
//         expect(result.searchParameters.num, 10);
//       });

//       test('throws SerperApiException on error', () async {
//         final query = NewsQuery(q: 'latest news');
//         when(mockClient.post(
//           'https://google.serper.dev/news',
//           data: query.toJson(),
//           options: anyNamed('options'),
//         )).thenAnswer((_) async => Response(
//             requestOptions: RequestOptions(path: ''),
//             data: {'message': 'Error'},
//             statusCode: 400));

//         expect(
//           () => serperApi.news(query),
//           throwsA(isA<SerperApiException>()),
//         );
//       });
//     });

//     group('videos method', () {
//       test('returns VideosResponse on success', () async {
//         final query = VideosQuery(
//           q: 'music videos',
//           countryCode: CountryCode.australia,
//           languageCode: LanguageCode.english,
//           page: 1,
//           num: 10,
//         );
//         final mockResponse = VideosResponse.fromJson(jsonDecode('''
//         {
//           "searchParameters": {"q": "music videos", "gl": "au", "hl": "en", "page": 1, "limit": 10},
//           "videos": [{"title": "Song Video"}],
//           "credits": 1
//         }
//         '''));
//         when(mockClient.post(
//           'https://google.serper.dev/videos',
//           data: query.toJson(),
//           options: anyNamed('options'),
//         )).thenAnswer((_) async => Response(
//             requestOptions: RequestOptions(path: ''),
//             data: mockResponse.toJson(),
//             statusCode: 200));

//         final result = await serperApi.videos(query);

//         expect(result, isA<VideosResponse>());
//         expect(result.searchParameters.q, 'music videos');
//         expect(result.searchParameters.countryCode, CountryCode.australia);
//         expect(result.searchParameters.languageCode, LanguageCode.english);
//         expect(result.searchParameters.page, 1);
//         expect(result.searchParameters.num, 10);
//       });

//       test('throws SerperApiException on error', () async {
//         final query = VideosQuery(q: 'music videos');
//         when(mockClient.post(
//           'https://google.serper.dev/videos',
//           data: query.toJson(),
//           options: anyNamed('options'),
//         )).thenAnswer((_) async => Response(
//             requestOptions: RequestOptions(path: ''),
//             data: {'message': 'Error'},
//             statusCode: 400));

//         expect(
//           () => serperApi.videos(query),
//           throwsA(isA<SerperApiException>()),
//         );
//       });
//     });

//     group('shopping method', () {
//       test('returns ShoppingResponse on success', () async {
//         final query = ShoppingQuery(
//           q: 'shoes',
//           countryCode: CountryCode.germany,
//           languageCode: LanguageCode.german,
//           page: 1,
//         );
//         final mockResponse = ShoppingResponse.fromJson(jsonDecode('''
//         {
//           "searchParameters": {"q": "shoes", "gl": "de", "hl": "de", "page": 1},
//           "shopping": [{"title": "Top Shoe Deal"}],
//           "credits": 1
//         }
//         '''));
//         when(mockClient.post(
//           'https://google.serper.dev/shopping',
//           data: query.toJson(),
//           options: anyNamed('options'),
//         )).thenAnswer((_) async => Response(
//             requestOptions: RequestOptions(path: ''),
//             data: mockResponse.toJson(),
//             statusCode: 200));

//         final result = await serperApi.shopping(query);

//         expect(result, isA<ShoppingResponse>());
//         expect(result.searchParameters.q, 'shoes');
//         expect(result.searchParameters.countryCode, CountryCode.germany);
//         expect(result.searchParameters.languageCode, LanguageCode.german);
//         expect(result.searchParameters.page, 1);
//       });

//       test('throws SerperApiException on error', () async {
//         final query = ShoppingQuery(q: 'shoes');
//         when(mockClient.post(
//           'https://google.serper.dev/shopping',
//           data: query.toJson(),
//           options: anyNamed('options'),
//         )).thenAnswer((_) async => Response(
//             requestOptions: RequestOptions(path: ''),
//             data: {'message': 'Error'},
//             statusCode: 400));

//         expect(
//           () => serperApi.shopping(query),
//           throwsA(isA<SerperApiException>()),
//         );
//       });
//     });

//     group('scholar method', () {
//       test('returns ScholarResponse on success', () async {
//         final query = ScholarQuery(
//           q: 'ai research',
//           countryCode: CountryCode.france,
//           languageCode: LanguageCode.french,
//           page: 1,
//         );
//         final mockResponse = ScholarResponse.fromJson(jsonDecode('''
//         {
//           "searchParameters": {"q": "ai research", "hl": "fr", "page": 1, "limit": 10, "sort_by": "date"},
//           "organic": [{"title": "AI Paper", "citedBy": 100}],
//           "credits": 10
//         }
//         '''));
//         when(mockClient.post(
//           'https://google.serper.dev/scholar',
//           data: query.toJson(),
//           options: anyNamed('options'),
//         )).thenAnswer((_) async => Response(
//             requestOptions: RequestOptions(path: ''),
//             data: mockResponse.toJson(),
//             statusCode: 200));

//         final result = await serperApi.scholar(query);

//         expect(result, isA<ScholarResponse>());
//         expect(result.searchParameters.q, 'ai research');
//         expect(result.searchParameters.countryCode, CountryCode.france);
//         expect(result.searchParameters.languageCode, LanguageCode.french);
//         expect(result.searchParameters.page, 1);
//         // ScholarQuery does not have num or sortBy fields
//       });

//       test('throws SerperApiException on error', () async {
//         final query = ScholarQuery(q: 'ai research');
//         when(mockClient.post(
//           'https://google.serper.dev/scholar',
//           data: query.toJson(),
//           options: anyNamed('options'),
//         )).thenAnswer((_) async => Response(
//             requestOptions: RequestOptions(path: ''),
//             data: {'message': 'Error'},
//             statusCode: 400));

//         expect(
//           () => serperApi.scholar(query),
//           throwsA(isA<SerperApiException>()),
//         );
//       });
//     });

//     group('patents method', () {
//       test('returns PatentsResponse on success', () async {
//         final query = PatentsQuery(
//           q: 'new invention',
//           countryCode: CountryCode.japan,
//           languageCode: LanguageCode.japanese,
//           page: 1,
//           num: 10,
//         );
//         final mockResponse = PatentsResponse.fromJson(jsonDecode('''
//         {
//           "searchParameters": {"q": "new invention", "hl": "ja", "page": 1, "limit": 10, "sort_by": "date"},
//           "organic": [{"title": "Cool Patent"}],
//           "credits": 8
//         }
//         '''));
//         when(mockClient.post(
//           'https://google.serper.dev/patents',
//           data: query.toJson(),
//           options: anyNamed('options'),
//         )).thenAnswer((_) async => Response(
//             requestOptions: RequestOptions(path: ''),
//             data: mockResponse.toJson(),
//             statusCode: 200));

//         final result = await serperApi.patents(query);

//         expect(result, isA<PatentsResponse>());
//         expect(result.searchParameters.q, 'new invention');
//         expect(result.searchParameters.countryCode, CountryCode.japan);
//         expect(result.searchParameters.languageCode, LanguageCode.japanese);
//         expect(result.searchParameters.page, 1);
//         expect(result.searchParameters.num, 10);
//         // PatentsQuery does not have sortBy field
//       });

//       test('throws SerperApiException on error', () async {
//         final query = PatentsQuery(q: 'new invention');
//         when(mockClient.post(
//           'https://google.serper.dev/patents',
//           data: query.toJson(),
//           options: anyNamed('options'),
//         )).thenAnswer((_) async => Response(
//             requestOptions: RequestOptions(path: ''),
//             data: {'message': 'Error'},
//             statusCode: 400));

//         expect(
//           () => serperApi.patents(query),
//           throwsA(isA<SerperApiException>()),
//         );
//       });
//     });

//     group('maps method', () {
//       test('returns MapsResponse on success', () async {
//         final query = MapsQuery(
//           q: 'restaurants near me',
//           latLng: LatLng(34.0522, -118.2437),
//           languageCode: LanguageCode.english,
//           page: 1,
//         );
//         final mockResponse = MapsResponse.fromJson(jsonDecode('''
//         {
//           "searchParameters": {"q": "restaurants near me", "ll": "34.0522,-118.2437", "hl": "en", "page": 1, "limit": 10},
//           "place": {"title": "Local Restaurant"},
//           "credits": 5
//         }
//         '''));
//         when(mockClient.post(
//           'https://google.serper.dev/maps',
//           data: query.toJson(),
//           options: anyNamed('options'),
//         )).thenAnswer((_) async => Response(
//             requestOptions: RequestOptions(path: ''),
//             data: mockResponse.toJson(),
//             statusCode: 200));

//         final result = await serperApi.maps(query);

//         expect(result, isA<MapsResponse>());
//         expect(result.searchParameters.q, 'restaurants near me');
//         expect(result.searchParameters.latLng?.latitude, 34.0522);
//         expect(result.searchParameters.latLng?.longitude, -118.2437);
//         expect(result.searchParameters.languageCode, LanguageCode.english);
//         expect(result.searchParameters.page, 1);
//       });

//       test('throws SerperApiException on error', () async {
//         final query = MapsQuery(q: 'restaurants near me');
//         when(mockClient.post(
//           'https://google.serper.dev/maps',
//           data: query.toJson(),
//           options: anyNamed('options'),
//         )).thenAnswer((_) async => Response(
//             requestOptions: RequestOptions(path: ''),
//             data: {'message': 'Error'},
//             statusCode: 400));

//         expect(
//           () => serperApi.maps(query),
//           throwsA(isA<SerperApiException>()),
//         );
//       });
//     });

//     group('reviews method', () {
//       test('returns ReviewsResponse on success', () async {
//         final query = ReviewsQuery.withPlaceId(
//           placeId: 'ChIJN1t_tDeuEmsRUsoyG83frY4',
//           languageCode: LanguageCode.english,
//           sortBy: SortByValue.highestRating,
//         );
//         final mockResponse = ReviewsResponse.fromJson(jsonDecode('''
//         {
//           "searchParameters": {"placeId": "ChIJN1t_tDeuEmsRUsoyG83frY4", "hl": "en", "limit": 10, "sort_by": "rating"},
//           "reviews": [{"text": "Great place!"}],
//           "credits": 7
//         }
//         '''));
//         when(mockClient.post(
//           'https://google.serper.dev/reviews',
//           data: query.toJson(),
//           options: anyNamed('options'),
//         )).thenAnswer((_) async => Response(
//             requestOptions: RequestOptions(path: ''),
//             data: mockResponse.toJson(),
//             statusCode: 200));

//         final result = await serperApi.reviews(query);

//         expect(result, isA<ReviewsResponse>());
//         // Use Dart 3 pattern matching to safely access union type fields
//         if (result.searchParameters is ReviewsQueryPlaceId) {
//           final params = result.searchParameters as ReviewsQueryPlaceId;
//           expect(params.placeId, 'ChIJN1t_tDeuEmsRUsoyG83frY4');
//           expect(params.languageCode, LanguageCode.english);
//           // page is not present on withPlaceId, so do not assert it
//           expect(params.sortBy, SortByValue.highestRating);
//         } else {
//           fail('Expected searchParameters to be of type ReviewsQueryPlaceId');
//         }
//       });

//       test('throws SerperApiException on error for placeId query', () async {
//         final query = ReviewsQuery.withPlaceId(placeId: 'invalid-place-id');
//         when(mockClient.post(
//           'https://google.serper.dev/reviews',
//           data: query.toJson(),
//           options: anyNamed('options'),
//         )).thenAnswer((_) async => Response(
//             requestOptions: RequestOptions(path: ''),
//             data: {'message': 'Error'},
//             statusCode: 400));

//         expect(
//           () => serperApi.reviews(query),
//           throwsA(isA<SerperApiException>()),
//         );
//       });

//       test('returns ReviewsResponse on success for q query', () async {
//         final query = ReviewsQuery.withFid(
//           fid: 'Google Sydney reviews',
//           countryCode: CountryCode.australia,
//           languageCode: LanguageCode.english,
//           sortBy: SortByValue.highestRating,
//         );
//         final mockResponse = ReviewsResponse.fromJson(jsonDecode('''
//         {
//           "searchParameters": {"q": "Google Sydney reviews", "gl": "au", "hl": "en", "page": 1, "limit": 10, "sort_by": "rating"},
//           "reviews": [{"text": "Amazing place!"}],
//           "credits": 7
//         }
//         '''));
//         when(mockClient.post(
//           'https://google.serper.dev/reviews',
//           data: query.toJson(),
//           options: anyNamed('options'),
//         )).thenAnswer((_) async => Response(
//             requestOptions: RequestOptions(path: ''),
//             data: mockResponse.toJson(),
//             statusCode: 200));

//         final result = await serperApi.reviews(query);

//         expect(result, isA<ReviewsResponse>());
//         if (result.searchParameters is ReviewsQueryFid) {
//           final params = result.searchParameters as ReviewsQueryFid;
//           expect(params.fid, 'Google Sydney reviews');
//           expect(params.countryCode, CountryCode.australia);
//           expect(params.languageCode, LanguageCode.english);
//           expect(params.sortBy, SortByValue.highestRating);
//         } else {
//           fail('Expected searchParameters to be of type ReviewsQueryFid');
//         }
//       });

//       test('throws SerperApiException on error for q query', () async {
//         final query = ReviewsQuery.withFid(fid: 'error query');
//         when(mockClient.post(
//           'https://google.serper.dev/reviews',
//           data: query.toJson(),
//           options: anyNamed('options'),
//         )).thenAnswer((_) async => Response(
//             requestOptions: RequestOptions(path: ''),
//             data: {'message': 'Error'},
//             statusCode: 400));

//         expect(
//           () => serperApi.reviews(query),
//           throwsA(isA<SerperApiException>()),
//         );
//       });
//     });

//     group('autocomplete method', () {
//       test('returns AutocompleteResponse on success', () async {
//         final query = AutocompleteQuery(
//           q: 'flutter',
//           countryCode: CountryCode.unitedStates,
//           languageCode: LanguageCode.english,
//         );
//         final mockResponse = AutocompleteResponse.fromJson(jsonDecode('''
//         {
//           "searchParameters": {"q": "flutter", "gl": "us", "hl": "en"},
//           "suggestions": [
//             "flutter tutorial",
//             "flutter vs react native"
//           ],
//           "credits": 1
//         }
//         '''));
//         when(mockClient.post(
//           'https://google.serper.dev/autocomplete',
//           data: query.toJson(),
//           options: anyNamed('options'),
//         )).thenAnswer((_) async => Response(
//             requestOptions: RequestOptions(path: ''),
//             data: mockResponse.toJson(),
//             statusCode: 200));

//         final result = await serperApi.autocomplete(query);

//         expect(result, isA<AutocompleteResponse>());
//         expect(result.searchParameters.q, 'flutter');
//         expect(result.searchParameters.countryCode, CountryCode.unitedStates);
//         expect(result.searchParameters.languageCode, LanguageCode.english);
//       });

//       test('throws SerperApiException on error', () async {
//         final query = AutocompleteQuery(q: 'flutter');
//         when(mockClient.post(
//           'https://google.serper.dev/autocomplete',
//           data: query.toJson(),
//           options: anyNamed('options'),
//         )).thenAnswer((_) async => Response(
//             requestOptions: RequestOptions(path: ''),
//             data: {'message': 'Error'},
//             statusCode: 400));

//         expect(
//           () => serperApi.autocomplete(query),
//           throwsA(isA<SerperApiException>()),
//         );
//       });
//     });

//     group('webpage method', () {
//       test('returns WebpageResponse on success', () async {
//         final query = WebpageQuery(url: 'https://example.com');
//         final mockResponse = WebpageResponse.fromJson(jsonDecode('''
//         {
//           "searchParameters": {"url": "https://example.com", "engine": "webpage_serp"},
//           "results": [{"text": "Example content"}],
//         }
//         '''));
//         when(mockClient.post(
//           'https://google.serper.dev/webpage',
//           data: query.toJson(),
//           options: anyNamed('options'),
//         )).thenAnswer((_) async => Response(
//             requestOptions: RequestOptions(path: ''),
//             data: mockResponse.toJson(),
//             statusCode: 200));

//         final result = await serperApi.webpage(query);

//         expect(result, isA<WebpageResponse>());
//         expect(result.results[0].text, 'Example content');
//       });

//       test('throws SerperApiException on error', () async {
//         final query = WebpageQuery(url: 'invalid-url');
//         when(mockClient.post(
//           'https://google.serper.dev/webpage',
//           data: query.toJson(),
//           options: anyNamed('options'),
//         )).thenAnswer((_) async => Response(
//             requestOptions: RequestOptions(path: ''),
//             data: {'message': 'Error'},
//             statusCode: 400));

//         expect(
//           () => serperApi.webpage(query),
//           throwsA(isA<SerperApiException>()),
//         );
//       });
//     });

//     group('lens method', () {
//       test('returns LensResponse on success', () async {
//         final query = LensQuery(
//           url: 'https://example.com/image.jpg',
//           countryCode: CountryCode.unitedStates,
//           languageCode: LanguageCode.english,
//         );
//         final mockResponse = LensResponse.fromJson(jsonDecode('''
//         {
//           "searchParameters": {"url": "https://example.com/image.jpg", "gl": "us", "hl": "en"},
//           "organic": [{"title": "Similar Image"}],
//           "credits": 15
//         }
//         '''));
//         when(mockClient.post(
//           'https://google.serper.dev/lens',
//           data: query.toJson(),
//           options: anyNamed('options'),
//         )).thenAnswer((_) async => Response(
//             requestOptions: RequestOptions(path: ''),
//             data: mockResponse.toJson(),
//             statusCode: 200));

//         final result = await serperApi.lens(query);

//         expect(result, isA<LensResponse>());
//         expect(result.searchParameters.url, 'https://example.com/image.jpg');
//         expect(result.searchParameters.countryCode, CountryCode.unitedStates);
//         expect(result.searchParameters.languageCode, LanguageCode.english);
//       });

//       test('throws SerperApiException on error', () async {
//         final query = LensQuery(url: 'invalid-url');
//         when(mockClient.post(
//           'https://google.serper.dev/lens',
//           data: query.toJson(),
//           options: anyNamed('options'),
//         )).thenAnswer((_) async => Response(
//             requestOptions: RequestOptions(path: ''),
//             data: {'message': 'Error'},
//             statusCode: 400));

//         expect(
//           () => serperApi.lens(query),
//           throwsA(isA<SerperApiException>()),
//         );
//       });
//     });

//     // Batch API Method Tests
//     group('Batch API Methods', () {
//       group('searchBatch method', () {
//         final queries = [
//           SearchQuery(q: 'query1', countryCode: CountryCode.unitedStates),
//           SearchQuery(q: 'query2', languageCode: LanguageCode.french),
//         ];
//         const String expectedPath = 'https://google.serper.dev/search';
//         final mockSuccessBatchResponseJsonData = [
//           {"searchParameters": {"q": "query1", "gl": "us"}, "organic": [{"title": "Result 1"}], "credits": 1},
//           {"searchParameters": {"q": "query2", "hl": "fr"}, "organic": [{"title": "Result 2"}], "credits": 1},
//         ];

//         test('returns List<SearchResponse> on successful API call', () async {
//           when(mockClient.post(
//             expectedPath,
//             data: queries.map((q) => q.toJson()).toList(),
//             options: anyNamed('options'),
//           )).thenAnswer((_) async => Response(
//               requestOptions: RequestOptions(path: ''),
//               data: mockSuccessBatchResponseJsonData,
//               statusCode: 200));
//           final result = await serperApi.searchBatch(queries);
//           expect(result, isA<List<SearchResponse>>());
//           expect(result.length, 2);
//           expect(result[0].searchParameters.q, queries[0].q);
//           expect(result[0].searchParameters.countryCode, queries[0].countryCode);
//           expect(result[1].searchParameters.q, queries[1].q);
//           expect(result[1].searchParameters.languageCode, queries[1].languageCode);
//           verify(mockClient.post(
//             expectedPath,
//             data: queries.map((q) => q.toJson()).toList(),
//             options: anyNamed('options'),
//           )).called(1);
//         });

//         test('throws SerperApiException on API error for batch', () async {
//           when(
//             mockClient.post(
//               expectedPath,
//               data: queries.map((q) => q.toJson()).toList(),
//               options: anyNamed('options'),
//             ),
//           ).thenThrow(
//             DioException(
//               requestOptions: RequestOptions(path: expectedPath),
//               response: Response(
//                 requestOptions: RequestOptions(path: expectedPath),
//                 data: {'message': 'Forbidden'},
//                 statusCode: 403,
//               ),
//             ),
//           );

//           expect(
//             () => serperApi.searchBatch(queries),
//             throwsA(
//               isA<SerperApiException>()
//                   .having((e) => e.statusCode, 'statusCode', 403)
//                   .having((e) => e.message, 'message', contains('Forbidden')),
//             ),
//           );
//           verify(
//             mockClient.post(
//               expectedPath,
//               data: queries.map((q) => q.toJson()).toList(),
//               options: anyNamed('options'),
//             ),
//           ).called(1);
//         });

//         test('throws SerperApiException on Dio network error for batch', () async {
//           when(
//             mockClient.post(
//               expectedPath,
//               data: queries.map((q) => q.toJson()).toList(),
//               options: anyNamed('options'),
//             ),
//           ).thenThrow(
//             DioException(
//               requestOptions: RequestOptions(path: expectedPath),
//               message: 'Network error during batch search',
//               type: DioExceptionType.connectionError,
//             ),
//           );

//           expect(
//             () => serperApi.searchBatch(queries),
//             throwsA(
//               isA<SerperApiException>()
//                   .having((e) => e.message, 'message', contains('Network error during batch search'))
//                   .having((e) => e.statusCode, 'statusCode', null),
//             ),
//           );
//           verify(
//             mockClient.post(
//               expectedPath,
//               data: queries.map((q) => q.toJson()).toList(),
//               options: anyNamed('options'),
//             ),
//           ).called(1);
//         });
//       });

//       group('imagesBatch method', () {
//         final imagesQueries = [
//           ImagesQuery(q: 'cats', countryCode: CountryCode.unitedStates, languageCode: LanguageCode.english),
//           ImagesQuery(q: 'dogs', countryCode: CountryCode.unitedKingdomGB, languageCode: LanguageCode.english),
//         ];
//         const String expectedPath = 'https://google.serper.dev/images';
//         final String expectedBody = jsonEncode(imagesQueries.map((q) => q.toJson()).toList());
//         final mockSuccessImagesBatchResponseJsonData = [
//           {"searchParameters": {"q": "cats", "gl": "us", "hl": "en"}, "images": [{"title": "Cat Image"}], "credits": 1},
//           {"searchParameters": {"q": "dogs", "gl": "gb", "hl": "en"}, "images": [{"title": "Dog Image"}], "credits": 1},
//         ];

//         test('returns List<ImagesResponse> on successful API call', () async {
//           when(mockClient.post(
//             expectedPath,
//             data: imagesQueries.map((q) => q.toJson()).toList(),
//             options: anyNamed('options'),
//           )).thenAnswer((_) async => Response(
//               requestOptions: RequestOptions(path: ''),
//               data: mockSuccessImagesBatchResponseJsonData,
//               statusCode: 200));
//           final result = await serperApi.imagesBatch(imagesQueries);
//           expect(result, isA<List<ImagesResponse>>());
//           expect(result.length, 2);
//           expect(result[0].searchParameters.q, imagesQueries[0].q);
//           expect(result[0].images.first.title, "Cat Image");
//           expect(result[1].searchParameters.q, imagesQueries[1].q);
//           expect(result[1].images.first.title, "Dog Image");
//           verify(mockClient.post(
//             expectedPath,
//             data: imagesQueries.map((q) => q.toJson()).toList(),
//             options: anyNamed('options'),
//           )).called(1);
//         });

//         test('throws SerperApiException on API error for batch images', () async {
//           // Arrange
//           when(
//             mockClient.post(
//               expectedPath,
//               data: imagesQueries.map((q) => q.toJson()).toList(),
//               options: anyNamed('options'),
//             ),
//           ).thenThrow(
//             DioException(
//               requestOptions: RequestOptions(path: expectedPath),
//               response: Response(
//                 requestOptions: RequestOptions(path: expectedPath),
//                 data: {'message': 'Payment Required'},
//                 statusCode: 402,
//               ),
//             ),
//           );

//           // Act & Assert
//           expect(
//             () => serperApi.imagesBatch(imagesQueries),
//             throwsA(
//               isA<SerperApiException>()
//                   .having((e) => e.statusCode, 'statusCode', 402)
//                   .having(
//                     (e) => e.message,
//                     'message',
//                     contains('Payment Required'),
//                   ),
//             ),
//           );
//           verify(
//             mockClient.post(
//               expectedPath,
//               data: imagesQueries.map((q) => q.toJson()).toList(),
//               options: anyNamed('options'),
//             ),
//           ).called(1);
//         });

//         test(
//           'throws SerperApiException on Dio network error for batch images',
//           () async {
//             // Arrange
//             when(
//               mockClient.post(
//                 expectedPath,
//                 data: imagesQueries.map((q) => q.toJson()).toList(),
//                 options: anyNamed('options'),
//               ),
//             ).thenThrow(
//               DioException(
//                 requestOptions: RequestOptions(path: expectedPath),
//                 message: 'Network error during batch images',
//                 type: DioExceptionType.connectionError,
//               ),
//             );

//             // Act & Assert
//             expect(
//               () => serperApi.imagesBatch(imagesQueries),
//               throwsA(
//                 isA<SerperApiException>()
//                     .having(
//                       (e) => e.message,
//                       'message',
//                       contains('Network error during batch images'),
//                     )
//                     .having((e) => e.statusCode, 'statusCode', null),
//               ),
//             );
//             verify(
//               mockClient.post(
//                 expectedPath,
//                 data: imagesQueries.map((q) => q.toJson()).toList(),
//                 options: anyNamed('options'),
//               ),
//             ).called(1);
//           },
//         );
//       });

//       group('newsBatch method', () {
//         final newsQueries = [
//           NewsQuery(q: 'tech', countryCode: CountryCode.unitedStates),
//           NewsQuery(q: 'sports', countryCode: CountryCode.canada),
//         ];
//         const String expectedPath = 'https://google.serper.dev/news';
//         final String expectedBody = jsonEncode(newsQueries.map((q) => q.toJson()).toList());
//         final mockSuccessNewsBatchResponseJsonData = [
//           {"searchParameters": {"q": "tech", "gl": "us"}, "news": [{"title": "Tech Article"}], "credits": 1},
//           {"searchParameters": {"q": "sports", "gl": "ca"}, "news": [{"title": "Sports News"}], "credits": 1},
//         ];

//         test('returns List<NewsResponse> on successful API call', () async {
//           when(mockClient.post(
//             expectedPath,
//             data: newsQueries.map((q) => q.toJson()).toList(),
//             options: anyNamed('options'),
//           )).thenAnswer((_) async => Response(
//               requestOptions: RequestOptions(path: ''),
//               data: mockSuccessNewsBatchResponseJsonData,
//               statusCode: 200));
//           final result = await serperApi.newsBatch(newsQueries);
//           expect(result, isA<List<NewsResponse>>());
//           expect(result.length, 2);
//           expect(result[0].searchParameters.q, newsQueries[0].q);
//           expect(result[0].searchParameters.countryCode, newsQueries[0].countryCode);
//           expect(result[1].searchParameters.q, newsQueries[1].q);
//           expect(result[1].searchParameters.countryCode, newsQueries[1].countryCode);
//           verify(mockClient.post(
//             expectedPath,
//             data: newsQueries.map((q) => q.toJson()).toList(),
//             options: anyNamed('options'),
//           )).called(1);
//         });

//         test('throws SerperApiException on API error for batch news', () async {
//           // Arrange
//           when(
//             mockClient.post(
//               expectedPath,
//               data: newsQueries.map((q) => q.toJson()).toList(),
//               options: anyNamed('options'),
//             ),
//           ).thenThrow(
//             DioException(
//               requestOptions: RequestOptions(path: expectedPath),
//               response: Response(
//                 requestOptions: RequestOptions(path: expectedPath),
//                 data: {'message': 'Unauthorized Access'},
//                 statusCode: 401,
//               ),
//             ),
//           );

//           // Act & Assert
//           expect(
//             () => serperApi.newsBatch(newsQueries),
//             throwsA(
//               isA<SerperApiException>()
//                   .having((e) => e.statusCode, 'statusCode', 401)
//                   .having(
//                     (e) => e.message,
//                     'message',
//                     contains('Unauthorized Access'),
//                   ),
//             ),
//           );
//           verify(
//             mockClient.post(
//               expectedPath,
//               data: newsQueries.map((q) => q.toJson()).toList(),
//               options: anyNamed('options'),
//             ),
//           ).called(1);
//         });

//         test(
//           'throws SerperApiException on Dio network error for batch news',
//           () async {
//             // Arrange
//             when(
//               mockClient.post(
//                 expectedPath,
//                 data: newsQueries.map((q) => q.toJson()).toList(),
//                 options: anyNamed('options'),
//               ),
//             ).thenThrow(
//               DioException(
//                 requestOptions: RequestOptions(path: expectedPath),
//                 message: 'Network error during batch news',
//                 type: DioExceptionType.connectionError,
//               ),
//             );

//             // Act & Assert
//             expect(
//               () => serperApi.newsBatch(newsQueries),
//               throwsA(
//                 isA<SerperApiException>()
//                     .having(
//                       (e) => e.message,
//                       'message',
//                       contains('Network error during batch news'),
//                     )
//                     .having((e) => e.statusCode, 'statusCode', null),
//               ),
//             );
//             verify(
//               mockClient.post(
//                 expectedPath,
//                 data: newsQueries.map((q) => q.toJson()).toList(),
//                 options: anyNamed('options'),
//               ),
//             ).called(1);
//           },
//         );
//       });

//       group('videosBatch method', () {
//         final videosQueries = [
//           VideosQuery(q: 'music videos', countryCode: CountryCode.germany),
//           VideosQuery(q: 'tutorials', languageCode: LanguageCode.spanish),
//         ];
//         const String expectedPath = 'https://google.serper.dev/videos';
//         final String expectedBody = jsonEncode(videosQueries.map((q) => q.toJson()).toList());
//         final mockSuccessVideosBatchResponseJsonData = [
//           {"searchParameters": {"q": "music videos", "gl": "de"}, "videos": [{"title": "Song Video"}], "credits": 1},
//           {"searchParameters": {"q": "tutorials", "hl": "es"}, "videos": [{"title": "How-to Video"}], "credits": 1},
//         ];

//         test('returns List<VideosResponse> on successful API call', () async {
//           when(mockClient.post(
//             expectedPath,
//             data: videosQueries.map((q) => q.toJson()).toList(),
//             options: anyNamed('options'),
//           )).thenAnswer((_) async => Response(
//               requestOptions: RequestOptions(path: ''),
//               data: mockSuccessVideosBatchResponseJsonData,
//               statusCode: 200));
//           final result = await serperApi.videosBatch(videosQueries);
//           expect(result, isA<List<VideosResponse>>());
//           expect(result.length, 2);
//           expect(result[0].searchParameters.q, videosQueries[0].q);
//           expect(result[0].videos.first.title, "Song Video");
//           expect(result[1].searchParameters.q, videosQueries[1].q);
//           expect(result[1].videos.first.title, "How-to Video");
//           verify(mockClient.post(
//             expectedPath,
//             data: videosQueries.map((q) => q.toJson()).toList(),
//             options: anyNamed('options'),
//           )).called(1);
//         });

//         test('throws SerperApiException on API error for batch videos', () async {
//           // Arrange
//           when(
//             mockClient.post(
//               expectedPath,
//               data: videosQueries.map((q) => q.toJson()).toList(),
//               options: anyNamed('options'),
//             ),
//           ).thenThrow(
//             DioException(
//               requestOptions: RequestOptions(path: expectedPath),
//               response: Response(
//                 requestOptions: RequestOptions(path: expectedPath),
//                 data: {'message': 'Rate Limit Exceeded'},
//                 statusCode: 429,
//               ),
//             ),
//           );

//           // Act & Assert
//           expect(
//             () => serperApi.videosBatch(videosQueries),
//             throwsA(
//               isA<SerperApiException>()
//                   .having((e) => e.statusCode, 'statusCode', 429)
//                   .having(
//                     (e) => e.message,
//                     'message',
//                     contains('Rate Limit Exceeded'),
//                   ),
//             ),
//           );
//           verify(
//             mockClient.post(
//               expectedPath,
//               data: videosQueries.map((q) => q.toJson()).toList(),
//               options: anyNamed('options'),
//             ),
//           ).called(1);
//         });

//         test(
//           'throws SerperApiException on Dio network error for batch videos',
//           () async {
//             // Arrange
//             when(
//               mockClient.post(
//                 expectedPath,
//                 data: videosQueries.map((q) => q.toJson()).toList(),
//                 options: anyNamed('options'),
//               ),
//             ).thenThrow(
//               DioException(
//                 requestOptions: RequestOptions(path: expectedPath),
//                 message: 'Network error during batch videos',
//                 type: DioExceptionType.connectionError,
//               ),
//             );

//             // Act & Assert
//             expect(
//               () => serperApi.videosBatch(videosQueries),
//               throwsA(
//                 isA<SerperApiException>()
//                     .having(
//                       (e) => e.message,
//                       'message',
//                       contains('Network error during batch videos'),
//                     )
//                     .having((e) => e.statusCode, 'statusCode', null),
//               ),
//             );
//             verify(
//               mockClient.post(
//                 expectedPath,
//                 data: videosQueries.map((q) => q.toJson()).toList(),
//                 options: anyNamed('options'),
//               ),
//             ).called(1);
//           },
//         );
//       });

//       group('placesBatch method', () {
//         final placesQueries = [
//           PlacesQuery(q: 'restaurants', location: '34.0522,-118.2437', countryCode: CountryCode.unitedStates),
//           PlacesQuery(q: 'coffee shops', location: '40.7128,-74.0060', countryCode: CountryCode.unitedKingdomGB),
//         ];
//         const String expectedPath = 'https://google.serper.dev/places';
//         final String expectedBody = jsonEncode(placesQueries.map((q) => q.toJson()).toList());
//         final mockSuccessPlacesBatchResponseJsonData = [
//           {"searchParameters": {"q": "restaurants", "ll": "34.0522,-118.2437", "gl": "us"}, "places": [{"title": "Restaurant A"}], "credits": 10},
//           {"searchParameters": {"q": "coffee shops", "ll": "40.7128,-74.0060", "gl": "gb"}, "places": [{"title": "Cafe B"}], "credits": 10},
//         ];

//         test('returns List<PlacesResponse> on successful API call', () async {
//           when(mockClient.post(
//             expectedPath,
//             data: placesQueries.map((q) => q.toJson()).toList(),
//             options: anyNamed('options'),
//           )).thenAnswer((_) async => Response(
//               requestOptions: RequestOptions(path: ''),
//               data: mockSuccessPlacesBatchResponseJsonData,
//               statusCode: 200));
//           final result = await serperApi.placesBatch(placesQueries);
//           expect(result, isA<List<PlacesResponse>>());
//           expect(result.length, 2);
//           expect(result[0].searchParameters.q, 'restaurants');
//           expect(result[0].searchParameters.location, '34.0522,-118.2437');
//           expect(result[0].searchParameters.countryCode, CountryCode.unitedStates);
//           expect(result[0].places.first.title, "Restaurant A");
//           expect(result[0].credits, 10);
//           expect(result[1].searchParameters.q, 'coffee shops');
//           expect(result[1].searchParameters.location, '40.7128,-74.0060');
//           expect(result[1].searchParameters.countryCode, CountryCode.unitedKingdomGB);
//           expect(result[1].places.first.title, "Cafe B");
//           expect(result[1].credits, 10);

//           verify(mockClient.post(
//             expectedPath,
//             data: placesQueries.map((q) => q.toJson()).toList(),
//             options: anyNamed('options'),
//           )).called(1);
//         });

//         test('throws SerperApiException on API error for batch places', () async {
//           // Arrange
//           when(
//             mockClient.post(
//               expectedPath,
//               data: placesQueries.map((q) => q.toJson()).toList(),
//               options: anyNamed('options'),
//             ),
//           ).thenThrow(
//             DioException(
//               requestOptions: RequestOptions(path: expectedPath),
//               response: Response(
//                 requestOptions: RequestOptions(path: expectedPath),
//                 data: {'message': 'Invalid Location'},
//                 statusCode: 400,
//               ),
//             ),
//           );

//           // Act & Assert
//           expect(
//             () => serperApi.placesBatch(placesQueries),
//             throwsA(
//               isA<SerperApiException>()
//                   .having((e) => e.statusCode, 'statusCode', 400)
//                   .having(
//                     (e) => e.message,
//                     'message',
//                     contains('Invalid Location'),
//                   ),
//             ),
//           );
//           verify(
//             mockClient.post(
//               expectedPath,
//               data: placesQueries.map((q) => q.toJson()).toList(),
//               options: anyNamed('options'),
//             ),
//           ).called(1);
//         });

//         test(
//           'throws SerperApiException on Dio network error for batch places',
//           () async {
//             // Arrange
//             when(
//               mockClient.post(
//                 expectedPath,
//                 data: placesQueries.map((q) => q.toJson()).toList(),
//                 options: anyNamed('options'),
//               ),
//             ).thenThrow(
//               DioException(
//                 requestOptions: RequestOptions(path: expectedPath),
//                 message: 'Network error during batch places',
//                 type: DioExceptionType.connectionError,
//               ),
//             );

//             // Act & Assert
//             expect(
//               () => serperApi.placesBatch(placesQueries),
//               throwsA(
//                 isA<SerperApiException>()
//                     .having(
//                       (e) => e.message,
//                       'message',
//                       contains('Network error during batch places'),
//                     )
//                     .having((e) => e.statusCode, 'statusCode', null),
//               ),
//             );
//             verify(
//               mockClient.post(
//                 expectedPath,
//                 data: placesQueries.map((q) => q.toJson()).toList(),
//                 options: anyNamed('options'),
//               ),
//             ).called(1);
//           },
//         );
//       });

//       group('mapsBatch method', () {
//         final mapsQueries = [
//           MapsQuery(q: 'gas stations', latLng: LatLng(34.0522, -118.2437)),
//           MapsQuery(q: 'pharmacies', latLng: LatLng(51.5074, 0.1278)),
//         ];
//         const String expectedPath = 'https://google.serper.dev/maps';
//         final String expectedBody = jsonEncode(mapsQueries.map((q) => q.toJson()).toList());
//         final mockSuccessMapsBatchResponseJsonData = [
//           {"searchParameters": {"q": "gas stations", "ll": "34.0522,-118.2437", "gl": "us"}, "place": {"title": "US Gas Stop"}, "credits": 5},
//           {"searchParameters": {"q": "pharmacies", "ll": "51.5074,0.1278", "hl": "en"}, "place": {"title": "UK Pharmacy"}, "credits": 5},
//         ];

//         test('returns List<MapsResponse> on successful API call', () async {
//           when(mockClient.post(
//             expectedPath,
//             data: mapsQueries.map((q) => q.toJson()).toList(),
//             options: anyNamed('options'),
//           )).thenAnswer((_) async => Response(
//               requestOptions: RequestOptions(path: ''),
//               data: mockSuccessMapsBatchResponseJsonData,
//               statusCode: 200));
//           final result = await serperApi.mapsBatch(mapsQueries);
//           expect(result, isA<List<MapsResponse>>());
//           expect(result.length, 2);
//           expect(result[0].searchParameters.q, 'gas stations');
//           expect(result[0].searchParameters.latLng, const LatLng(34.0522, -118.2437));
//           expect(result[0].place.title, "US Gas Stop");
//           expect(result[0].credits, 5);
//           expect(result[1].searchParameters.q, 'pharmacies');
//           expect(result[1].searchParameters.latLng, const LatLng(51.5074, 0.1278));
//           expect(result[1].place.title, "UK Pharmacy");
//           expect(result[1].credits, 5);

//           verify(mockClient.post(
//             expectedPath,
//             data: mapsQueries.map((q) => q.toJson()).toList(),
//             options: anyNamed('options'),
//           )).called(1);
//         });

//         test('throws SerperApiException on API error for batch maps', () async {
//           // Arrange
//           when(
//             mockClient.post(
//               expectedPath,
//               data: mapsQueries.map((q) => q.toJson()).toList(),
//               options: anyNamed('options'),
//             ),
//           ).thenThrow(
//             DioException(
//               requestOptions: RequestOptions(path: expectedPath),
//               response: Response(
//                 requestOptions: RequestOptions(path: expectedPath),
//                 data: {'message': 'Bad Request'}, 
//                 statusCode: 400,
//               ),
//             ),
//           );

//           // Act & Assert
//           expect(
//             () => serperApi.mapsBatch(mapsQueries),
//             throwsA(
//               isA<SerperApiException>()
//                   .having((e) => e.statusCode, 'statusCode', 400)
//                   .having((e) => e.message, 'message', contains('Bad Request')),
//             ),
//           );
//           verify(
//             mockClient.post(
//               expectedPath,
//               data: mapsQueries.map((q) => q.toJson()).toList(),
//               options: anyNamed('options'),
//             ),
//           ).called(1);
//         });

//         test(
//           'throws SerperApiException on Dio network error for batch maps',
//           () async {
//             // Arrange
//             when(
//               mockClient.post(
//                 expectedPath,
//                 data: mapsQueries.map((q) => q.toJson()).toList(),
//                 options: anyNamed('options'),
//               ),
//             ).thenThrow(
//               DioException(
//                 requestOptions: RequestOptions(path: expectedPath),
//                 message: 'Network error during batch maps',
//                 type: DioExceptionType.connectionError,
//               ),
//             );

//             // Act & Assert
//             expect(
//               () => serperApi.mapsBatch(mapsQueries),
//               throwsA(
//                 isA<SerperApiException>()
//                     .having(
//                       (e) => e.message,
//                       'message',
//                       contains('Network error during batch maps'),
//                     )
//                     .having((e) => e.statusCode, 'statusCode', null),
//               ),
//             );
//             verify(
//               mockClient.post(
//                 expectedPath,
//                 data: mapsQueries.map((q) => q.toJson()).toList(),
//                 options: anyNamed('options'),
//               ),
//             ).called(1);
//           },
//         );
//       });

//       // group('reviewsBatch method', () {
//       //   final reviewsQueries = [
//       //     ReviewsQuery.withCid(cid: 'cid1', q: 'hotel A', languageCode: LanguageCode.english, sortBy: SortByValue.newest),
//       //     // Using highestRating for "rating" as SortByValue doesn\'t have "rating". This is an assumption.
//       //     ReviewsQuery.withPlaceId(placeId: 'placeId1', q: 'restaurant B', languageCode: LanguageCode.spanish, sortBy: SortByValue.highestRating),
//       //   ];
//       //   const String expectedPath = 'https://google.serper.dev/reviews';
//       //   final String expectedBody = jsonEncode(reviewsQueries.map((q) => q.toJson()).toList());
//       //   final mockSuccessReviewsBatchResponseJsonData = [
//       //     // Ensure runtimeType is included if the model expects it for deserialization
//       //     {"searchParameters": {"cid": "cid1", "q": "hotel A", "hl": "en", "sort_by": "newest", "runtimeType": "withCid"}, "reviews": [{"text": "Review 1"}], "credits": 7},
//       //     {"searchParameters": {"placeId": "placeId1", "q": "restaurant B", "hl": "es", "sort_by": "rating", "runtimeType": "withPlaceId"}, "reviews": [{"text": "Review 2"}], "credits": 7},
//       //   ];

//       //   test('returns List<ReviewsResponse> on successful API call', () async {
//       //     when(mockClient.post(
//       //       Uri.parse('https://google.serper.dev/reviews'),
//       //       headers: anyNamed('headers'),
//       //       body: anyNamed('body'),
//       //     )).thenAnswer((_) async => Response(
//       //         requestOptions: RequestOptions(path: ''),
//       //         data: mockSuccessReviewsBatchResponseJsonData,
//       //         statusCode: 200));
//       //     final result = await serperApi.reviewsBatch(reviewsQueries);
//       //     expect(result, isA<List<ReviewsResponse>>());
//       //     expect(result.length, 2);
//       //     expect(result[0].searchParameters, isA<ReviewsQueryCid>());
//       //     expect((result[0].searchParameters as ReviewsQueryCid).cid, (reviewsQueries[0] as ReviewsQueryCid).cid);
//       //     expect((result[0].searchParameters as ReviewsQueryCid).sortBy, SortByValue.newest); // Check against actual value from mock
//       //     expect(result[1].searchParameters, isA<ReviewsQueryPlaceId>());
//       //     expect((result[1].searchParameters as ReviewsQueryPlaceId).placeId, (reviewsQueries[1] as ReviewsQueryPlaceId).placeId);
//       //     // Assuming response searchParameters.sortBy for the second query correctly reflects "rating" or its mapped enum.
//       //     // The input query used SortByValue.highestRating. The mock response has "sort_by": "rating".
//       //     // This assertion depends on how SearchParameters deserializes "rating".
//       //     // For now, we check against the input query\'s sortBy.
//       //     expect((result[1].searchParameters as ReviewsQueryPlaceId).sortBy, SortByValue.highestRating); 
//       //     verify(mockClient.post(
//       //       Uri.parse('https://google.serper.dev/reviews'),
//       //       headers: anyNamed('headers'),
//       //       body: anyNamed('body'),
//       //     )).called(1);
//       //   });

//       //   test('throws SerperApiException on API error for batch reviews', () async {
//       //     // Arrange
//       //     when(
//       //       mockClient.post(
//       //         Uri.parse('https://google.serper.dev/reviews'),
//       //         headers: anyNamed('headers'),
//       //         body: anyNamed('body'),
//       //       ),
//       //     ).thenThrow(
//       //       DioException(
//       //         requestOptions: RequestOptions(path: expectedPath),
//       //         response: Response(
//       //           requestOptions: RequestOptions(path: expectedPath),
//       //           data: {'message': 'Not Found'},
//       //           statusCode: 404,
//       //         ),
//       //       ),
//       //     );

//       //     // Act & Assert
//       //     expect(
//       //       () => serperApi.reviewsBatch(reviewsQueries),
//       //       throwsA(
//       //         isA<SerperApiException>()
//       //             .having((e) => e.statusCode, 'statusCode', 404)
//       //             .having((e) => e.message, 'message', contains('Not Found')),
//       //       ),
//       //     );
//       //     verify(
//       //       mockClient.post(
//       //         Uri.parse('https://google.serper.dev/reviews'),
//       //         headers: anyNamed('headers'),
//       //         body: anyNamed('body'),
//       //       ),
//       //     ).called(1);
//       //   });

//       //   test(
//       //     'throws SerperApiException on Dio network error for batch reviews',
//       //     () async {
//       //       // Arrange
//       //       when(
//       //         mockClient.post(
//       //           Uri.parse('https://google.serper.dev/reviews'),
//       //           headers: anyNamed('headers'),
//       //           body: anyNamed('body'),
//       //         ),
//       //       ).thenThrow(
//       //         DioException(
//       //           requestOptions: RequestOptions(path: expectedPath),
//       //           message: 'Network error during batch reviews',
//       //           type: DioExceptionType.connectionError,
//       //         ),
//       //       );

//       //       // Act & Assert
//       //       expect(
//       //         () => serperApi.reviewsBatch(reviewsQueries),
//       //         throwsA(
//       //           isA<SerperApiException>()
//       //               .having(
//       //                 (e) => e.message,
//       //                 'message',
//       //                 contains('Network error during batch reviews'),
//       //               )
//       //               .having((e) => e.statusCode, 'statusCode', null),
//       //         ),
//       //       );
//       //       verify(
//       //         mockClient.post(
//       //           Uri.parse('https://google.serper.dev/reviews'),
//       //           headers: anyNamed('headers'),
//       //           body: anyNamed('body'),
//       //         ),
//       //       ).called(1);
//       //     },
//       //   );
//       // });

//       group('shoppingBatch method', () {
//         final shoppingQueries = [
//           ShoppingQuery(q: 'laptops', countryCode: CountryCode.unitedStates),
//           ShoppingQuery(q: 'cameras', countryCode: CountryCode.japan),
//         ];
//         const String expectedPath =
//             'https://google.serper.dev/shopping';
//         final String expectedBody = jsonEncode(shoppingQueries.map((q) => q.toJson()).toList());
//         final mockSuccessShoppingBatchResponseJsonData = [
//           {"searchParameters": {"q": "laptops", "gl": "us", "sort_by": "price_ascending"}, "shopping": [{"title": "Laptop Deal"}], "credits": 1},
//           {"searchParameters": {"q": "cameras", "gl": "jp", "sort_by": "rating"}, "shopping": [{"title": "Camera Y"}], "credits": 1},
//         ];

//         test('returns List<ShoppingResponse> on successful API call', () async {
//           when(mockClient.post(
//             'https://google.serper.dev/shopping',
//             data: shoppingQueries.map((q) => q.toJson()).toList(),
//             options: anyNamed('options'),
//           )).thenAnswer((_) async => Response(
//               requestOptions: RequestOptions(path: ''),
//               data: mockSuccessShoppingBatchResponseJsonData,
//               statusCode: 200));
//           final result = await serperApi.shoppingBatch(shoppingQueries);
//           expect(result, isA<List<ShoppingResponse>>());
//           expect(result.length, 2);
//           expect(result[0].searchParameters.q, shoppingQueries[0].q);
//           expect(result[0].searchParameters.countryCode, shoppingQueries[0].countryCode);
//           expect(result[0].shopping.first.title, "Laptop Deal");
//           expect(result[0].credits, 1);
//           expect(result[1].searchParameters.q, shoppingQueries[1].q);
//           expect(result[1].searchParameters.countryCode, shoppingQueries[1].countryCode);
//           expect(result[1].shopping.first.title, "Camera Y");
//           expect(result[1].credits, 1);

//           verify(mockClient.post(
//             'https://google.serper.dev/shopping',
//             data: shoppingQueries.map((q) => q.toJson()).toList(),
//             options: anyNamed('options'),
//           )).called(1);
//         });



//         test('throws SerperApiException on API error for batch shopping', () async {
//           // Arrange
//           when(
//             mockClient.post(
//               'https://google.serper.dev/shopping',
//               data: shoppingQueries.map((q) => q.toJson()).toList(),
//               options: anyNamed('options'),
//             ),
//           ).thenThrow(
//             DioException(
//               requestOptions: RequestOptions(path: expectedPath),
//               response: Response(
//                 requestOptions: RequestOptions(path: expectedPath),
//                 data: {'message': 'Service Unavailable'},
//                 statusCode: 503,
//               ),
//             ),
//           );

//           // Act & Assert
//           expect(
//             () => serperApi.shoppingBatch(shoppingQueries),
//             throwsA(
//               isA<SerperApiException>()
//                   .having((e) => e.statusCode, 'statusCode', 503)
//                   .having((e) => e.message, 'message', contains('Service Unavailable')),
//             ),
//           );
//           verify(
//             mockClient.post(
//               'https://google.serper.dev/shopping',
//               data: shoppingQueries.map((q) => q.toJson()).toList(),
//               options: anyNamed('options'),
//             ),
//           ).called(1);
//         });

//         test('throws SerperApiException on Dio network error for batch shopping', () async {
//           // Arrange
//           when(
//             mockClient.post(
//               'https://google.serper.dev/shopping',
//               data: shoppingQueries.map((q) => q.toJson()).toList(),
//               options: anyNamed('options'),
//             ),
//           ).thenThrow(
//             DioException(
//               requestOptions: RequestOptions(path: expectedPath),
//               message: 'Network error during batch shopping',
//               type: DioExceptionType.connectionError,
//             ),
//           );

//           // Act & Assert
//           expect(
//             () => serperApi.shoppingBatch(shoppingQueries),
//             throwsA(
//               isA<SerperApiException>()
//                   .having((e) => e.message, 'message', contains('Network error during batch shopping'))
//                   .having((e) => e.statusCode, 'statusCode', null),
//             ),
//           );
//           verify(
//             mockClient.post(
//               'https://google.serper.dev/shopping',
//               data: shoppingQueries.map((q) => q.toJson()).toList(),
//               options: anyNamed('options'),
//             ),
//           ).called(1);
//         });
//       }); // End of shoppingBatch group
//         final lensQueries = [
//           LensQuery(url: 'url1', countryCode: CountryCode.unitedStates, languageCode: LanguageCode.english),
//           LensQuery(url: 'url2', countryCode: CountryCode.germany, languageCode: LanguageCode.german),
//         ];
//         const String expectedPath = 'https://google.serper.dev/lens';
//         final String expectedBody = jsonEncode(lensQueries.map((q) => q.toJson()).toList());
//         final mockSuccessLensBatchResponseJsonData = [
//           {"searchParameters": {"url": "url1", "gl": "us", "hl": "en"}, "organic": [{"title": "Similar 1"}], "credits": 15},
//           {"searchParameters": {"url": "url2", "gl": "de", "hl": "de"}, "organic": [{"title": "Similar 2"}], "credits": 15},
//         ];

//         test('returns List<LensResponse> on successful API call', () async {
//           when(mockHttpClientAdapter.fetch(any, data: anyNamed('data'), options: anyNamed('options')))
//               .thenAnswer((_) async => Response(
//                   requestOptions: RequestOptions(path: expectedPath),
//                   data: mockSuccessLensBatchResponseJsonData,
//                   statusCode: 200));
//           final result = await serper.lensBatch(lensQueries);
//           expect(result, isA<List<LensResponse>>());
//           expect(result.length, 2);
//           expect(result[0].searchParameters.url, lensQueries[0].url);
//           expect(result[0].organic.first.title, "Similar 1");
//           expect(result[1].searchParameters.url, lensQueries[1].url);
//           expect(result[1].organic.first.title, "Similar 2");
//           verify(mockHttpClientAdapter.fetch(any, data: anyNamed('data'), options: anyNamed('options'))).called(1);
//         });

//         test('throws SerperApiException on API error for batch lens', () async {
//           when(mockHttpClientAdapter.fetch(any, data: anyNamed('data'), options: anyNamed('options')))
//               .thenThrow(DioException(
//                   requestOptions: RequestOptions(path: expectedPath),
//                   response: Response(
//                       requestOptions: RequestOptions(path: expectedPath),
//                       data: {'message': 'Invalid Image URL'},
//                       statusCode: 400)));
//           expect(() => serper.lensBatch(lensQueries),
//               throwsA(isA<SerperApiException>()
//                   .having((e) => e.statusCode, 'statusCode', 400)
//                   .having((e) => e.message, 'message', contains('Invalid Image URL'))));
//           verify(mockHttpClientAdapter.fetch(any, data: anyNamed('data'), options: anyNamed('options'))).called(1);
//         });

//         test(
//           'throws SerperApiException on Dio network error for batch lens',
//           () async {
//             when(
//               mockHttpClientAdapter.fetch(
//                 expectedPath,
//                 data: expectedBody,
//                 options: anyNamed('options'),
//               ),
//             ).thenThrow(
//               DioException(
//                 requestOptions: RequestOptions(path: expectedPath),
//                 message: 'Network error for lens',
//                 type: DioExceptionType.connectionError,
//               ),
//             );
//             expect(
//               () => serper.lensBatch(lensQueries),
//               throwsA(
//                 isA<SerperApiException>()
//                     .having(
//                       (e) => e.message,
//                       'message',
//                       contains('Network error for lens'),
//                     )
//                     .having((e) => e.statusCode, 'statusCode', null),
//               ),
//             );
//             verify(
//               mockHttpClientAdapter.fetch(
//                 expectedPath,
//                 data: expectedBody,
//                 options: anyNamed('options'),
//               ),
//             ).called(1);
//           },
//         );
//       }); // End of lensBatch group

//       // scholarBatch
//       group('scholarBatch method', () {
//         final scholarQueries = [
//           ScholarQuery(q: 'ai ethics', languageCode: LanguageCode.english),
//           ScholarQuery(q: 'quantum computing', languageCode: LanguageCode.german),
//         ];
//         const String expectedPath = 'https://google.serper.dev/scholar';
//         final String expectedBody = jsonEncode(
//           scholarQueries.map((q) => q.toJson()).toList(),
//         );

//         final mockSuccessScholarBatchResponseJsonData = [
//           {
//             "searchParameters": {
//               "q": "ai ethics", // Matched to query
//               "hl": "en", // Matched to query
//               "sortBy": "date", // Matched to query
//               "type": "scholar",
//               "engine": "google"
//             },
//             "organic": [
//               {
//                 "title": "Recent ML Paper", // For assertion
//                 "source": "Journal of ML",
//                 "citedBy": 10 // For assertion
//               }
//             ],
//             "credits": 10
//           },
//           {
//             "searchParameters": {
//               "q": "quantum computing", // Matched to query
//               "hl": "de", // Matched to query
//               "sortBy": "relevance", // Matched to query
//               "type": "scholar",
//               "engine": "google"
//             },
//             "organic": [
//               {
//                 "title": "Papier de Physique Quantique", // For assertion
//                 "source": "Journal de Physique",
//                 "citedBy": 5 // For assertion
//               }
//             ],
//             "credits": 10
//           }
//         ];

//         test('returns List<ScholarResponse> on successful API call', () async {
//           when(mockHttpClientAdapter.fetch(any, data: anyNamed('data'), options: anyNamed('options')))
//               .thenAnswer((_) async => Response(
//                   requestOptions: RequestOptions(path: expectedPath),
//                   data: mockSuccessScholarBatchResponseJsonData,
//                   statusCode: 200));
//           final result = await serper.scholarBatch(scholarQueries);
//           expect(result, isA<List<ScholarResponse>>());
//           expect(result.length, 2);
//           // Response 1
//           expect(result[0].searchParameters.q, 'ai ethics');
//           expect(result[0].searchParameters.hl, LanguageCode.english);
//           expect(result[0].searchParameters.sortBy, SortByValue.date);
//           expect(result[0].organic.first.title, "Recent ML Paper");
//           expect(result[0].organic.first.citedBy, 10);
//           expect(result[0].credits, 10);
//           // Response 2
//           expect(result[1].searchParameters.q, 'quantum computing');
//           expect(result[1].searchParameters.hl, LanguageCode.german);
//           expect(result[1].searchParameters.sortBy, SortByValue.relevance);
//           expect(result[1].organic.first.title, "Papier de Physique Quantique");
//           expect(result[1].organic.first.citedBy, 5);
//           expect(result[1].credits, 10);
//           verify(mockHttpClientAdapter.fetch(any, data: anyNamed('data'), options: anyNamed('options'))).called(1);
//         });

//         test('throws SerperApiException on API error for batch scholar', () async {
//           when(
//             mockHttpClientAdapter.fetch(
//               expectedPath,
//               data: expectedBody,
//               options: anyNamed('options'),
//             ),
//           ).thenThrow(
//             DioException(
//               requestOptions: RequestOptions(path: expectedPath),
//               response: Response(
//                 requestOptions: RequestOptions(path: expectedPath),
//                 data: {'message': 'Scholar API error'},
//                 statusCode: 400,
//               ),
//             ),
//           );
//           expect(
//             () => serper.scholarBatch(scholarQueries),
//             throwsA(
//               isA<SerperApiException>()
//                   .having((e) => e.statusCode, 'statusCode', 400)
//                   .having(
//                     (e) => e.message,
//                     'message',
//                     contains('Scholar API error'),
//                   ),
//             ),
//           );
//           verify(
//             mockHttpClientAdapter.fetch(
//               expectedPath,
//               data: expectedBody,
//               options: anyNamed('options'),
//             ),
//           ).called(1);
//         });

//         test('throws SerperApiException on Dio network error for batch scholar', () async {
//           when(
//             mockHttpClientAdapter.fetch(
//               expectedPath,
//               data: expectedBody,
//               options: anyNamed('options'),
//             ),
//           ).thenThrow(
//             DioException(
//               requestOptions: RequestOptions(path: expectedPath),
//               message: 'Network error for scholar',
//               type: DioExceptionType.connectionError,
//             ),
//           );
//           expect(
//             () => serper.scholarBatch(scholarQueries),
//             throwsA(
//               isA<SerperApiException>()
//                   .having(
//                     (e) => e.message,
//                     'message',
//                     contains('Network error for scholar'),
//                   )
//                   .having((e) => e.statusCode, 'statusCode', null),
//             ),
//           );
//           verify(
//             mockHttpClientAdapter.fetch(
//               expectedPath,
//               data: expectedBody,
//               options: anyNamed('options'),
//             ),
//           ).called(1);
//         });
//       }); // End of scholarBatch group

//       // patentsBatch
//       group('patentsBatch method', () {
//         final patentsQueries = [
//           PatentsQuery(q: 'renewable energy', languageCode: LanguageCode.english),
//           PatentsQuery(q: 'nanotechnology', languageCode: LanguageCode.german),
//         ];
//         const String expectedPath = 'https://google.serper.dev/patents';
//         final String expectedBody = jsonEncode(patentsQueries.map((q) => q.toJson()).toList());

//         final mockSuccessPatentsBatchResponseJsonData = [
//           {
//             "searchParameters": {
//               "q": "renewable energy", // Matched to query
//               "sortBy": "priority_date_descending", // Matched to query
//               "languageCode": "en", // Matched to query
//               "type": "patents",
//               "engine": "google"
//             },
//             "organic": [
//               {
//                 "title": "Advanced Renewable Energy Patent", // For assertion

//                 "inventor": "Inventor X" // For assertion
//               }
//             ],
//             "credits": 8
//           },
//           {
//             "searchParameters": {
//               "q": "nanotechnology", // Matched to query
//               "sortBy": "filing_date_ascending", // Matched to query
//               "languageCode": "de", // Matched to query
//               "type": "patents",
//               "engine": "google"
//             },
//             "organic": [
//               {
//                 "title": "New Nanotech Compound", // For assertion
//                 "inventor": "Inventor Y, Inventor Z" // For assertion
//               }
//             ],
//             "credits": 8
//           }
//         ];

//         test('returns List<PatentsResponse> on successful API call', () async {
//           when(mockHttpClientAdapter.fetch(any, data: anyNamed('data'), options: anyNamed('options')))
//               .thenAnswer((_) async => Response(
//                   requestOptions: RequestOptions(path: expectedPath),
//                   data: mockSuccessPatentsBatchResponseJsonData,
//                   statusCode: 200));
//           final result = await serper.patentsBatch(patentsQueries);
//           expect(result, isA<List<PatentsResponse>>());
//           expect(result.length, 2);
//           // Response 1
//           expect(result[0].searchParameters.q, 'renewable energy');
//           expect(result[0].searchParameters.sortBy, SortByValue.priorityDateDescending);
//           expect(result[0].searchParameters.languageCode, LanguageCode.english);
//           expect(result[0].organic.first.title, "Advanced Renewable Energy Patent");
//           expect(result[0].organic.first.inventor, "Inventor X");
//           expect(result[0].credits, 8);
//           // Response 2
//           expect(result[1].searchParameters.q, 'nanotechnology');
//           expect(result[1].searchParameters.sortBy, SortByValue.filingDateAscending);
//           expect(result[1].searchParameters.languageCode, LanguageCode.german);
//           expect(result[1].organic.first.title, "New Nanotech Compound");
//           expect(result[1].organic.first.inventor, "Inventor Y, Inventor Z");
//           expect(result[1].credits, 8);
//           verify(mockHttpClientAdapter.fetch(any, data: anyNamed('data'), options: anyNamed('options'))).called(1);
//         });

//         test('throws SerperApiException on API error for batch patents', () async {
//           // Arrange
//           when(
//             mockHttpClientAdapter.fetch(
//               expectedPath,
//               data: expectedBody,
//               options: anyNamed('options'),
//             ),
//           ).thenThrow(
//             DioException(
//               requestOptions: RequestOptions(path: expectedPath),
//               response: Response(
//                 requestOptions: RequestOptions(path: expectedPath),
//                 data: {'message': 'Patents API error'},
//                 statusCode: 400,
//               ),
//             ),
//           );
//           expect(
//             () => serper.patentsBatch(patentsQueries),
//             throwsA(
//               isA<SerperApiException>()
//                   .having((e) => e.statusCode, 'statusCode', 400)
//                   .having(
//                     (e) => e.message,
//                     'message',
//                     contains('Patents API error'),
//                   ),
//             ),
//           );
//           verify(
//             mockHttpClientAdapter.fetch(
//               expectedPath,
//               data: expectedBody,
//               options: anyNamed('options'),
//             ),
//           ).called(1);
//         });

//         test('throws SerperApiException on Dio network error for batch patents', () async {
//           // Arrange
//           when(
//             mockHttpClientAdapter.fetch(
//               expectedPath,
//               data: expectedBody,
//               options: anyNamed('options'),
//             ),
//           ).thenThrow(
//             DioException(
//               requestOptions: RequestOptions(path: expectedPath),
//               message: 'Network error for patents',
//               type: DioExceptionType.connectionError,
//             ),
//           );
//           expect(
//             () => serper.patentsBatch(patentsQueries),
//             throwsA(
//               isA<SerperApiException>()
//                   .having(
//                     (e) => e.message,
//                     'message',
//                     contains('Network error for patents'),
//                   )
//                   .having((e) => e.statusCode, 'statusCode', null),
//             ),
//           );
//           verify(
//             mockHttpClientAdapter.fetch(
//               expectedPath,
//               data: expectedBody,
//               options: anyNamed('options'),
//             ),
//           ).called(1);
//         });
//       }); // End of patentsBatch group

//       // autocompleteBatch
//       group('autocompleteBatch method', () {
//         final autocompleteQueries = [
//           AutocompleteQuery(q: 'flutter development'),
//           AutocompleteQuery(q: 'dart programming', languageCode: LanguageCode.spanish),
//         ]; // Already correct
//         const String expectedPath = 'https://google.serper.dev/autocomplete';
//         final String expectedBody = jsonEncode(
//           autocompleteQueries.map((q) => q.toJson()).toList(),
//         );

//         final mockSuccessAutocompleteBatchResponseJsonData = [
//           // Mock response for AutocompleteQuery(q: 'flutter development')
//           {
//             "searchParameters": {"q": "flutter development", "type": "autocomplete", "engine": "google"},
//             "suggestions": [
//               {"suggestion": "flutter development course"},
//               {"suggestion": "flutter development company"}
//             ],
//             "credits": 1
//           },
//           // Mock response for AutocompleteQuery(q: 'dart programming', hl: LanguageCode.spanish)
//           {
//             "searchParameters": {"q": "dart programming", "hl": "es", "type": "autocomplete", "engine": "google"},
//             "suggestions": [
//               {"suggestion": "dart programming tutorial en español"},
//               {"suggestion": "dart programming basics"}
//             ],
//             "credits": 1
//           }
//         ];

//         test('returns List<AutocompleteResponse> on successful API call', () async {
//           when(mockHttpClientAdapter.fetch(any, data: anyNamed('data'), options: anyNamed('options')))
//               .thenAnswer((_) async => Response(
//                   requestOptions: RequestOptions(path: expectedPath),
//                   data: mockSuccessAutocompleteBatchResponseJsonData,
//                   statusCode: 200));

//           final result = await serper.autocompleteBatch(autocompleteQueries);

//           expect(result, isA<List<AutocompleteResponse>>());
//           expect(result.length, 2);
//           expect(result[0].searchParameters.q, 'flutter development');
//           expect(result[0].suggestions, contains("flutter development course"));
//           expect(result[0].credits, 1);
//           expect(result[1].searchParameters.q, 'dart programming');
//           expect(result[1].suggestions, contains("dart programming tutorial en español"));
//           expect(result[1].credits, 1);

//           verify(
//             mockHttpClientAdapter.fetch(
//               expectedPath,
//               data: expectedBody,
//               options: anyNamed('options'),
//             ),
//           ).called(1);
//         });

//         test('throws SerperApiException on API error for batch autocomplete', () async {
//           when(
//             mockHttpClientAdapter.fetch(
//               expectedPath,
//               data: expectedBody,
//               options: anyNamed('options'),
//             ),
//           ).thenThrow(
//             DioException(
//               requestOptions: RequestOptions(path: expectedPath),
//               response: Response(
//                 requestOptions: RequestOptions(path: expectedPath),
//                 data: {'message': 'Autocomplete API error'},
//                 statusCode: 400,
//               ),
//             ),
//           );

//           expect(
//             () => serper.autocompleteBatch(autocompleteQueries),
//             throwsA(
//               isA<SerperApiException>()
//                   .having((e) => e.statusCode, 'statusCode', 400)
//                   .having(
//                     (e) => e.message,
//                     'message',
//                     contains('Autocomplete API error'),
//                   ),
//             ),
//           );
//           verify(
//             mockHttpClientAdapter.fetch(
//               expectedPath,
//               data: expectedBody,
//               options: anyNamed('options'),
//             ),
//           ).called(1);
//         });

//         test('throws SerperApiException on Dio network error for batch autocomplete', () async {
//           when(
//             mockHttpClientAdapter.fetch(
//               expectedPath,
//               data: expectedBody,
//               options: anyNamed('options'),
//             ),
//           ).thenThrow(
//             DioException(
//               requestOptions: RequestOptions(path: expectedPath),
//               message: 'Network error for autocomplete',
//               type: DioExceptionType.connectionError,
//             ),
//           );

//           expect(
//             () => serper.autocompleteBatch(autocompleteQueries),
//             throwsA(
//               isA<SerperApiException>()
//                   .having(
//                     (e) => e.message,
//                     'message',
//                     contains('Network error for autocomplete'),
//                   )
//                   .having((e) => e.statusCode, 'statusCode', null),
//             ),
//           );
//           verify(
//             mockHttpClientAdapter.fetch(
//               expectedPath,
//               data: expectedBody,
//               options: anyNamed('options'),
//             ),
//           ).called(1);
//         });
//       }); // End of autocompleteBatch group

//       // webpageBatch is not a standard Serper endpoint, assuming it's a custom implementation or a typo.
//       // If it's meant to be a batch version of a single webpage fetch, it would need a different structure.
//       // For now, I'll comment it out or provide a placeholder if you clarify its intended behavior.
//       /*
//       group('webpageBatch method', () {
//         // Define queries, expectedPath, expectedBody, mockSuccessData
//         // Add tests for success, API error, network error
//       });
//       */

//     }); // End of Batch API Methods group
//   }); // End of Serper API Client group
// }

// // Helper function to mock a successful Dio response
// Response<Map<String, dynamic>> _mockSuccessResponse(Map<String, dynamic> data) {
//   return Response(
//     data: data,
//     statusCode: 200,
//     requestOptions: RequestOptions(path: ''),
//   );
// }

// // Helper function to mock a Dio error response
// DioException _mockErrorResponse({int statusCode = 500, Map<String, dynamic>? data}) {
//   return DioException(
//     response: Response(
//       data: data ?? {'message': 'Internal server error'}, // Ensure data is not null
//       statusCode: statusCode,
//       requestOptions: RequestOptions(path: ''),
//     ),
//     requestOptions: RequestOptions(path: ''),
//   );
// }

// // Matcher for SerperException with a specific message
// Matcher _isSerperExceptionWithMessage(String message) {
//   return isA<SerperException>().having((e) => e.message, 'message', contains(message));
// }