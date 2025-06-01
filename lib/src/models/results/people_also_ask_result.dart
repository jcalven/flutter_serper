part of 'results.dart';

/// {@template peopleAlsoAskResultDocComments}
///
/// An immutable result object representing a "People Also Ask" result from the Serper Search API.
///
/// - [question]: The question that people also ask about the search topic.
/// - [snippet]: A brief answer to the question.
/// - [title]: The title of the source that provides the answer.
/// - [link]: Link to the source that provides more detailed information about the question.
///
/// This class is used in [SearchResponse] to represent related questions for a search query.
/// {@endtemplate}
@freezed
abstract class PeopleAlsoAskResult with _$PeopleAlsoAskResult {
  /// {@macro peopleAlsoAskResultDocComments}
  /// Creates a [PeopleAlsoAskResult].
  const factory PeopleAlsoAskResult({
    /// The question that people also ask about the search topic.
    required String question,

    /// {@macro flutter_serper.results.snippet}
    ///
    /// This is a brief answer to the question.
    String? snippet,

    /// {@macro flutter_serper.results.title}
    ///
    /// The title of the source that provides the answer.
    String? title,

    /// {@macro flutter_serper.results.link}
    ///
    /// Link to the source that provides more detailed information about the question.
    String? link,
  }) = _PeopleAlsoAskResult;

  /// Creates a [PeopleAlsoAskResult] from a JSON map.
  factory PeopleAlsoAskResult.fromJson(Map<String, dynamic> json) =>
      _$PeopleAlsoAskResultFromJson(json);
}
