import 'package:flutter/material.dart';

class SubmitBottom extends StatelessWidget {
  final Function onPressed;
  final String text;
  const SubmitBottom({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      borderRadius:
          BorderRadius.circular(20), // Apply rounded corners for ripple effect
      splashColor: Theme.of(context)
          .primaryColor
          .withAlpha(77), // Optional: Customize ripple color
      child: Container(
        width: 240,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Theme.of(context).primaryColor),
        ),
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }
}
