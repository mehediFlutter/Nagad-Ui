import 'package:flutter/material.dart';
import 'package:nagad_ui/data/getx_controller/const/const.dart';
import 'package:nagad_ui/screen/re_usable_base_screen.dart';
import 'package:nagad_ui/screen/widgets/app_bar/custom_app_bar.dart';

import '../../data/getx_controller/const/assets_path.dart';
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
              Material(
                elevation: 2,
                 borderRadius: BorderRadius.circular(12),
                child: Container(
                  height: 80,
                  width: double.infinity,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Visa Debit",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          Text("Card Type",style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.red),)
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "1547854234",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          Text("Card Number",style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.red),)
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
