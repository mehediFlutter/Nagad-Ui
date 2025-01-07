import 'package:flutter/material.dart';

class SubmitBottom extends StatelessWidget {
  final Function onPressed;
  final String text;
  final bool? isEnable;
  const SubmitBottom(
      {super.key,
      required this.onPressed,
      required this.text,
      this.isEnable = false});

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
          color: isEnable! ? Theme.of(context).primaryColor :null,
        ),
        child: Center(
          child: Text(text,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: isEnable! ? Colors.white : Colors.black)),
        ),
      ),
    );
  }
}
