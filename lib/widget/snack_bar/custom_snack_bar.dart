import 'package:flutter/material.dart';

class CustomSnackBar {
  static show(BuildContext context, String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text),

        behavior: SnackBarBehavior.floating, 
        elevation: 0, 
      ),
    );
  }
}
