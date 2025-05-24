// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AutocompleteSuggestionImpl _$$AutocompleteSuggestionImplFromJson(
  Map<String, dynamic> json,
) => _$AutocompleteSuggestionImpl(value: json['value'] as String);

Map<String, dynamic> _$$AutocompleteSuggestionImplToJson(
  _$AutocompleteSuggestionImpl instance,
) => <String, dynamic>{'value': instance.value};

_$OrganicResultImpl _$$OrganicResultImplFromJson(Map<String, dynamic> json) =>
    _$OrganicResultImpl(
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

Map<String, dynamic> _$$OrganicResultImplToJson(_$OrganicResultImpl instance) =>
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

_$RelatedSearchResultImpl _$$RelatedSearchResultImplFromJson(
  Map<String, dynamic> json,
) => _$RelatedSearchResultImpl(query: json['query'] as String);

Map<String, dynamic> _$$RelatedSearchResultImplToJson(
  _$RelatedSearchResultImpl instance,
) => <String, dynamic>{'query': instance.query};

_$PeopleAlsoAskResultImpl _$$PeopleAlsoAskResultImplFromJson(
  Map<String, dynamic> json,
) => _$PeopleAlsoAskResultImpl(
  question: json['question'] as String,
  snippet: json['snippet'] as String?,
  title: json['title'] as String?,
  link: json['link'] as String?,
);

Map<String, dynamic> _$$PeopleAlsoAskResultImplToJson(
  _$PeopleAlsoAskResultImpl instance,
) => <String, dynamic>{
  'question': instance.question,
  'snippet': instance.snippet,
  'title': instance.title,
  'link': instance.link,
};

_$PlacesResultImpl _$$PlacesResultImplFromJson(Map<String, dynamic> json) =>
    _$PlacesResultImpl(
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

Map<String, dynamic> _$$PlacesResultImplToJson(_$PlacesResultImpl instance) =>
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

_$TopStoriesResultImpl _$$TopStoriesResultImplFromJson(
  Map<String, dynamic> json,
) => _$TopStoriesResultImpl(
  title: json['title'] as String,
  link: json['link'] as String,
  date: json['date'] as String?,
  source: json['source'] as String?,
  imageUrl: json['imageUrl'] as String?,
  snippet: json['snippet'] as String?,
);

Map<String, dynamic> _$$TopStoriesResultImplToJson(
  _$TopStoriesResultImpl instance,
) => <String, dynamic>{
  'title': instance.title,
  'link': instance.link,
  'date': instance.date,
  'source': instance.source,
  'imageUrl': instance.imageUrl,
  'snippet': instance.snippet,
};

_$TwitterResultImpl _$$TwitterResultImplFromJson(Map<String, dynamic> json) =>
    _$TwitterResultImpl(
      title: json['title'] as String?,
      link: json['link'] as String,
      snippet: json['snippet'] as String?,
    );

Map<String, dynamic> _$$TwitterResultImplToJson(_$TwitterResultImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'snippet': instance.snippet,
    };

_$ImagesResultImpl _$$ImagesResultImplFromJson(Map<String, dynamic> json) =>
    _$ImagesResultImpl(
      title: json['title'] as String,
      imageUrl: json['imageUrl'] as String,
      source: json['source'] as String,
      sourceUrl: json['sourceUrl'] as String,
    );

Map<String, dynamic> _$$ImagesResultImplToJson(_$ImagesResultImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'imageUrl': instance.imageUrl,
      'source': instance.source,
      'sourceUrl': instance.sourceUrl,
    };

_$KnowledgeGraphResultImpl _$$KnowledgeGraphResultImplFromJson(
  Map<String, dynamic> json,
) => _$KnowledgeGraphResultImpl(
  title: json['title'] as String,
  type: json['type'] as String?,
  imageUrl: json['imageUrl'] as String?,
  attributes: json['attributes'] as Map<String, dynamic>?,
  description: json['description'] as String?,
  descriptionLink: json['descriptionLink'] as String?,
  descriptionSource: json['descriptionSource'] as String?,
);

Map<String, dynamic> _$$KnowledgeGraphResultImplToJson(
  _$KnowledgeGraphResultImpl instance,
) => <String, dynamic>{
  'title': instance.title,
  'type': instance.type,
  'imageUrl': instance.imageUrl,
  'attributes': instance.attributes,
  'description': instance.description,
  'descriptionLink': instance.descriptionLink,
  'descriptionSource': instance.descriptionSource,
};

_$LocalResultsResultImpl _$$LocalResultsResultImplFromJson(
  Map<String, dynamic> json,
) => _$LocalResultsResultImpl(
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

Map<String, dynamic> _$$LocalResultsResultImplToJson(
  _$LocalResultsResultImpl instance,
) => <String, dynamic>{
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

_$ImageResultImpl _$$ImageResultImplFromJson(Map<String, dynamic> json) =>
    _$ImageResultImpl(
      title: json['title'] as String?,
      imageUrl: json['imageUrl'] as String?,
      thumbnailUrl: json['thumbnailUrl'] as String?,
      source: json['source'] as String?,
      sourceUrl: json['sourceUrl'] as String?,
      price: json['price'] as String?,
      domain: json['domain'] as String?,
      position: (json['position'] as num).toInt(),
    );

Map<String, dynamic> _$$ImageResultImplToJson(_$ImageResultImpl instance) =>
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

_$PlaceResultImpl _$$PlaceResultImplFromJson(Map<String, dynamic> json) =>
    _$PlaceResultImpl(
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

Map<String, dynamic> _$$PlaceResultImplToJson(_$PlaceResultImpl instance) =>
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

_$VideoResultImpl _$$VideoResultImplFromJson(Map<String, dynamic> json) =>
    _$VideoResultImpl(
      title: json['title'] as String,
      link: json['link'] as String,
      snippet: json['snippet'] as String?,
      source: json['source'] as String?,
      channelLink: json['channelLink'] as String?,
      date: json['date'] as String?,
      duration: json['duration'] as String?,
      thumbnailUrl: json['thumbnailUrl'] as String,
      viewCount: (json['viewCount'] as num?)?.toInt(),
      position: (json['position'] as num).toInt(),
    );

Map<String, dynamic> _$$VideoResultImplToJson(_$VideoResultImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'snippet': instance.snippet,
      'source': instance.source,
      'channelLink': instance.channelLink,
      'date': instance.date,
      'duration': instance.duration,
      'thumbnailUrl': instance.thumbnailUrl,
      'viewCount': instance.viewCount,
      'position': instance.position,
    };

_$MapResultImpl _$$MapResultImplFromJson(Map<String, dynamic> json) =>
    _$MapResultImpl(
      title: json['title'] as String,
      cid: json['cid'] as String,
      address: json['address'] as String,
      rating: (json['rating'] as num).toDouble(),
      reviewCount: (json['reviewCount'] as num).toInt(),
      priceLevel: json['priceLevel'] as String,
      type: json['type'] as String,
      phone: json['phone'] as String?,
      website: json['website'] as String?,
      categories:
          (json['categories'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      openingHours:
          (json['openingHours'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      reviews:
          (json['reviews'] as List<dynamic>?)
              ?.map((e) => MapResultReview.fromJson(e as Map<String, dynamic>))
              .toList(),
      photos:
          (json['photos'] as List<dynamic>?)
              ?.map((e) => MapResultPhoto.fromJson(e as Map<String, dynamic>))
              .toList(),
      additionalInfo: json['additionalInfo'] as Map<String, dynamic>?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$MapResultImplToJson(_$MapResultImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'cid': instance.cid,
      'address': instance.address,
      'rating': instance.rating,
      'reviewCount': instance.reviewCount,
      'priceLevel': instance.priceLevel,
      'type': instance.type,
      'phone': instance.phone,
      'website': instance.website,
      'categories': instance.categories,
      'openingHours': instance.openingHours,
      'reviews': instance.reviews,
      'photos': instance.photos,
      'additionalInfo': instance.additionalInfo,
      'description': instance.description,
    };

_$MapResultReviewImpl _$$MapResultReviewImplFromJson(
  Map<String, dynamic> json,
) => _$MapResultReviewImpl(
  author: json['author'] as String,
  authorUrl: json['authorUrl'] as String,
  text: json['text'] as String,
  rating: (json['rating'] as num).toDouble(),
  date: json['date'] as String,
);

Map<String, dynamic> _$$MapResultReviewImplToJson(
  _$MapResultReviewImpl instance,
) => <String, dynamic>{
  'author': instance.author,
  'authorUrl': instance.authorUrl,
  'text': instance.text,
  'rating': instance.rating,
  'date': instance.date,
};

_$MapResultPhotoImpl _$$MapResultPhotoImplFromJson(Map<String, dynamic> json) =>
    _$MapResultPhotoImpl(
      imageUrl: json['imageUrl'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
    );

Map<String, dynamic> _$$MapResultPhotoImplToJson(
  _$MapResultPhotoImpl instance,
) => <String, dynamic>{
  'imageUrl': instance.imageUrl,
  'thumbnailUrl': instance.thumbnailUrl,
};

_$PlaceReviewImpl _$$PlaceReviewImplFromJson(Map<String, dynamic> json) =>
    _$PlaceReviewImpl(
      author: json['author'] as String,
      authorUrl: json['authorUrl'] as String,
      text: json['text'] as String,
      rating: (json['rating'] as num).toDouble(),
      date: json['date'] as String,
      id: json['id'] as String?,
      isLocalGuide: json['isLocalGuide'] as bool?,
      position: (json['position'] as num).toInt(),
    );

Map<String, dynamic> _$$PlaceReviewImplToJson(_$PlaceReviewImpl instance) =>
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

_$NewsResultImpl _$$NewsResultImplFromJson(Map<String, dynamic> json) =>
    _$NewsResultImpl(
      title: json['title'] as String,
      link: json['link'] as String,
      snippet: json['snippet'] as String,
      date: json['date'] as String,
      source: json['source'] as String,
      imageUrl: json['imageUrl'] as String?,
      position: (json['position'] as num).toInt(),
    );

Map<String, dynamic> _$$NewsResultImplToJson(_$NewsResultImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'snippet': instance.snippet,
      'date': instance.date,
      'source': instance.source,
      'imageUrl': instance.imageUrl,
      'position': instance.position,
    };

_$ShoppingResultImpl _$$ShoppingResultImplFromJson(Map<String, dynamic> json) =>
    _$ShoppingResultImpl(
      title: json['title'] as String,
      source: json['source'] as String?,
      link: json['link'] as String,
      price: json['price'] as String?,
      delivery: json['delivery'] as String?,
      imageUrl: json['imageUrl'] as String?,
      position: (json['position'] as num).toInt(),
    );

Map<String, dynamic> _$$ShoppingResultImplToJson(
  _$ShoppingResultImpl instance,
) => <String, dynamic>{
  'title': instance.title,
  'source': instance.source,
  'link': instance.link,
  'price': instance.price,
  'delivery': instance.delivery,
  'imageUrl': instance.imageUrl,
  'position': instance.position,
};

_$LensResultImpl _$$LensResultImplFromJson(Map<String, dynamic> json) =>
    _$LensResultImpl(
      title: json['title'] as String,
      source: json['source'] as String,
      link: json['link'] as String,
      imageUrl: json['imageUrl'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
    );

Map<String, dynamic> _$$LensResultImplToJson(_$LensResultImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'source': instance.source,
      'link': instance.link,
      'imageUrl': instance.imageUrl,
      'thumbnailUrl': instance.thumbnailUrl,
    };

_$ScholarResultImpl _$$ScholarResultImplFromJson(Map<String, dynamic> json) =>
    _$ScholarResultImpl(
      title: json['title'] as String,
      link: json['link'] as String,
      publicationInfo: json['publicationInfo'] as String,
      snippet: json['snippet'] as String,
      year: (json['year'] as num).toInt(),
      citedBy: (json['citedBy'] as num).toInt(),
      pdfUrl: json['pdfUrl'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$ScholarResultImplToJson(_$ScholarResultImpl instance) =>
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

_$PatentResultImpl _$$PatentResultImplFromJson(Map<String, dynamic> json) =>
    _$PatentResultImpl(
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

Map<String, dynamic> _$$PatentResultImplToJson(_$PatentResultImpl instance) =>
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

_$PatentFigureImpl _$$PatentFigureImplFromJson(Map<String, dynamic> json) =>
    _$PatentFigureImpl(
      imageUrl: json['imageUrl'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
    );

Map<String, dynamic> _$$PatentFigureImplToJson(_$PatentFigureImpl instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'thumbnailUrl': instance.thumbnailUrl,
    };

_$WebpageResultImpl _$$WebpageResultImplFromJson(Map<String, dynamic> json) =>
    _$WebpageResultImpl(
      text: json['text'] as String,
      markdown: json['markdown'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      credits: (json['credits'] as num).toInt(),
    );

Map<String, dynamic> _$$WebpageResultImplToJson(_$WebpageResultImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'markdown': instance.markdown,
      'metadata': instance.metadata,
      'credits': instance.credits,
    };
