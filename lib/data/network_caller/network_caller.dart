import 'dart:convert';
import 'package:nagad_ui/data/getx_controller/model/network_response.dart';
import 'package:http/http.dart' as http;

class NetworkCaller {
  // Get
  Future getRequest(String url) async {
    try {
      var response = await http.get(
        Uri.parse(url),
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
            isSuccess: false, statusCode: response.statusCode, body: null);
      }
    } catch (e) {
      print(e.toString());
    }
    return NetworkResponse(isSuccess: false, statusCode: -1, body: null);
  }

  // Post

  Future<NetworkResponse> postRequest(
      String url, Map<String, dynamic> body) async {
    try {
      var response = await http.post(
        Uri.parse(url),
        headers: {},
        body: jsonEncode(body),
      );
      if (response.statusCode == 200) {
        return NetworkResponse(
            isSuccess: true,
            statusCode: response.statusCode,
            body: jsonDecode(response.body));
      }
      else{
         return NetworkResponse(
            isSuccess: false,
            statusCode: response.statusCode,
            body: jsonDecode(response.body));

      }
    } catch (e) {
      print(e.toString());
      return NetworkResponse(
        isSuccess: false,
        statusCode: -1,
        body: [
          {"error": e.toString()}
        ],
      );
    }
  }
}
