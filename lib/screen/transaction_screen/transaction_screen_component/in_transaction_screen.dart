import 'package:flutter/material.dart';

class InTransactionScreen extends StatefulWidget {
  const InTransactionScreen({super.key});

  @override
  State<InTransactionScreen> createState() => _InTransactionScreenState();
}

class _InTransactionScreenState extends State<InTransactionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("IN Transaction"),
    );
  }
}