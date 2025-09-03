// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AutocompleteSuggestion _$AutocompleteSuggestionFromJson(
  Map<String, dynamic> json,
) => _AutocompleteSuggestion(value: json['value'] as String);

Map<String, dynamic> _$AutocompleteSuggestionToJson(
  _AutocompleteSuggestion instance,
) => <String, dynamic>{'value': instance.value};

_OrganicResult _$OrganicResultFromJson(Map<String, dynamic> json) =>
    _OrganicResult(
      title: json['title'] as String,
      link: json['link'] as String,
      snippet: json['snippet'] as String,
      date: json['date'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      ratingCount: (json['ratingCount'] as num?)?.toInt(),
      imageUrl: json['imageUrl'] as String?,
      position: (json['position'] as num).toInt(),
      sitelinks:
          (json['sitelinks'] as List<dynamic>?)
              ?.map((e) => OrganicSitelink.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$OrganicResultToJson(_OrganicResult instance) =>
    <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'snippet': instance.snippet,
      'date': instance.date,
      'rating': instance.rating,
      'ratingCount': instance.ratingCount,
      'imageUrl': instance.imageUrl,
      'position': instance.position,
      'sitelinks': instance.sitelinks,
    };

_OrganicSitelink _$OrganicSitelinkFromJson(Map<String, dynamic> json) =>
    _OrganicSitelink(
      title: json['title'] as String,
      link: json['link'] as String,
    );

Map<String, dynamic> _$OrganicSitelinkToJson(_OrganicSitelink instance) =>
    <String, dynamic>{'title': instance.title, 'link': instance.link};

_RelatedSearchResult _$RelatedSearchResultFromJson(Map<String, dynamic> json) =>
    _RelatedSearchResult(query: json['query'] as String);

Map<String, dynamic> _$RelatedSearchResultToJson(
  _RelatedSearchResult instance,
) => <String, dynamic>{'query': instance.query};

_PeopleAlsoAskResult _$PeopleAlsoAskResultFromJson(Map<String, dynamic> json) =>
    _PeopleAlsoAskResult(
      question: json['question'] as String,
      snippet: json['snippet'] as String?,
      title: json['title'] as String?,
      link: json['link'] as String?,
    );

Map<String, dynamic> _$PeopleAlsoAskResultToJson(
  _PeopleAlsoAskResult instance,
) => <String, dynamic>{
  'question': instance.question,
  'snippet': instance.snippet,
  'title': instance.title,
  'link': instance.link,
};

_TopStoriesResult _$TopStoriesResultFromJson(Map<String, dynamic> json) =>
    _TopStoriesResult(
      title: json['title'] as String,
      link: json['link'] as String,
      date: json['date'] as String?,
      source: json['source'] as String?,
      snippet: json['snippet'] as String?,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$TopStoriesResultToJson(_TopStoriesResult instance) =>
    <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'date': instance.date,
      'source': instance.source,
      'snippet': instance.snippet,
      'imageUrl': instance.imageUrl,
    };

_KnowledgeGraphResult _$KnowledgeGraphResultFromJson(
  Map<String, dynamic> json,
) => _KnowledgeGraphResult(
  title: json['title'] as String,
  type: json['type'] as String?,
  imageUrl: json['imageUrl'] as String?,
  attributes:
      json['attributes'] == null
          ? null
          : KnowledgeGraphAttributes.fromJson(
            json['attributes'] as Map<String, dynamic>,
          ),
  description: json['description'] as String?,
  descriptionLink: json['descriptionLink'] as String?,
  descriptionSource: json['descriptionSource'] as String?,
);

Map<String, dynamic> _$KnowledgeGraphResultToJson(
  _KnowledgeGraphResult instance,
) => <String, dynamic>{
  'title': instance.title,
  'type': instance.type,
  'imageUrl': instance.imageUrl,
  'attributes': instance.attributes,
  'description': instance.description,
  'descriptionLink': instance.descriptionLink,
  'descriptionSource': instance.descriptionSource,
};

_KnowledgeGraphAttributes _$KnowledgeGraphAttributesFromJson(
  Map<String, dynamic> json,
) => _KnowledgeGraphAttributes(
  lifespan: json['lifespan'] as String?,
  gestationPeriod: json['gestationPeriod'] as String?,
  collectiveNoun: json['collectiveNoun'] as String?,
  dailySleep: json['dailySleep'] as String?,
  biologicalClass: json['biologicalClass'] as String?,
  domain: json['domain'] as String?,
);

Map<String, dynamic> _$KnowledgeGraphAttributesToJson(
  _KnowledgeGraphAttributes instance,
) => <String, dynamic>{
  'lifespan': instance.lifespan,
  'gestationPeriod': instance.gestationPeriod,
  'collectiveNoun': instance.collectiveNoun,
  'dailySleep': instance.dailySleep,
  'biologicalClass': instance.biologicalClass,
  'domain': instance.domain,
};

_ImageResult _$ImageResultFromJson(Map<String, dynamic> json) => _ImageResult(
  title: json['title'] as String?,
  imageUrl: json['imageUrl'] as String?,
  imageWidth: (json['imageWidth'] as num?)?.toInt(),
  imageHeight: (json['imageHeight'] as num?)?.toInt(),
  thumbnailUrl: json['thumbnailUrl'] as String?,
  thumbnailWidth: (json['thumbnailWidth'] as num?)?.toInt(),
  thumbnailHeight: (json['thumbnailHeight'] as num?)?.toInt(),
  source: json['source'] as String?,
  link: json['link'] as String?,
  googleUrl: json['googleUrl'] as String?,
  price: json['price'] as String?,
  domain: json['domain'] as String?,
  position: (json['position'] as num).toInt(),
);

Map<String, dynamic> _$ImageResultToJson(_ImageResult instance) =>
    <String, dynamic>{
      'title': instance.title,
      'imageUrl': instance.imageUrl,
      'imageWidth': instance.imageWidth,
      'imageHeight': instance.imageHeight,
      'thumbnailUrl': instance.thumbnailUrl,
      'thumbnailWidth': instance.thumbnailWidth,
      'thumbnailHeight': instance.thumbnailHeight,
      'source': instance.source,
      'link': instance.link,
      'googleUrl': instance.googleUrl,
      'price': instance.price,
      'domain': instance.domain,
      'position': instance.position,
    };

_PlaceResult _$PlaceResultFromJson(Map<String, dynamic> json) => _PlaceResult(
  title: json['title'] as String,
  address: json['address'] as String,
  latitude: (json['latitude'] as num).toDouble(),
  longitude: (json['longitude'] as num).toDouble(),
  phoneNumber: json['phoneNumber'] as String?,
  rating: (json['rating'] as num?)?.toDouble(),
  reviewCount: (json['reviewCount'] as num?)?.toInt(),
  website: json['website'] as String?,
  type: json['category'] as String?,
  priceLevel: json['priceLevel'] as String?,
  openingHours:
      (json['openingHours'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
  cid: json['cid'] as String?,
  position: (json['position'] as num).toInt(),
);

Map<String, dynamic> _$PlaceResultToJson(_PlaceResult instance) =>
    <String, dynamic>{
      'title': instance.title,
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'phoneNumber': instance.phoneNumber,
      'rating': instance.rating,
      'reviewCount': instance.reviewCount,
      'website': instance.website,
      'category': instance.type,
      'priceLevel': instance.priceLevel,
      'openingHours': instance.openingHours,
      'cid': instance.cid,
      'position': instance.position,
    };

_VideoResult _$VideoResultFromJson(Map<String, dynamic> json) => _VideoResult(
  title: json['title'] as String,
  link: json['link'] as String,
  snippet: json['snippet'] as String?,
  imageUrl: json['imageUrl'] as String?,
  videoUrl: json['videoUrl'] as String?,
  duration: json['duration'] as String?,
  source: json['source'] as String?,
  channel: json['channel'] as String?,
  date: json['date'] as String?,
  position: (json['position'] as num).toInt(),
);

Map<String, dynamic> _$VideoResultToJson(_VideoResult instance) =>
    <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'snippet': instance.snippet,
      'imageUrl': instance.imageUrl,
      'videoUrl': instance.videoUrl,
      'duration': instance.duration,
      'source': instance.source,
      'channel': instance.channel,
      'date': instance.date,
      'position': instance.position,
    };

_MapResult _$MapResultFromJson(Map<String, dynamic> json) => _MapResult(
  title: json['title'] as String,
  cid: json['cid'] as String,
  address: json['address'] as String,
  rating: (json['rating'] as num?)?.toDouble(),
  ratingCount: (json['ratingCount'] as num?)?.toInt(),
  priceLevel: json['priceLevel'] as String?,
  type: json['type'] as String?,
  types: (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
  phoneNumber: json['phoneNumber'] as String?,
  website: json['website'] as String?,
  openingHours: (json['openingHours'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, e as String),
  ),
  description: json['description'] as String?,
  thumbnailUrl: json['thumbnailUrl'] as String,
  bookingLinks:
      (json['bookingLinks'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
  fid: json['fid'] as String,
  latitude: (json['latitude'] as num).toDouble(),
  longitude: (json['longitude'] as num).toDouble(),
  placeId: json['placeId'] as String,
  position: (json['position'] as num).toInt(),
);

Map<String, dynamic> _$MapResultToJson(_MapResult instance) =>
    <String, dynamic>{
      'title': instance.title,
      'cid': instance.cid,
      'address': instance.address,
      'rating': instance.rating,
      'ratingCount': instance.ratingCount,
      'priceLevel': instance.priceLevel,
      'type': instance.type,
      'types': instance.types,
      'phoneNumber': instance.phoneNumber,
      'website': instance.website,
      'openingHours': instance.openingHours,
      'description': instance.description,
      'thumbnailUrl': instance.thumbnailUrl,
      'bookingLinks': instance.bookingLinks,
      'fid': instance.fid,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'placeId': instance.placeId,
      'position': instance.position,
    };

_PlaceReview _$PlaceReviewFromJson(Map<String, dynamic> json) => _PlaceReview(
  rating: (json['rating'] as num).toDouble(),
  date: json['date'] as String,
  isoDate: json['isoDate'] as String?,
  snippet: json['snippet'] as String?,
  likes: (json['likes'] as num?)?.toInt(),
  user: PlaceReviewUser.fromJson(json['user'] as Map<String, dynamic>),
  response:
      json['response'] == null
          ? null
          : PlaceReviewResponse.fromJson(
            json['response'] as Map<String, dynamic>,
          ),
  id: json['id'] as String?,
);

Map<String, dynamic> _$PlaceReviewToJson(_PlaceReview instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'date': instance.date,
      'isoDate': instance.isoDate,
      'snippet': instance.snippet,
      'likes': instance.likes,
      'user': instance.user,
      'response': instance.response,
      'id': instance.id,
    };

_PlaceReviewUser _$PlaceReviewUserFromJson(Map<String, dynamic> json) =>
    _PlaceReviewUser(
      name: json['name'] as String,
      thumbnail: json['thumbnail'] as String?,
      link: json['link'] as String?,
      reviews: (json['reviews'] as num?)?.toInt(),
      photos: (json['photos'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PlaceReviewUserToJson(_PlaceReviewUser instance) =>
    <String, dynamic>{
      'name': instance.name,
      'thumbnail': instance.thumbnail,
      'link': instance.link,
      'reviews': instance.reviews,
      'photos': instance.photos,
    };

_PlaceReviewResponse _$PlaceReviewResponseFromJson(Map<String, dynamic> json) =>
    _PlaceReviewResponse(
      date: json['date'] as String,
      isoDate: json['isoDate'] as String?,
      snippet: json['snippet'] as String?,
    );

Map<String, dynamic> _$PlaceReviewResponseToJson(
  _PlaceReviewResponse instance,
) => <String, dynamic>{
  'date': instance.date,
  'isoDate': instance.isoDate,
  'snippet': instance.snippet,
};

_PlaceReviewTopic _$PlaceReviewTopicFromJson(Map<String, dynamic> json) =>
    _PlaceReviewTopic(
      name: json['name'] as String,
      reviews: (json['reviews'] as num).toInt(),
      id: json['id'] as String,
    );

Map<String, dynamic> _$PlaceReviewTopicToJson(_PlaceReviewTopic instance) =>
    <String, dynamic>{
      'name': instance.name,
      'reviews': instance.reviews,
      'id': instance.id,
    };

_NewsResult _$NewsResultFromJson(Map<String, dynamic> json) => _NewsResult(
  title: json['title'] as String,
  link: json['link'] as String,
  snippet: json['snippet'] as String,
  date: json['date'] as String,
  source: json['source'] as String,
  imageUrl: json['imageUrl'] as String?,
  position: (json['position'] as num).toInt(),
);

Map<String, dynamic> _$NewsResultToJson(_NewsResult instance) =>
    <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'snippet': instance.snippet,
      'date': instance.date,
      'source': instance.source,
      'imageUrl': instance.imageUrl,
      'position': instance.position,
    };

_ShoppingResult _$ShoppingResultFromJson(Map<String, dynamic> json) =>
    _ShoppingResult(
      title: json['title'] as String,
      source: json['source'] as String?,
      link: json['link'] as String,
      price: json['price'] as String?,
      delivery: json['delivery'] as String?,
      imageUrl: json['imageUrl'] as String?,
      position: (json['position'] as num).toInt(),
      rating: (json['rating'] as num?)?.toDouble(),
      ratingCount: (json['ratingCount'] as num?)?.toInt(),
      offers: json['offers'] as String?,
      productId: json['productId'] as String?,
    );

Map<String, dynamic> _$ShoppingResultToJson(_ShoppingResult instance) =>
    <String, dynamic>{
      'title': instance.title,
      'source': instance.source,
      'link': instance.link,
      'price': instance.price,
      'delivery': instance.delivery,
      'imageUrl': instance.imageUrl,
      'position': instance.position,
      'rating': instance.rating,
      'ratingCount': instance.ratingCount,
      'offers': instance.offers,
      'productId': instance.productId,
    };

_LensResult _$LensResultFromJson(Map<String, dynamic> json) => _LensResult(
  title: json['title'] as String,
  source: json['source'] as String,
  link: json['link'] as String,
  imageUrl: json['imageUrl'] as String,
  thumbnailUrl: json['thumbnailUrl'] as String,
);

Map<String, dynamic> _$LensResultToJson(_LensResult instance) =>
    <String, dynamic>{
      'title': instance.title,
      'source': instance.source,
      'link': instance.link,
      'imageUrl': instance.imageUrl,
      'thumbnailUrl': instance.thumbnailUrl,
    };

_ScholarResult _$ScholarResultFromJson(Map<String, dynamic> json) =>
    _ScholarResult(
      title: json['title'] as String,
      link: json['link'] as String,
      publicationInfo: json['publicationInfo'] as String,
      snippet: json['snippet'] as String,
      year: (json['year'] as num).toInt(),
      citedBy: (json['citedBy'] as num).toInt(),
      pdfUrl: json['pdfUrl'] as String?,
      htmlUrl: json['htmlUrl'] as String?,
      id: json['id'] as String,
    );

Map<String, dynamic> _$ScholarResultToJson(_ScholarResult instance) =>
    <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'publicationInfo': instance.publicationInfo,
      'snippet': instance.snippet,
      'year': instance.year,
      'citedBy': instance.citedBy,
      'pdfUrl': instance.pdfUrl,
      'htmlUrl': instance.htmlUrl,
      'id': instance.id,
    };

_PatentResult _$PatentResultFromJson(Map<String, dynamic> json) =>
    _PatentResult(
      title: json['title'] as String,
      snippet: json['snippet'] as String,
      link: json['link'] as String,
      priorityDate: json['priorityDate'] as String,
      filingDate: json['filingDate'] as String,
      grantDate: json['grantDate'] as String?,
      publicationDate: json['publicationDate'] as String,
      inventor: json['inventor'] as String,
      assignee: json['assignee'] as String,
      publicationNumber: json['publicationNumber'] as String,
      language: json['language'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
      pdfUrl: json['pdfUrl'] as String?,
      figures:
          (json['figures'] as List<dynamic>?)
              ?.map((e) => PatentFigure.fromJson(e as Map<String, dynamic>))
              .toList(),
      position: (json['position'] as num).toInt(),
    );

Map<String, dynamic> _$PatentResultToJson(_PatentResult instance) =>
    <String, dynamic>{
      'title': instance.title,
      'snippet': instance.snippet,
      'link': instance.link,
      'priorityDate': instance.priorityDate,
      'filingDate': instance.filingDate,
      'grantDate': instance.grantDate,
      'publicationDate': instance.publicationDate,
      'inventor': instance.inventor,
      'assignee': instance.assignee,
      'publicationNumber': instance.publicationNumber,
      'language': instance.language,
      'thumbnailUrl': instance.thumbnailUrl,
      'pdfUrl': instance.pdfUrl,
      'figures': instance.figures,
      'position': instance.position,
    };

_PatentFigure _$PatentFigureFromJson(Map<String, dynamic> json) =>
    _PatentFigure(
      imageUrl: json['imageUrl'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
    );

Map<String, dynamic> _$PatentFigureToJson(_PatentFigure instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'thumbnailUrl': instance.thumbnailUrl,
    };

_WebpageResult _$WebpageResultFromJson(Map<String, dynamic> json) =>
    _WebpageResult(
      text: json['text'] as String,
      markdown: json['markdown'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      jsonld: json['jsonld'] as Map<String, dynamic>?,
      credits: (json['credits'] as num).toInt(),
    );

Map<String, dynamic> _$WebpageResultToJson(_WebpageResult instance) =>
    <String, dynamic>{
      'text': instance.text,
      'markdown': instance.markdown,
      'metadata': instance.metadata,
      'jsonld': instance.jsonld,
      'credits': instance.credits,
    };
