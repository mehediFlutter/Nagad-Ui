import 'package:flutter/material.dart';

class SubmitBottom extends StatelessWidget {
  final Function onPressed;
  const SubmitBottom({super.key, required this.onPressed});

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
        child: Center(child: Text("Submit")),
      ),
    );
  }
}
