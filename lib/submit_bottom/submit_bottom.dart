import 'package:flutter/material.dart';

class SubmitBottom extends StatelessWidget {
  final Function onPressed;
  final String text;
  const SubmitBottom({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("Print Submit button pressed");
      },
      child: Container(
        width: 240,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Theme.of(context).primaryColor),
        ),
        child: Center(child: Text(text)),
      ),
    );
  }
}
