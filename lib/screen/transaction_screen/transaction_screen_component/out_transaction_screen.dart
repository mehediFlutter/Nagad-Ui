import 'package:flutter/material.dart';

class OutTransactionScreen extends StatefulWidget {
  const OutTransactionScreen({super.key});

  @override
  State<OutTransactionScreen> createState() => _OutTransactionScreenState();
}

class _OutTransactionScreenState extends State<OutTransactionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("OUT Transaction"),
    );
  }
}