import 'package:flutter/material.dart';
import 'package:nagad_ui/screen/re_usable_base_screen.dart';

import 'transaction_item.dart';

class OutTransactionScreen extends StatefulWidget {
  const OutTransactionScreen({super.key});

  @override
  State<OutTransactionScreen> createState() => _OutTransactionScreenState();
}

class _OutTransactionScreenState extends State<OutTransactionScreen> {
  @override
  Widget build(BuildContext context) {
    return ReUsableBaseScreen(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
        child: Column(
          children: [
            TransactionItem(
            amount: 510,
            paymentType: 'Bill Pay',
            isReceived: false,
          ), TransactionItem(
            amount: 2000,
            paymentType: 'Payment',
            isReceived: false,
          ),
          ],
        ),
      ),
    );
  }
}
