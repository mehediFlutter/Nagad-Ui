import 'package:flutter/material.dart';

class CardTypeAndCardNumber extends StatelessWidget {
  const CardTypeAndCardNumber({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
       borderRadius: BorderRadius.circular(12),
      child: Container(
        height: 80,
        width: double.infinity,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Visa Debit",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text("Card Type",style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.red),)
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "1547854234",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text("Card Number",style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.red),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
