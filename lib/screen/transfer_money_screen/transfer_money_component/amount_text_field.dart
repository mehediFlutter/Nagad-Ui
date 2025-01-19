import 'package:flutter/material.dart';

import '../../../data/getx_controller/const/const.dart';

class AmountTextField extends StatelessWidget {
  const AmountTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
         children: [
           Padding(
             padding: const EdgeInsets.only(top: 10),
             child: Text(
               "ট",
               style: Theme.of(context)
                   .textTheme
                   .titleLarge!
                   .copyWith(color: Colors.red),
             ),
           ),
           width20,
           Expanded(
             child: TextField(
               cursorColor: Colors.black,
               style: Theme.of(context).textTheme.titleLarge,
               keyboardType: TextInputType.number,
               decoration: InputDecoration(
                   border: UnderlineInputBorder(
                       borderSide: BorderSide(color: Colors.black)),
                   focusedBorder: UnderlineInputBorder(
                       borderSide: BorderSide(color: Colors.black))),
             ),
           )
         ],
       );
  }
}
