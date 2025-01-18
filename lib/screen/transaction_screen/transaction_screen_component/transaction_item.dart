import 'package:flutter/material.dart';

import '../../../data/getx_controller/const/const.dart';

class TransactionItem extends StatelessWidget {
  final int amount;
  final bool isReceived;
  final String paymentType;
  const TransactionItem({
    super.key,
    required this.amount,
    required this.isReceived,
    required this.paymentType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            isReceived
                ? Icon(
                    Icons.arrow_forward,
                    color: Colors.green,
                  )
                : Icon(
                    Icons.arrow_back,
                    color: Colors.red,
                  ),
            width10,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  paymentType,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  'DESCO Postpaid',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Colors.grey, fontSize: 11),
                ),
              ],
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'ট $amount',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: isReceived? Colors.green: Colors.red, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Today, 08:40 AM',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Colors.grey, fontSize: 11),
                ),
              ],
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10,left:35),
          child: Divider(
            color: Color(0xFFA3A3A3),
          ),
        )
      ],
    );
  }
}