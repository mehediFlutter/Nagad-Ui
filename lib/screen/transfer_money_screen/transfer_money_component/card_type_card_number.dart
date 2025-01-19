import 'package:flutter/material.dart';

class CardTypeAndCardNumber extends StatelessWidget {
  final String visaDebitOrAmount;
  final String cardTypeOrAmount;
  final String cardNumberOrTaka;
  final String cardNumberOrCharge;
  const CardTypeAndCardNumber({
    super.key,
    required this.visaDebitOrAmount,
    required this.cardTypeOrAmount,
    required this.cardNumberOrTaka,
    required this.cardNumberOrCharge,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  visaDebitOrAmount,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  cardTypeOrAmount,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.red),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  cardNumberOrTaka,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                cardNumberOrCharge,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.red),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
