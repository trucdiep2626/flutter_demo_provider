import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

class ApiClient {
  static String url = 'https://api.vietqr.io/v2/banks';


  // String get header
  static Future<dynamic> getRequest() async {
    final uri = Uri.parse(url);
    final result = await http
        .get(
      uri,
    )
        .then(_handleResponse)
        .catchError(_handleError);

    return result['data'];
  }


  static dynamic _handleError(onError) {
    log(onError);
    if (onError is TimeoutException)
    {
      log('timeout');
    }
  }

  static dynamic _handleResponse(http.Response response) {
    log(response.request.toString());
    final statusCode = response.statusCode;
    switch (statusCode) {
      case 200:
        return json.decode(response.body);
      default:
        log('Error occured with code:  $statusCode');
    }
  }
}