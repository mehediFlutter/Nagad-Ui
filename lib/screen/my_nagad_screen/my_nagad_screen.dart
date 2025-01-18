import 'package:flutter/material.dart';

import '../re_usable_base_screen.dart';

class MyNagadScreen extends StatefulWidget {
  const MyNagadScreen({super.key});

  @override
  State<MyNagadScreen> createState() => _MyNagadScreenState();
}

class _MyNagadScreenState extends State<MyNagadScreen> {
  @override
  Widget build(BuildContext context) {
    return ReUsableBaseScreen(
      child: Column(
        children: [Text("My Nagad Screen")],
      ),
    );
  }
}