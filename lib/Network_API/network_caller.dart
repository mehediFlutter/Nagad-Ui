import 'dart:convert';

import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:nagad_ui/data/getx_controller/model/network_response.dart';

class NetworkCaller {
  // Get Request

  Future<NetworkResponse> getRequest(String url) async {
    try {
      Response response = await http.get(Uri.parse(url),
       headers: {
       
      },
      );
      if (response.statusCode == 200) {
        return NetworkResponse(
            isSuccess: true,
            statusCode: response.statusCode,
            body: jsonDecode(response.body));
      } else {
        return NetworkResponse(
            isSuccess: false,
            statusCode: response.statusCode,
            body: jsonDecode(response.body));
      }
    } catch (e) {
      print(e.toString());
    }
    return NetworkResponse(isSuccess: false, statusCode: -1, body: null);
  }
}
