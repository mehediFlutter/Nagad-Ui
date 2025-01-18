import 'package:flutter/material.dart';
import 'package:nagad_ui/screen/re_usable_base_screen.dart';

import 'transaction_item.dart';

class InTransactionScreen extends StatefulWidget {
  const InTransactionScreen({super.key});

  @override
  State<InTransactionScreen> createState() => _InTransactionScreenState();
}

class _InTransactionScreenState extends State<InTransactionScreen> {
  @override
  Widget build(BuildContext context) {
    return ReUsableBaseScreen(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Column(
          children: [
            TransactionItem(
            amount: 3000,
            paymentType: 'Bill Payment Free',
            isReceived: true,
          ),
          TransactionItem(
            amount: 3000,
            paymentType: 'Card to Nagad',
            isReceived: true,
          ),
          TransactionItem(
            amount: 2000,
            paymentType: 'Received',
            isReceived: true,
          ),
          ],
        ),
      ),
    );
  }
}
