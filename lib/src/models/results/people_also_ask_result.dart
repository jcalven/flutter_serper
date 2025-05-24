part of 'results.dart';

/// People also ask result.
@freezed
abstract class PeopleAlsoAskResult with _$PeopleAlsoAskResult {
  const factory PeopleAlsoAskResult({
    required String question,
    String? snippet,
    String? title,
    String? link,
  }) = _PeopleAlsoAskResult;

  factory PeopleAlsoAskResult.fromJson(Map<String, dynamic> json) =>
      _$PeopleAlsoAskResultFromJson(json);
}
