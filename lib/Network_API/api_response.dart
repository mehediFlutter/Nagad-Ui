class ApiResponse {
  final bool isSuccess;
  final int statusCode;
  final dynamic body;

 ApiResponse({
  required this.isSuccess,
  required this.statusCode,
   this.body
 });
}
