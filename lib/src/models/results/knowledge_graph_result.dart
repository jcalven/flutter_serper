part of 'results.dart';

/// {@template knowledgeGraphResultDocComments}
///
/// An immutable result object representing a Knowledge Graph result from the Serper API.
///
/// - [title]: The title of the entity.
/// - [type]: The type of entity represented in the Knowledge Graph (e.g., "Person", "Organization").
/// - [imageUrl]: The URL to the entity's image.
/// - [attributes]: Additional attributes associated with this entity.
/// - [description]: A description of the entity.
/// - [descriptionLink]: A link to the source of the description.
/// - [descriptionSource]: The source of the description.
///
/// This class is used in [SearchResponse] and other responses to represent structured entity information.
/// {@endtemplate}
@freezed
abstract class KnowledgeGraphResult with _$KnowledgeGraphResult {
  /// {@macro knowledgeGraphResultDocComments}
  /// Creates a [KnowledgeGraphResult].
  const factory KnowledgeGraphResult({
    /// {@macro flutter_serper.results.title}
    required String title,

    /// The type of entity represented in the Knowledge Graph.
    ///
    /// Examples include "Person", "Organization", "Place", etc.
    String? type,

    /// {@macro flutter_serper.results.imageUrl}
    String? imageUrl,

    /// Additional attributes associated with this entity.
    ///
    /// This is a map of key-value pairs containing various facts about the entity.
    KnowledgeGraphAttributes? attributes,

    /// A description of the entity.
    ///
    /// This provides additional context or explanation about the entity.
    String? description,

    /// A link to the source of the description.
    ///
    /// This URL can be used to find more information about the entity.
    String? descriptionLink,

    /// The source of the description.
    ///
    /// Indicates where the description text originated from.
    String? descriptionSource,
  }) = _KnowledgeGraphResult;

  /// Creates a [KnowledgeGraphResult] from a JSON map.
  factory KnowledgeGraphResult.fromJson(Map<String, dynamic> json) =>
      _$KnowledgeGraphResultFromJson(json);
}
