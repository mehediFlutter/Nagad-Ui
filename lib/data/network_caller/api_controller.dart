import 'package:get/get.dart';
import 'package:nagad_ui/Network_API/network_caller.dart';
import 'package:nagad_ui/data/getx_controller/model/network_response.dart';

class ApiController extends GetxController {
  NetworkCaller networkCaller = NetworkCaller();
  RxBool isLoading = false.obs;
  RxList? data = [].obs;

  Future<void> fetchData(String url) async {
    isLoading.value = true;
    NetworkResponse response = await networkCaller.getRequest(url);
    if (response.isSuccess) {
      data?.value = response.body;
      isLoading.value = false;
      print(data);
    }
    isLoading.value = false;
  }
}
