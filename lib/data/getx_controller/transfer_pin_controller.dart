import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TransferPinController extends GetxController {
  final pinController = TextEditingController();
  RxBool isBottomEnable = false.obs;

  @override
  void onInit() {
    super.onInit();

    pinController.addListener(() {
      isBottomEnable.value = pinController.text.isNotEmpty;
    });
  }

  @override
  void onClose() {
    pinController.dispose();
    super.onClose();
  }
}
