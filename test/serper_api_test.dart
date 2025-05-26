// Tests for the Serper API wrapper (Serper class)
import 'package:dio/dio.dart';
import 'package:flutter_serper/flutter_serper.dart';
import 'package:flutter_serper/src/models/shared_types.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'mocks.mocks.dart';

const testApiKey = 'test_api_key';

void main() {
  late MockDio mockDio;
  late Serper serper;

  setUp(() {
    mockDio = MockDio();
    serper = Serper(apiKey: testApiKey, dio: mockDio);
  });

  group('Serper', () {
    test('imagesBatch returns List<ImagesResponse>', () async {
      final query = ImagesQuery(q: 'cat');
      final mockResponse = {
        'searchParameters': query.toJson(),
        'images': [
          {
            'title': 'Cat Image',
            'imageUrl': 'https://example.com/cat.jpg',
            'source': 'Example Source',
            'sourceUrl': 'https://example.com',
            'position': 1,
          },
        ],
        'credits': 2,
      };
      when(
        mockDio.request(
          any,
          options: anyNamed('options'),
          data: anyNamed('data'),
        ),
      ).thenAnswer(
        (_) async => Response(
          requestOptions: RequestOptions(path: ''),
          data: [mockResponse, mockResponse],
          statusCode: 200,
        ),
      );
      final result = await serper.imagesBatch([query, query]);
      expect(result, isA<List<ImagesResponse>>());
      expect(result.length, 2);
      expect(result.first.images.first.title, 'Cat Image');
    });

    test('placesBatch returns List<PlacesResponse>', () async {
      final query = PlacesQuery(q: 'pizza');
      final mockResponse = {
        'searchParameters': query.toJson(),
        'places': [
          {'title': 'Best Pizza', 'address': '123 Pizza St', 'position': 1},
        ],
        'credits': 3,
      };
      when(
        mockDio.request(
          any,
          options: anyNamed('options'),
          data: anyNamed('data'),
        ),
      ).thenAnswer(
        (_) async => Response(
          requestOptions: RequestOptions(path: ''),
          data: [mockResponse, mockResponse],
          statusCode: 200,
        ),
      );
      final result = await serper.placesBatch([query, query]);
      expect(result, isA<List<PlacesResponse>>());
      expect(result.length, 2);
      expect(result.first.places.first.title, 'Best Pizza');
    });

    test('videosBatch returns List<VideosResponse>', () async {
      final query = VideosQuery(q: 'music');
      final mockResponse = {
        'searchParameters': query.toJson(),
        'videos': [
          {
            'title': 'Music Video',
            'link': 'https://example.com/video',
            'thumbnailUrl': 'https://example.com/thumbnail.jpg',
            'position': 1,
          },
        ],
        'credits': 4,
      };
      when(
        mockDio.request(
          any,
          options: anyNamed('options'),
          data: anyNamed('data'),
        ),
      ).thenAnswer(
        (_) async => Response(
          requestOptions: RequestOptions(path: ''),
          data: [mockResponse, mockResponse],
          statusCode: 200,
        ),
      );
      final result = await serper.videosBatch([query, query]);
      expect(result, isA<List<VideosResponse>>());
      expect(result.length, 2);
      expect(result.first.videos.first.title, 'Music Video');
    });

    test('newsBatch returns List<NewsResponse>', () async {
      final query = NewsQuery(q: 'world news');
      final mockResponse = {
        'searchParameters': query.toJson(),
        'news': [
          {
            'title': 'World News',
            'link': 'https://example.com/news',
            'snippet': 'Latest world news.',
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
          requestOptions: RequestOptions(path: ''),
          data: [mockResponse, mockResponse],
          statusCode: 200,
        ),
      );
      final result = await serper.newsBatch([query, query]);
      expect(result, isA<List<NewsResponse>>());
      expect(result.length, 2);
      expect(result.first.news.first.title, 'World News');
    });

    test('shoppingBatch returns List<ShoppingResponse>', () async {
      final query = ShoppingQuery(q: 'shoes');
      final mockResponse = {
        'searchParameters': query.toJson(),
        'shopping': [
          {
            'title': 'Top Shoe',
            'link': 'https://example.com/shoe',
            'position': 1,
            'source': 'Shoe Store',
            'price': '\u001289.99',
            'delivery': 'Free shipping',
            'imageUrl': 'https://example.com/shoe.jpg',
          },
        ],
        'credits': 6,
      };
      when(
        mockDio.request(
          any,
          options: anyNamed('options'),
          data: anyNamed('data'),
        ),
      ).thenAnswer(
        (_) async => Response(
          requestOptions: RequestOptions(path: ''),
          data: [mockResponse, mockResponse],
          statusCode: 200,
        ),
      );
      final result = await serper.shoppingBatch([query, query]);
      expect(result, isA<List<ShoppingResponse>>());
      expect(result.length, 2);
      expect(result.first.shopping.first.title, 'Top Shoe');
    });
    test('search returns SearchResponse', () async {
      final query = SearchQuery(q: 'coffee');
      final mockResponse = {
        'searchParameters': query.toJson(),
        'organic': [
          {
            'title': 'Coffee Shop',
            'link': 'https://coffeeshop.com',
            'snippet': 'A great coffee shop.',
            'position': 1,
          },
        ],
        'credits': 1,
      };
      when(
        mockDio.request(
          any,
          options: anyNamed('options'),
          data: anyNamed('data'),
        ),
      ).thenAnswer(
        (_) async => Response(
          requestOptions: RequestOptions(path: ''),
          data: [mockResponse],
          statusCode: 200,
        ),
      );
      final result = await serper.search(query);
      expect(result, isA<SearchResponse>());
      expect(result.searchParameters.q, 'coffee');
      expect(result.credits, 1);
      expect(result.organic.first.title, 'Coffee Shop');
    });

    test('images returns ImagesResponse', () async {
      final query = ImagesQuery(
        q: 'cat',
        countryCode: CountryCode.unitedStates,
        languageCode: LanguageCode.english,
        page: 1,
      );
      final mockResponse = {
        'searchParameters': query.toJson(),
        'images': [
          {
            'title': 'Cat Image',
            'imageUrl': 'https://example.com/cat.jpg',
            'source': 'Example Source',
            'sourceUrl': 'https://example.com',
            'position': 1,
          },
        ],
        'credits': 2,
      };
      when(
        mockDio.request(
          any,
          options: anyNamed('options'),
          data: anyNamed('data'),
        ),
      ).thenAnswer(
        (_) async => Response(
          requestOptions: RequestOptions(path: ''),
          data: [mockResponse],
          statusCode: 200,
        ),
      );
      final result = await serper.images(query);
      expect(result, isA<ImagesResponse>());
      expect(result.searchParameters.q, 'cat');
      expect(result.searchParameters.countryCode, CountryCode.unitedStates);
      expect(result.searchParameters.languageCode, LanguageCode.english);
      expect(result.credits, 2);
      expect(result.images.first.title, 'Cat Image');
    });

    test('places returns PlacesResponse', () async {
      final query = PlacesQuery(
        q: 'pizza',
        countryCode: CountryCode.italy,
        languageCode: LanguageCode.italian,
        page: 1,
      );
      final mockResponse = {
        'searchParameters': query.toJson(),
        'places': [
          {'title': 'Best Pizza', 'address': '123 Pizza St', 'position': 1},
        ],
        'credits': 3,
      };
      when(
        mockDio.request(
          any,
          options: anyNamed('options'),
          data: anyNamed('data'),
        ),
      ).thenAnswer(
        (_) async => Response(
          requestOptions: RequestOptions(path: ''),
          data: mockResponse,
          statusCode: 200,
        ),
      );
      final result = await serper.places(query);
      expect(result, isA<PlacesResponse>());
      expect(result.searchParameters.q, 'pizza');
      expect(result.searchParameters.countryCode, CountryCode.italy);
      expect(result.searchParameters.languageCode, LanguageCode.italian);
      expect(result.credits, 3);
      expect(result.places.first.title, 'Best Pizza');
    });

    test('videos returns VideosResponse', () async {
      final query = VideosQuery(
        q: 'music',
        countryCode: CountryCode.unitedKingdomGB,
        languageCode: LanguageCode.english,
        page: 1,
      );
      final mockResponse = {
        'searchParameters': query.toJson(),
        'videos': [
          {
            'title': 'Music Video',
            'link': 'https://example.com/video',
            'thumbnailUrl': 'https://example.com/thumbnail.jpg',
            'position': 1,
          },
        ],
        'credits': 4,
      };
      when(
        mockDio.request(
          any,
          options: anyNamed('options'),
          data: anyNamed('data'),
        ),
      ).thenAnswer(
        (_) async => Response(
          requestOptions: RequestOptions(path: ''),
          data: mockResponse,
          statusCode: 200,
        ),
      );
      final result = await serper.videos(query);
      expect(result, isA<VideosResponse>());
      expect(result.searchParameters.q, 'music');
      expect(result.searchParameters.countryCode, CountryCode.unitedKingdomGB);
      expect(result.searchParameters.languageCode, LanguageCode.english);
      expect(result.credits, 4);
      expect(result.videos.first.title, 'Music Video');
    });

    test('news returns NewsResponse', () async {
      final query = NewsQuery(
        q: 'world news',
        countryCode: CountryCode.france,
        languageCode: LanguageCode.french,
        page: 1,
      );
      final mockResponse = {
        'searchParameters': query.toJson(),
        'news': [
          {
            'title': 'World News',
            'link': 'https://example.com/news',
            'snippet': 'Latest world news.',
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
          requestOptions: RequestOptions(path: ''),
          data: mockResponse,
          statusCode: 200,
        ),
      );
      final result = await serper.news(query);
      expect(result, isA<NewsResponse>());
      expect(result.searchParameters.q, 'world news');
      expect(result.searchParameters.countryCode, CountryCode.france);
      expect(result.searchParameters.languageCode, LanguageCode.french);
      expect(result.credits, 5);
      expect(result.news.first.title, 'World News');
    });

    test('shopping returns ShoppingResponse', () async {
      final query = ShoppingQuery(
        q: 'shoes',
        countryCode: CountryCode.germany,
        languageCode: LanguageCode.german,
        page: 1,
      );
      final mockResponse = {
        'searchParameters': query.toJson(),
        'shopping': [
          {
            'title': 'Top Shoe',
            'link': 'https://example.com/shoe',
            'position': 1,
            'source': 'Shoe Store',
            'price': '89.99',
            'delivery': 'Free shipping',
            'imageUrl': 'https://example.com/shoe.jpg',
          },
        ],
        'credits': 6,
      };
      when(
        mockDio.request(
          any,
          options: anyNamed('options'),
          data: anyNamed('data'),
        ),
      ).thenAnswer(
        (_) async => Response(
          requestOptions: RequestOptions(path: ''),
          data: mockResponse,
          statusCode: 200,
        ),
      );
      final result = await serper.shopping(query);
      expect(result, isA<ShoppingResponse>());
      expect(result.searchParameters.q, 'shoes');
      expect(result.searchParameters.countryCode, CountryCode.germany);
      expect(result.searchParameters.languageCode, LanguageCode.german);
      expect(result.credits, 6);
      expect(result.shopping.first.title, 'Top Shoe');
      expect(result.shopping.first.title, 'Top Shoe');
    });

    test('autocomplete returns AutocompleteResponse', () async {
      final query = AutocompleteQuery(q: 'cof');
      final mockResponse = {
        'searchParameters': query.toJson(),
        'suggestions': [
          {'value': 'coffee shop'},
          {'value': 'coffee beans'},
        ],
        'credits': 1,
      };
      when(
        mockDio.request(
          any,
          options: anyNamed('options'),
          data: anyNamed('data'),
        ),
      ).thenAnswer(
        (_) async => Response(
          requestOptions: RequestOptions(path: ''),
          data: [mockResponse],
          statusCode: 200,
        ),
      );
      final result = await serper.autocomplete(query);
      expect(result, isA<AutocompleteResponse>());
      expect(result.suggestions.first.value, 'coffee shop');
      expect(result.credits, 1);
    });

    test('lens returns LensResponse', () async {
      final query = LensQuery(url: 'https://example.com/image.jpg');
      final mockResponse = {
        'searchParameters': query.toJson(),
        'organic': [
          {
            'title': 'Lens Result',
            'link': 'https://example.com/result',
            'imageUrl': 'https://example.com/image.jpg',
            'thumbnailUrl': 'https://example.com/thumb.jpg',
            'source': 'Example Source',
            'position': 1,
          },
        ],
        'credits': 2,
      };
      when(
        mockDio.request(
          any,
          options: anyNamed('options'),
          data: anyNamed('data'),
        ),
      ).thenAnswer(
        (_) async => Response(
          requestOptions: RequestOptions(path: ''),
          data: mockResponse,
          statusCode: 200,
        ),
      );
      final result = await serper.lens(query);
      expect(result, isA<LensResponse>());
      expect(result.organic.first.title, 'Lens Result');
      expect(result.organic.first.source, 'Example Source');
      expect(result.credits, 2);
    });

    test('maps returns MapsResponse', () async {
      final query = MapsQuery(q: 'Central Park');
      final mockResponse = {
        'searchParameters': query.toJson(),
        'place': {
          'title': 'Central Park',
          'cid': '123',
          'address': 'NYC',
          'rating': 4.8,
          'reviewCount': 1000,
          'priceLevel': ' 2',
          'type': 'Park',
          'position': 1,
        },
        'credits': 3,
      };
      when(
        mockDio.request(
          any,
          options: anyNamed('options'),
          data: anyNamed('data'),
        ),
      ).thenAnswer(
        (_) async => Response(
          requestOptions: RequestOptions(path: ''),
          data: mockResponse,
          statusCode: 200,
        ),
      );
      final result = await serper.maps(query);
      expect(result, isA<MapsResponse>());
      expect(result.place.title, 'Central Park');
      expect(result.place.address, 'NYC');
      expect(result.place.rating, 4.8);
      expect(result.place.reviewCount, 1000);
      expect(result.credits, 3);
    });

    test('patents returns PatentsResponse', () async {
      final query = PatentsQuery(q: 'battery');
      final mockResponse = {
        'searchParameters': query.toJson(),
        'organic': [
          {
            'title': 'Battery Patent',
            'link': 'https://example.com/patent',
            'snippet': 'A new battery technology.',
            'publicationNumber': 'US12345678',
            'assignee': 'Battery Corp',
            'inventor': 'John Doe',
            'publicationDate': '2024-01-01',
            'grantDate': '2024-06-01',
            'filingDate': '2023-01-01',
            'priorityDate': '2022-12-01',
            'language': 'en',
            'thumbnailUrl': 'https://example.com/thumb.jpg',
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
        'credits': 4,
      };
      when(
        mockDio.request(
          any,
          options: anyNamed('options'),
          data: anyNamed('data'),
        ),
      ).thenAnswer(
        (_) async => Response(
          requestOptions: RequestOptions(path: ''),
          data: mockResponse,
          statusCode: 200,
        ),
      );
      final result = await serper.patents(query);
      expect(result, isA<PatentsResponse>());
      expect(result.organic.first.title, 'Battery Patent');
      expect(result.organic.first.publicationNumber, 'US12345678');
      expect(result.credits, 4);
    });

    test('scholar returns ScholarResponse', () async {
      final query = ScholarQuery(q: 'machine learning');
      final mockResponse = {
        'searchParameters': query.toJson(),
        'organic': [
          {
            'title': 'ML Paper',
            'link': 'https://example.com/paper',
            'snippet': 'A paper about ML.',
            'publicationInfo': 'Journal of ML, 2023',
            'year': 2023,
            'citedBy': 100,
            'pdfUrl': 'https://example.com/paper.pdf',
            'id': 'paper1',
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
          requestOptions: RequestOptions(path: ''),
          data: mockResponse,
          statusCode: 200,
        ),
      );
      final result = await serper.scholar(query);
      expect(result, isA<ScholarResponse>());
      expect(result.organic.first.title, 'ML Paper');
      expect(result.organic.first.publicationInfo, 'Journal of ML, 2023');
      expect(result.credits, 5);
    });

    test('webpage returns WebpageResponse', () async {
      final query = WebpageQuery(url: 'https://example.com');
      final mockResponse = {
        'searchParameters': query.toJson(),
        'results': [
          {
            'text': 'This is the webpage content',
            'markdown': '# Webpage Content\n\nThis is the webpage content',
            'metadata': {'title': 'Example Website'},
            'credits': 5,
          },
        ],
      };
      when(
        mockDio.request(
          any,
          options: anyNamed('options'),
          data: anyNamed('data'),
        ),
      ).thenAnswer(
        (_) async => Response(
          requestOptions: RequestOptions(path: ''),
          data: mockResponse,
          statusCode: 200,
        ),
      );
      final result = await serper.webpage(query);
      expect(result, isA<WebpageResponse>());
      expect(result.results.first.text, 'This is the webpage content');
      expect(result.results.first.metadata?['title'], 'Example Website');
    });

    test('reviews returns ReviewsResponse', () async {
      // Use a valid named constructor for ReviewsQuery (e.g., withCid)
      final query = ReviewsQuery.withCid(cid: '123', q: 'restaurant');
      final mockResponse = {
        'searchParameters': query.toJson(),
        'reviews': [
          {
            'author': 'Alice',
            'authorUrl': 'https://example.com/user/alice',
            'text': 'Great food!',
            'rating': 5.0,
            'date': '2024-01-01',
            'id': 'review1',
            'isLocalGuide': true,
            'position': 1,
          },
        ],
        'credits': 2,
      };
      when(
        mockDio.request(
          any,
          options: anyNamed('options'),
          data: anyNamed('data'),
        ),
      ).thenAnswer(
        (_) async => Response(
          requestOptions: RequestOptions(path: ''),
          data: mockResponse,
          statusCode: 200,
        ),
      );
      final result = await serper.reviews(query);
      expect(result, isA<ReviewsResponse>());
      expect(result.reviews.first.author, 'Alice');
      expect(result.reviews.first.authorUrl, 'https://example.com/user/alice');
      expect(result.reviews.first.text, 'Great food!');
      expect(result.reviews.first.rating, 5.0);
      expect(result.reviews.first.isLocalGuide, isTrue);
      expect(result.credits, 2);
    });

    test('searchBatch returns List<SearchResponse>', () async {
      final query = SearchQuery(q: 'coffee');
      final mockResponse = {
        'searchParameters': query.toJson(),
        'organic': [
          {
            'title': 'Coffee Shop',
            'link': 'https://coffeeshop.com',
            'snippet': 'A great coffee shop.',
            'position': 1,
          },
        ],
        'credits': 1,
      };
      when(
        mockDio.request(
          any,
          options: anyNamed('options'),
          data: anyNamed('data'),
        ),
      ).thenAnswer(
        (_) async => Response(
          requestOptions: RequestOptions(path: ''),
          data: [mockResponse, mockResponse],
          statusCode: 200,
        ),
      );
      final result = await serper.searchBatch([query, query]);
      expect(result, isA<List<SearchResponse>>());
      expect(result.length, 2);
      expect(result.first.organic.first.title, 'Coffee Shop');
    });
  });
}
