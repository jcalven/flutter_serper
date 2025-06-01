part of 'responses.dart';

/// {@template patentsResponseDocComments}
///
/// An immutable response object for the Serper Patents API, describing the API response
/// by holding the [searchParameters], [organic], and [credits] fields.
///
/// - [searchParameters]: The parameters used for the patents search.
/// - [organic]: List of patent results returned by the API. These are the patent results that match the search query.
/// - [credits]: The number of API credits consumed by this request.
///
/// This class is returned by Serper API methods that perform patents search requests.
/// {@endtemplate}
@freezed
abstract class PatentsResponse extends SerperResponse<PatentsQuery>
    with _$PatentsResponse, ResponseUtilityMixin<PatentsQuery> {
  /// {@macro patentsResponseDocComments}
  const PatentsResponse._();

  const factory PatentsResponse({
    /// {@macro flutter_serper.responses.searchParameters}
    required PatentsQuery searchParameters,

    /// {@macro flutter_serper.responses.organic}
    ///
    /// For Patents API, these are the patent results that match the search query.
    required List<PatentResult> organic,

    /// {@macro flutter_serper.responses.credits}
    required int credits,
  }) = _PatentsResponse;

  factory PatentsResponse.fromJson(Map<String, dynamic> json) =>
      _$PatentsResponseFromJson(json);
}
