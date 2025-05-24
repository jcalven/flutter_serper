part of 'results.dart';

/// Knowledge Graph result from the Serper API.
///
/// Knowledge Graph provides structured information about entities
/// (people, places, organizations, etc.) that are relevant to the search query.
@freezed
abstract class KnowledgeGraphResult with _$KnowledgeGraphResult {
  /// Creates a [KnowledgeGraphResult].
  const factory KnowledgeGraphResult({
    /// {@macro ResultDocTemplates.titleDoc}
    required String title,

    /// The type of entity represented in the Knowledge Graph.
    ///
    /// Examples include "Person", "Organization", "Place", etc.
    String? type,

    /// {@macro ResultDocTemplates.imageUrlDoc}
    String? imageUrl,

    /// Additional attributes associated with this entity.
    ///
    /// This is a map of key-value pairs containing various facts about the entity.
    Map<String, dynamic>? attributes,

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
