import 'package:flutter/material.dart';
import 'package:nagad_ui/screen/re_usable_base_screen.dart';

class SaveMerchantScreen extends StatefulWidget {
  const SaveMerchantScreen({super.key});

  @override
  State<SaveMerchantScreen> createState() => _SaveMerchantScreenState();
}

class _SaveMerchantScreenState extends State<SaveMerchantScreen> {
  @override
  Widget build(BuildContext context) {
    return ReUsableBaseScreen(
        child: Column(
      children: [
        Center(
          child: Text("Save Merchant"),
        )
      ],
    ));
  }
}
