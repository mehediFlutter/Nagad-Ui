import 'package:flutter/material.dart';
import 'package:nagad_ui/data/getx_controller/const/const.dart';
import 'package:nagad_ui/screen/re_usable_base_screen.dart';

import '../../../data/getx_controller/const/assets_path.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../transfer_money_component/visa_debit_card.dart';

class TapToSendScreen extends StatefulWidget {
  const TapToSendScreen({super.key});

  @override
  State<TapToSendScreen> createState() => _TapToSendScreenState();
}

class _TapToSendScreenState extends State<TapToSendScreen> {
  @override
  Widget build(BuildContext context) {
    return ReUsableBaseScreen(
      child: Column(
        children: [
          CustomAppBar(title: 'Transfer Money'),
          height20,
          Padding(
   padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),            child: Column(
              children: [
                height20,
                VisaDebitCard(),
                height20,
                Material(
                  elevation: 3,
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    height: 177,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(12)),
                    child: Stack(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "500 Tk.",
                                      style:
                                          Theme.of(context).textTheme.titleLarge,
                                    ),
                                    Text(
                                      "Amount",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              color: Colors.red, fontSize: 14),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "5 Tk.",
                                      style:
                                          Theme.of(context).textTheme.titleLarge,
                                    ),
                                    Text(
                                      "Charge",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              color: Colors.red, fontSize: 14),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 30),
                              child: Divider(),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "505 Tk.",
                                      style:
                                          Theme.of(context).textTheme.titleLarge,
                                    ),
                                    Text(
                                      "Total",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              color: Colors.red, fontSize: 14),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "495 Tk.",
                                      style:
                                          Theme.of(context).textTheme.titleLarge,
                                    ),
                                    Text(
                                      "New Balance",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              color: Colors.red, fontSize: 14),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Center(
                          child: VerticalDivider(
                            thickness: 1,
                            width: 20,
                            indent: 10,
                            endIndent: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                height20,
                Container(
                  padding: EdgeInsets.all(10),
                  height: 118,
                  width: 118,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0XFFEAEAEA),
                  ),
                  child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Image.asset(tabToSendPNG)),
                ),
               
               height10,
                Text(
                  "Tap and hold to confirm".toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.red, fontSize: 15),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
