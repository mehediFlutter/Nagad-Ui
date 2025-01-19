import 'package:flutter/material.dart';
import 'package:nagad_ui/screen/re_usable_base_screen.dart';

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
        Text("Transfer Money Screen")
      ],
    ));
  }
}