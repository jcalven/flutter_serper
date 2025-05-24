part of 'results.dart';

/// "People Also Ask" result from the Serper Search API.
///
/// These are related questions that users frequently ask about the topic.
@freezed
abstract class PeopleAlsoAskResult with _$PeopleAlsoAskResult {
  /// Creates a [PeopleAlsoAskResult].
  const factory PeopleAlsoAskResult({
    /// The question that people also ask about the search topic.
    required String question,

    /// {@macro ResultDocTemplates.snippetDoc}
    ///
    /// This is a brief answer to the question.
    String? snippet,

    /// {@macro ResultDocTemplates.titleDoc}
    ///
    /// The title of the source that provides the answer.
    String? title,

    /// {@macro ResultDocTemplates.linkDoc}
    ///
    /// Link to the source that provides more detailed information about the question.
    String? link,
  }) = _PeopleAlsoAskResult;

  /// Creates a [PeopleAlsoAskResult] from a JSON map.
  factory PeopleAlsoAskResult.fromJson(Map<String, dynamic> json) =>
      _$PeopleAlsoAskResultFromJson(json);
}
