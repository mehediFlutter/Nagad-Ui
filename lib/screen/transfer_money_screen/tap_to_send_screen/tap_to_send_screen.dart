import 'package:flutter/material.dart';
import 'package:nagad_ui/data/getx_controller/const/const.dart';
import 'package:nagad_ui/screen/re_usable_base_screen.dart';

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
        Column(
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
                                Text("500 Tk.",style: Theme.of(context).textTheme.titleLarge,),
                                Text("Amount",style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.red),),
                              ],
                            ),
                            Text("5 Tk",style: Theme.of(context).textTheme.titleLarge,),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Divider(),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Taka"),
                            Text("5 Tk"),
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
            )
          ],
        ),
      ],
    ));
  }
}

class SummaryItem extends StatelessWidget {
  final String title;
  final String value;

  const SummaryItem({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            value,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
