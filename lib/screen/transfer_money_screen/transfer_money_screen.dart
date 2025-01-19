import 'package:flutter/material.dart';
import 'package:nagad_ui/screen/re_usable_base_screen.dart';
import 'package:nagad_ui/screen/widgets/app_bar/custom_app_bar.dart';

class TransferMoneyScreen extends StatefulWidget {
  const TransferMoneyScreen({super.key});

  @override
  State<TransferMoneyScreen> createState() => _TransferMoneyScreenState();
}

class _TransferMoneyScreenState extends State<TransferMoneyScreen> {
  @override
  Widget build(BuildContext context) {
    return ReUsableBaseScreen(child: Column(
      children: [
        CustomAppBar(title: 'Transfer Money'),
       Padding(
         padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
         child: Column(
           children: [
             Material(
              borderRadius: BorderRadius.circular(12),
              elevation: 4,
               child: Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12)
                ),
               ),
             ),
           ],
         ),
       )
      ],
    ));
  }
}