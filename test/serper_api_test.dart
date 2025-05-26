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
    });
  });
}
