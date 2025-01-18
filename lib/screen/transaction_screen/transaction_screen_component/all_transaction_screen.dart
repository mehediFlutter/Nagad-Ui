import 'package:flutter/material.dart';
import 'package:nagad_ui/data/getx_controller/const/const.dart';
import 'package:nagad_ui/screen/re_usable_base_screen.dart';

import 'transaction_item.dart';

class AllTransactionScreen extends StatefulWidget {
  const AllTransactionScreen({super.key});

  @override
  State<AllTransactionScreen> createState() => _AllTransactionScreenState();
}

class _AllTransactionScreenState extends State<AllTransactionScreen> {
  @override
  Widget build(BuildContext context) {
    return ReUsableBaseScreen(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Column(
        children: [
          TransactionItem(
            amount: 510,
            paymentType: 'Bill Pay',
            isReceived: false,
          ),
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
          TransactionItem(
            amount: 2000,
            paymentType: 'Payment',
            isReceived: false,
          ),
        ],
      ),
    ));
  }
}


