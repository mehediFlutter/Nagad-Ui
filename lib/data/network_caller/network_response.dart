class NetworkResponse {
  final bool isSuccess;
  final int statusCode;
  final  body;

  NetworkResponse(
      {required this.isSuccess, required this.statusCode, required this.body});
}
