part of 'results.dart';

/// Image result returned by the Serper Images API.
@freezed
abstract class ImageResult with _$ImageResult {
  /// Creates an [ImageResult].
  const factory ImageResult({
    /// {@macro flutter_serper.results.title}
    String? title,

    /// {@template flutter_serper.results.imageUrl}
    /// The URL to the full-size image.
    ///
    /// This URL can be used to display or download the full-size image.
    /// {@endtemplate}
    String? imageUrl,

    /// The width of the full-size image in pixels.
    int? imageWidth,

    /// The height of the full-size image in pixels.
    int? imageHeight,

    /// {@template flutter_serper.results.thumbnailUrl}
    /// The URL to a thumbnail version of the image.
    ///
    /// This URL can be used to display a smaller, preview version of the image.
    /// {@endtemplate}
    String? thumbnailUrl,

    /// The width of the thumbnail image in pixels.
    int? thumbnailWidth,

    /// The height of the thumbnail image in pixels.
    int? thumbnailHeight,

    /// {@template flutter_serper.results.source}
    /// The source or provider of the result.
    ///
    /// Indicates where the content originated from, such as a website name or publisher.
    /// {@endtemplate}
    String? source,

    /// {@macro flutter_serper.results.link}
    String? link,

    /// The Google Images result URL for this image.
    String? googleUrl,

    /// {@template flutter_serper.results.price}
    /// The price associated with the result.
    ///
    /// For shopping results, this represents the cost of the item, typically including currency symbol.
    /// {@endtemplate}
    String? price,

    /// The domain of the website hosting the image.
    ///
    /// This is the root domain name of the source website.
    String? domain,

    /// {@macro flutter_serper.results.position}
    required int position,
  }) = _ImageResult;

  /// Creates an [ImageResult] from a JSON map.
  factory ImageResult.fromJson(Map<String, dynamic> json) =>
      _$ImageResultFromJson(json);
}
