import 'package:flutter/material.dart';

class MobileOperatorScreen extends StatefulWidget {
  const MobileOperatorScreen({super.key});

  @override
  State<MobileOperatorScreen> createState() => _MobileOperatorScreenState();
}

class _MobileOperatorScreenState extends State<MobileOperatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text("Mobile Operator Screen"),
          ],
        ),
      ),
    );
  }
}