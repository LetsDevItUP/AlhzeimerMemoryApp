import 'dart:convert';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class RandomJokeCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Random Joke',
      apiUrl:
          'https://prod-239.westeurope.logic.azure.com:443/workflows/f72bbd99c523415688814c3c5b6a91b1/triggers/manual/paths/invoke?api-version=2016-06-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=nb0v2xGrDOdSVF2XvtBCnClK8rbU1aUUupBFduH3CFE',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      cache: false,
    );
  }

  static dynamic joke(dynamic response) => getJsonField(
        response,
        r'''$.joke''',
      );
}

class SaveMemoryCall {
  static Future<ApiCallResponse> call({
    String? title = '',
    String? base64 = '',
    String? description = '',
    String? date = '',
  }) {
    final body = '''
{
  "title": "${title}",
  "base64": "${base64}",
  "description": "${description}",
  "date": "${date}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Save Memory',
      apiUrl:
          'https://prod-247.westeurope.logic.azure.com:443/workflows/4f95b300ac4246a19c63e4f243fd862f/triggers/manual/paths/invoke?api-version=2016-06-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=64hp_M0R91jzMeLeKhxIqIvCVgEKCvvB3om0OYAtacE',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }
}

class GetMemoriesCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Memories',
      apiUrl:
          'https://prod-255.westeurope.logic.azure.com/workflows/bf03943a40c342d49f1edbe402a7778b/triggers/manual/paths/invoke?api-version=2016-06-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=xpNRNhto7ts4HcD1ZOWIoZAbxN9qjzUOEK7kvuBCVPM',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      cache: false,
    );
  }
}

class TextToSpeechCall {
  static Future<ApiCallResponse> call({
    String? text = 'Sample Text',
  }) {
    final body = '''
{
  "text": "${text}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Text To Speech',
      apiUrl:
          'https://prod-44.westeurope.logic.azure.com:443/workflows/d35f139806d24ce88fa88dccd5a4a9d2/triggers/manual/paths/invoke?api-version=2016-06-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=tp0S0dhNjgp4VKzo4KNeR7IldrfF87qoIsP_lmBIm70',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }
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
