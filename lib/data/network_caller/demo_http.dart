import 'package:get/get.dart';
import 'package:nagad_ui/data/network_caller/network_response.dart';
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
      isLoading.value = false;
    }
    isLoading.value = false;
  }


}
