part of 'results.dart';

/// Map result photo.
@freezed
class MapResultPhoto with _$MapResultPhoto {
  const factory MapResultPhoto({
    required String imageUrl,
    required String thumbnailUrl,
  }) = _MapResultPhoto;

  factory MapResultPhoto.fromJson(Map<String, dynamic> json) =>
      _$MapResultPhotoFromJson(json);
}
