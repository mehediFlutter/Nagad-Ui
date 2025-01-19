import 'package:flutter/material.dart';
import 'package:nagad_ui/data/getx_controller/const/assets_path.dart';
import 'package:nagad_ui/screen/re_usable_base_screen.dart';

import '../../../data/getx_controller/const/const.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../transfer_money_component/card_type_card_number.dart';
import '../transfer_money_component/visa_debit_card.dart';
import 'pin_text_field.dart';

class TransferMoneyWithPin extends StatefulWidget {
  const TransferMoneyWithPin({super.key});

  @override
  State<TransferMoneyWithPin> createState() => _TransferMoneyWithPinState();
}

class _TransferMoneyWithPinState extends State<TransferMoneyWithPin> {
  TextEditingController pinController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ReUsableBaseScreen(
      child: Column(
        children: [
          CustomAppBar(title: 'Transfer Money'),
          height20,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
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
                      pinController: pinController,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
