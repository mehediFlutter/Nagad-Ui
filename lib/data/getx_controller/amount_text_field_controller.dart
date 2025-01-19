import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AmountTextFieldController extends GetxController {
  final amountController = TextEditingController(); // Non-observable
  RxBool isEnableButton = false.obs; // Observable button state

  @override
  void onInit() {
    super.onInit();
    // Listen for changes in the TextEditingController
    amountController.addListener(() {
      isEnableButton.value = amountController.text.isNotEmpty;
    });
  }

  @override
  void onClose() {
    // Dispose the TextEditingController to avoid memory leaks
    amountController.dispose();
    super.onClose();
  }
}