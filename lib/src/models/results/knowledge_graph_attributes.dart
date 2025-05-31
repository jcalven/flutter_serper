part of 'results.dart';

/// Attributes for a Knowledge Graph entity.
@freezed
abstract class KnowledgeGraphAttributes with _$KnowledgeGraphAttributes {
  /// Creates a [KnowledgeGraphAttributes].
  const factory KnowledgeGraphAttributes({
    /// The typical lifespan of the entity (e.g., for animals).
    String? lifespan,

    /// The gestation period (e.g., for animals).
    String? gestationPeriod,

    /// The collective noun for the entity (e.g., for animals).
    String? collectiveNoun,

    /// The typical daily sleep duration.
    String? dailySleep,

    /// The biological class of the entity.
    String? biologicalClass,

    /// The biological domain of the entity.
    String? domain,
  }) = _KnowledgeGraphAttributes;

  /// Creates a [KnowledgeGraphAttributes] from a JSON map.
  factory KnowledgeGraphAttributes.fromJson(Map<String, dynamic> json) =>
      _$KnowledgeGraphAttributesFromJson(json);
}
