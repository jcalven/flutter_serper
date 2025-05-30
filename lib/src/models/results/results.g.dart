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
      sitelinks: json['sitelinks'],
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

_PlacesResult _$PlacesResultFromJson(Map<String, dynamic> json) =>
    _PlacesResult(
      title: json['title'] as String,
      address: json['address'] as String,
      phone: json['phone'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      reviewCount: (json['reviewCount'] as num?)?.toInt(),
      website: json['website'] as String?,
      type: json['type'] as String?,
      priceLevel: json['priceLevel'] as String?,
      openingHours:
          (json['openingHours'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      position: (json['position'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PlacesResultToJson(_PlacesResult instance) =>
    <String, dynamic>{
      'title': instance.title,
      'address': instance.address,
      'phone': instance.phone,
      'rating': instance.rating,
      'reviewCount': instance.reviewCount,
      'website': instance.website,
      'type': instance.type,
      'priceLevel': instance.priceLevel,
      'openingHours': instance.openingHours,
      'position': instance.position,
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

_TwitterResult _$TwitterResultFromJson(Map<String, dynamic> json) =>
    _TwitterResult(
      title: json['title'] as String,
      link: json['link'] as String,
      snippet: json['snippet'] as String,
    );

Map<String, dynamic> _$TwitterResultToJson(_TwitterResult instance) =>
    <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'snippet': instance.snippet,
    };

_ImagesResult _$ImagesResultFromJson(Map<String, dynamic> json) =>
    _ImagesResult(
      title: json['title'] as String?,
      imageUrl: json['imageUrl'] as String?,
      source: json['source'] as String?,
      sourceUrl: json['sourceUrl'] as String?,
    );

Map<String, dynamic> _$ImagesResultToJson(_ImagesResult instance) =>
    <String, dynamic>{
      'title': instance.title,
      'imageUrl': instance.imageUrl,
      'source': instance.source,
      'sourceUrl': instance.sourceUrl,
    };

_KnowledgeGraphResult _$KnowledgeGraphResultFromJson(
  Map<String, dynamic> json,
) => _KnowledgeGraphResult(
  title: json['title'] as String,
  type: json['type'] as String?,
  imageUrl: json['imageUrl'] as String?,
  attributes: json['attributes'] as Map<String, dynamic>?,
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

_LocalResultsResult _$LocalResultsResultFromJson(Map<String, dynamic> json) =>
    _LocalResultsResult(
      title: json['title'] as String,
      address: json['address'] as String,
      phone: json['phone'] as String?,
      website: json['website'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      reviewCount: (json['reviewCount'] as num?)?.toInt(),
      priceLevel: json['priceLevel'] as String?,
      openingHours:
          (json['openingHours'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      moreHours: json['moreHours'] as List<dynamic>?,
      position: (json['position'] as num).toInt(),
    );

Map<String, dynamic> _$LocalResultsResultToJson(_LocalResultsResult instance) =>
    <String, dynamic>{
      'title': instance.title,
      'address': instance.address,
      'phone': instance.phone,
      'website': instance.website,
      'rating': instance.rating,
      'reviewCount': instance.reviewCount,
      'priceLevel': instance.priceLevel,
      'openingHours': instance.openingHours,
      'moreHours': instance.moreHours,
      'position': instance.position,
    };

_ImageResult _$ImageResultFromJson(Map<String, dynamic> json) => _ImageResult(
  title: json['title'] as String?,
  imageUrl: json['imageUrl'] as String?,
  thumbnailUrl: json['thumbnailUrl'] as String?,
  source: json['source'] as String?,
  sourceUrl: json['sourceUrl'] as String?,
  price: json['price'] as String?,
  domain: json['domain'] as String?,
  position: (json['position'] as num).toInt(),
);

Map<String, dynamic> _$ImageResultToJson(_ImageResult instance) =>
    <String, dynamic>{
      'title': instance.title,
      'imageUrl': instance.imageUrl,
      'thumbnailUrl': instance.thumbnailUrl,
      'source': instance.source,
      'sourceUrl': instance.sourceUrl,
      'price': instance.price,
      'domain': instance.domain,
      'position': instance.position,
    };

_PlaceResult _$PlaceResultFromJson(Map<String, dynamic> json) => _PlaceResult(
  title: json['title'] as String,
  address: json['address'] as String,
  phone: json['phone'] as String?,
  rating: (json['rating'] as num?)?.toDouble(),
  reviewCount: (json['reviewCount'] as num?)?.toInt(),
  website: json['website'] as String?,
  type: json['type'] as String?,
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
      'phone': instance.phone,
      'rating': instance.rating,
      'reviewCount': instance.reviewCount,
      'website': instance.website,
      'type': instance.type,
      'priceLevel': instance.priceLevel,
      'openingHours': instance.openingHours,
      'cid': instance.cid,
      'position': instance.position,
    };

_VideoResult _$VideoResultFromJson(Map<String, dynamic> json) => _VideoResult(
  title: json['title'] as String,
  link: json['link'] as String,
  snippet: json['snippet'] as String?,
  date: json['date'] as String?,
  source: json['source'] as String?,
  channelLink: json['channelLink'] as String?,
  position: (json['position'] as num).toInt(),
  duration: json['duration'] as String?,
  thumbnailUrl: json['thumbnailUrl'] as String,
  viewCount: (json['viewCount'] as num?)?.toInt(),
);

Map<String, dynamic> _$VideoResultToJson(_VideoResult instance) =>
    <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'snippet': instance.snippet,
      'date': instance.date,
      'source': instance.source,
      'channelLink': instance.channelLink,
      'position': instance.position,
      'duration': instance.duration,
      'thumbnailUrl': instance.thumbnailUrl,
      'viewCount': instance.viewCount,
    };

_MapResult _$MapResultFromJson(Map<String, dynamic> json) => _MapResult(
  title: json['title'] as String,
  cid: json['cid'] as String,
  address: json['address'] as String,
  rating: (json['rating'] as num?)?.toDouble(),
  ratingCount: (json['ratingCount'] as num?)?.toInt(),
  priceLevel: json['priceLevel'] as String?,
  type: json['type'] as String,
  types: (json['types'] as List<dynamic>).map((e) => e as String).toList(),
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

_MapResultReview _$MapResultReviewFromJson(Map<String, dynamic> json) =>
    _MapResultReview(
      author: json['author'] as String,
      authorUrl: json['authorUrl'] as String,
      text: json['text'] as String,
      rating: (json['rating'] as num).toDouble(),
      date: json['date'] as String,
    );

Map<String, dynamic> _$MapResultReviewToJson(_MapResultReview instance) =>
    <String, dynamic>{
      'author': instance.author,
      'authorUrl': instance.authorUrl,
      'text': instance.text,
      'rating': instance.rating,
      'date': instance.date,
    };

_MapResultPhoto _$MapResultPhotoFromJson(Map<String, dynamic> json) =>
    _MapResultPhoto(
      imageUrl: json['imageUrl'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
    );

Map<String, dynamic> _$MapResultPhotoToJson(_MapResultPhoto instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'thumbnailUrl': instance.thumbnailUrl,
    };

_PlaceReview _$PlaceReviewFromJson(Map<String, dynamic> json) => _PlaceReview(
  author: json['author'] as String,
  authorUrl: json['authorUrl'] as String,
  text: json['text'] as String,
  rating: (json['rating'] as num).toDouble(),
  date: json['date'] as String,
  id: json['id'] as String?,
  isLocalGuide: json['isLocalGuide'] as bool?,
  position: (json['position'] as num).toInt(),
);

Map<String, dynamic> _$PlaceReviewToJson(_PlaceReview instance) =>
    <String, dynamic>{
      'author': instance.author,
      'authorUrl': instance.authorUrl,
      'text': instance.text,
      'rating': instance.rating,
      'date': instance.date,
      'id': instance.id,
      'isLocalGuide': instance.isLocalGuide,
      'position': instance.position,
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
      pdfUrl: json['pdfUrl'] as String,
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
      credits: (json['credits'] as num).toInt(),
    );

Map<String, dynamic> _$WebpageResultToJson(_WebpageResult instance) =>
    <String, dynamic>{
      'text': instance.text,
      'markdown': instance.markdown,
      'metadata': instance.metadata,
      'credits': instance.credits,
    };
