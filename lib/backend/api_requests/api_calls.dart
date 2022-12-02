import 'dart:convert';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ActivityCall {
  static Future<ApiCallResponse> call({
    String? urlDetail =
        'https://khlungcity.go.th/public/list/data/jsonlistdata/menu/1559/',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'activity',
      apiUrl: '${urlDetail}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      cache: false,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].texteditor_id''',
        true,
      );
  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$[:].topicName''',
        true,
      );
  static dynamic detail(dynamic response) => getJsonField(
        response,
        r'''$[:].urlDetail''',
        true,
      );
  static dynamic pic(dynamic response) => getJsonField(
        response,
        r'''$[:].pic''',
        true,
      );
}

class HistoryCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'history',
      apiUrl:
          'https://khlungcity.go.th/public/list/data/jsondatacatdetail/menu/1142/tablemoduleid/1759',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      cache: false,
    );
  }

  static dynamic detail(dynamic response) => getJsonField(
        response,
        r'''$.texteditor[:].upload_form_data_text''',
      );
}

class TravelCall {
  static Future<ApiCallResponse> call({
    String? urlDetail =
        'https://khlungcity.go.th/public/list/data/jsonlistdata/menu/1173/',
    String? pic = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'travel',
      apiUrl:
          'https://khlungcity.go.th/public/list/data/jsonlistdata/menu/1173/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      cache: false,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].texteditor_id''',
        true,
      );
  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$[:].topicName''',
        true,
      );
  static dynamic detail(dynamic response) => getJsonField(
        response,
        r'''$[:].urlDetail''',
        true,
      );
  static dynamic pic(dynamic response) => getJsonField(
        response,
        r'''$[:].pic''',
      );
}

class NewsCall {
  static Future<ApiCallResponse> call({
    String? urlDetail =
        'https://khlungcity.go.th/public/list/data/jsonlistdata/menu/1554/',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'news',
      apiUrl:
          'https://khlungcity.go.th/public/list/data/jsonlistdata/menu/1554/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      cache: false,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].texteditor_id''',
        true,
      );
  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$[:].topicName''',
        true,
      );
  static dynamic detail(dynamic response) => getJsonField(
        response,
        r'''$[:].urlDetail''',
        true,
      );
  static dynamic pic(dynamic response) => getJsonField(
        response,
        r'''$[:].pic''',
        true,
      );
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
