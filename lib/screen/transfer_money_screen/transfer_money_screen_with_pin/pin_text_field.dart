import 'package:flutter/material.dart';

class TransferTextFieldWithPinTextField extends StatelessWidget {
  final TextEditingController pinController;
  const TransferTextFieldWithPinTextField({
    super.key, required this.pinController,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
        controller: pinController,
        keyboardType: TextInputType.number,
        cursorColor: Colors.black,
        style: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(fontSize: 25),
        obscureText: true,
        decoration: InputDecoration(
          border: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black)),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black)),
        ),
      ),
    );
  }
}
