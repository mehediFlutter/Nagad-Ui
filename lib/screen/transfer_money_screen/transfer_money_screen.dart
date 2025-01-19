import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nagad_ui/data/getx_controller/amount_text_field_controller.dart';
import 'package:nagad_ui/data/getx_controller/const/const.dart';
import 'package:nagad_ui/screen/re_usable_base_screen.dart';
import 'package:nagad_ui/screen/widgets/app_bar/custom_app_bar.dart';
import '../../submit_bottom/submit_bottom.dart';
import 'transfer_money_component/amount_text_field.dart';
import 'transfer_money_component/card_type_card_number.dart';
import 'transfer_money_component/visa_debit_card.dart';

class TransferMoneyScreen extends StatefulWidget {
  const TransferMoneyScreen({super.key});

  @override
  State<TransferMoneyScreen> createState() => _TransferMoneyScreenState();
}

class _TransferMoneyScreenState extends State<TransferMoneyScreen> {
  // TextEditingController amountController = TextEditingController();
  AmountTextFieldController amountTextField =
      Get.put(AmountTextFieldController());
  final GlobalKey<FormState> formKey = GlobalKey();
  bool isButtonEnabled = false;
  @override
  void initState() {
    // amountController.addListener(() {
    //   setState(() {
    //     isButtonEnabled = amountController.text.isNotEmpty;
    //   });
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ReUsableBaseScreen(
        child: Column(
      children: [
        CustomAppBar(title: 'Transfer Money'),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                height20,
                VisaDebitCard(),
                height20,
                CardTypeAndCardNumber(),
                height20,
                Text(
                  "Amount",
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Colors.grey),
                ),
                AmountTextField(
                  amountController: amountTextField.amountController,
                ),
                height20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Available Balance :  ",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "1000.65 Tk.",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.w900, fontSize: 18),
                    ),
                  ],
                ),
                height20,
                Align(
                  alignment: Alignment.center,
                  child: Obx(() {
                    return SubmitBottom(
                      isEnable: amountTextField.isEnableButton.value,
                      onPressed: () {
                        if (!formKey.currentState!.validate()) {
                          return;
                        }
                        if (kDebugMode) {
                          print("Submit button pressed");
                        }
                      },
                      text: "Next".toUpperCase(),
                    );
                  }),
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
