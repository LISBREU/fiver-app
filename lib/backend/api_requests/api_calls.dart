import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SearchQueryCall {
  static Future<ApiCallResponse> call({
    String? searchString = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'SearchQuery',
      apiUrl:
          'https://jfyzbcpsasnlkvkgidoi.supabase.co/rest/v1/gig_details_view?name=ilike.*$searchString*&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImpmeXpiY3BzYXNubGt2a2dpZG9pIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA5Mzk2ODEsImV4cCI6MjAyNjUxNTY4MX0.aOdD9zXYPRtLLiEtOWkfbOh9k1-02faBUY_f5jm47wM',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImpmeXpiY3BzYXNubGt2a2dpZG9pIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA5Mzk2ODEsImV4cCI6MjAyNjUxNTY4MX0.aOdD9zXYPRtLLiEtOWkfbOh9k1-02faBUY_f5jm47wM',
        'Range': '0-9',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? categories(dynamic response) => (getJsonField(
        response,
        r'''$[:].category_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
