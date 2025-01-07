import 'package:flutter/material.dart';
import 'package:nagad_ui/app_bar/custom_app_bar.dart';

class AccountType extends StatelessWidget {
  const AccountType({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: CustomAppBar(title: 'Account Typee'),
    ));
  }
}