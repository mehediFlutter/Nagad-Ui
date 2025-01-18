import 'package:get/get.dart';
import 'package:nagad_ui/data/getx_controller/model/network_response.dart';
import 'package:nagad_ui/data/network_caller/network_caller.dart';

class DemoHttpController extends GetxController {
  NetworkCaller networkCaller = NetworkCaller();
  RxBool isLoading = false.obs;
  RxList<dynamic>? getData = [].obs;

  Future<void> fetchData(String url) async {
    isLoading.value = true;
    NetworkResponse response = await networkCaller.getRequest(url);
    if (response.isSuccess) {
      getData?.value = response.body ?? [];
      print("Get Data : $getData");
      isLoading.value = false;
    }
    isLoading.value = false;
  }

  Future<void> login(String url,Map<String, dynamic> body) async {
    isLoading.value = true;
    NetworkResponse response = await networkCaller.postRequest(
        url,
        body);
        print("stacus code is : ${response.statusCode}");
        print(response.body);
        if(response.isSuccess){
          print("Login success");
          print(response.body);
        }
  }
}
