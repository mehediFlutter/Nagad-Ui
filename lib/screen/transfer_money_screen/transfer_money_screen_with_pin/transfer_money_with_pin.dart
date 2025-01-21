import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nagad_ui/data/getx_controller/const/assets_path.dart';
import 'package:nagad_ui/screen/re_usable_base_screen.dart';
import 'package:nagad_ui/submit_bottom/submit_bottom.dart';

import '../../../data/getx_controller/const/const.dart';
import '../../../data/getx_controller/transfer_pin_controller.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../tap_to_send_screen/tap_to_send_screen.dart';
import '../transfer_money_component/card_type_card_number.dart';
import '../transfer_money_component/visa_debit_card.dart';
import 'pin_text_field.dart';

class TransferMoneyWithPin extends StatefulWidget {
  const TransferMoneyWithPin({super.key});

  @override
  State<TransferMoneyWithPin> createState() => _TransferMoneyWithPinState();
}

class _TransferMoneyWithPinState extends State<TransferMoneyWithPin> {
  GlobalKey<FormState> formKey = GlobalKey();
  TransferPinController transferMoneyWithPin = Get.put(TransferPinController());
  @override
  Widget build(BuildContext context) {
    return ReUsableBaseScreen(
      child: Column(
        children: [
          CustomAppBar(title: 'Transfer Money'),
          height20,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  VisaDebitCard(),
                  height15,
                  CardTypeAndCardNumber(
                    visaDebitOrAmount: '500 Tk.',
                    cardTypeOrAmount: 'Amount',
                    cardNumberOrCharge: '5 Tk.',
                    cardNumberOrTaka: 'Charge',
                  ),
                  height20,
                  Row(
                    children: [
                      Image.asset(lockPNG),
                      width10,
                      TransferTextFieldWithPinTextField(
                        pinController: transferMoneyWithPin.pinController,
                      ),
                    ],
                  ),
                  height20,
                  Obx(() {
                    return SubmitBottom(
                        isEnable: transferMoneyWithPin.isBottomEnable.value,
                        onPressed: () {
                          if(!formKey.currentState!.validate()){
                            return;
                          }
                           Get.to(TapToSendScreen());
                        },
                        text: "Next".toUpperCase());
                  })
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
