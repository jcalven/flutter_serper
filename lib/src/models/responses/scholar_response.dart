part of 'responses.dart';

/// {@template scholarResponseDocComments}
///
/// An immutable response object for the Serper Scholar API, describing the API response
/// by holding the [searchParameters], [organic], and [credits] fields.
///
/// - [searchParameters]: The parameters used for the scholar search.
/// - [organic]: List of academic results returned by the API. These are the academic results that match the search query.
/// - [credits]: The number of API credits consumed by this request.
///
/// This class is returned by Serper API methods that perform scholar search requests.
/// {@endtemplate}
@freezed
abstract class ScholarResponse extends SerperResponse<ScholarQuery>
    with _$ScholarResponse, ResponseUtilityMixin<ScholarQuery> {
  /// {@macro scholarResponseDocComments}
  const ScholarResponse._();

  const factory ScholarResponse({
    /// {@macro flutter_serper.responses.searchParameters}
    required ScholarQuery searchParameters,

    /// {@macro flutter_serper.responses.organic}
    ///
    /// For Scholar API, these are the academic results that match the search query.
    required List<ScholarResult> organic,

    /// {@macro flutter_serper.responses.credits}
    required int credits,
  }) = _ScholarResponse;

  factory ScholarResponse.fromJson(Map<String, dynamic> json) =>
      _$ScholarResponseFromJson(json);
}
