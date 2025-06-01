part of 'results.dart';

/// {@template knowledgeGraphAttributesDocComments}
///
/// An immutable result object representing attributes for a Knowledge Graph entity.
///
/// - [lifespan]: The typical lifespan of the entity (e.g., for animals).
/// - [gestationPeriod]: The gestation period (e.g., for animals).
/// - [collectiveNoun]: The collective noun for the entity (e.g., for animals).
/// - [dailySleep]: The typical daily sleep duration.
/// - [biologicalClass]: The biological class of the entity.
/// - [domain]: The biological domain of the entity.
///
/// This class is used in [KnowledgeGraphResult] to represent additional attributes about the entity.
/// {@endtemplate}
@freezed
abstract class KnowledgeGraphAttributes with _$KnowledgeGraphAttributes {
  /// {@macro knowledgeGraphAttributesDocComments}
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
