import 'package:flutter/material.dart';

class SubmitBottom extends StatelessWidget {
  final Function onPressed;
  const SubmitBottom({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:240,
      height: 40,
      child: ElevatedButton(
        onPressed: onPressed(),
        child: Text("Submit"),
      ),
    );
  }
}