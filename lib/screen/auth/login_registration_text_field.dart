import 'package:flutter/material.dart';

class LoginAndRegistrationTextField extends StatelessWidget {
  const LoginAndRegistrationTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
        style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          border: UnderlineInputBorder(
            borderSide: BorderSide(
                color: Theme.of(context).primaryColor),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFD0D5DD)),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: Theme.of(context).primaryColor),
          ),
        ),
      ),
    );
  }
}
