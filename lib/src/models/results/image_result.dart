part of 'results.dart';

/// Image result returned by the Serper Images API.
@freezed
abstract class ImageResult with _$ImageResult {
  /// Creates an [ImageResult].
  const factory ImageResult({
    /// {@macro ResultDocTemplates.titleDoc}
    String? title,

    /// {@macro ResultDocTemplates.imageUrlDoc}
    String? imageUrl,

    /// {@macro ResultDocTemplates.thumbnailUrlDoc}
    String? thumbnailUrl,

    /// {@macro ResultDocTemplates.sourceDoc}
    String? source,

    /// {@macro ResultDocTemplates.sourceUrlDoc}
    String? sourceUrl,

    /// {@macro ResultDocTemplates.priceDoc}
    String? price,

    /// The domain of the website hosting the image.
    ///
    /// This is the root domain name of the source website.
    String? domain,

    /// {@macro ResultDocTemplates.positionDoc}
    required int position,
  }) = _ImageResult;

  /// Creates an [ImageResult] from a JSON map.
  factory ImageResult.fromJson(Map<String, dynamic> json) =>
      _$ImageResultFromJson(json);
}
