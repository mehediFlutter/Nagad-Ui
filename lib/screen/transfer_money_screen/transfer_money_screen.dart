import 'package:flutter/material.dart';
import 'package:nagad_ui/data/getx_controller/const/const.dart';
import 'package:nagad_ui/screen/re_usable_base_screen.dart';
import 'package:nagad_ui/screen/widgets/app_bar/custom_app_bar.dart';

import '../../data/getx_controller/const/assets_path.dart';
import 'transfer_money_component/card_type_card_number.dart';
import 'transfer_money_component/visa_debit_card.dart';

class TransferMoneyScreen extends StatefulWidget {
  const TransferMoneyScreen({super.key});

  @override
  State<TransferMoneyScreen> createState() => _TransferMoneyScreenState();
}

class _TransferMoneyScreenState extends State<TransferMoneyScreen> {
  @override
  Widget build(BuildContext context) {
    return ReUsableBaseScreen(
        child: Column(
      children: [
        CustomAppBar(title: 'Transfer Money'),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: Column(
            children: [
              VisaDebitCard(),
              height20,
              CardTypeAndCardNumber()
            ],
          ),
        )
      ],
    ));
  }
}

