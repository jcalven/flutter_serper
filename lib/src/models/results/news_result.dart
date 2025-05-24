part of 'results.dart';

/// News result.
@freezed
abstract class NewsResult with _$NewsResult {
  const factory NewsResult({
    required String title,
    required String link,
    required String snippet,
    required String date,
    required String source,
    String? imageUrl,
    required int position,
  }) = _NewsResult;

  factory NewsResult.fromJson(Map<String, dynamic> json) =>
      _$NewsResultFromJson(json);
}
