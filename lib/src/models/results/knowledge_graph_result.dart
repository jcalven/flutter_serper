part of 'results.dart';

/// Knowledge graph result.
@freezed
class KnowledgeGraphResult with _$KnowledgeGraphResult {
  const factory KnowledgeGraphResult({
    required String title,
    String? type,
    String? imageUrl,
    Map<String, dynamic>? attributes,
    String? description,
    String? descriptionLink,
    String? descriptionSource,
  }) = _KnowledgeGraphResult;

  factory KnowledgeGraphResult.fromJson(Map<String, dynamic> json) =>
      _$KnowledgeGraphResultFromJson(json);
}
