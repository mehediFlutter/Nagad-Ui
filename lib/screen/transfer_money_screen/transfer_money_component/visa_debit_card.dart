import 'package:flutter/material.dart';
import 'package:nagad_ui/data/getx_controller/const/const.dart';

import '../../../data/getx_controller/const/assets_path.dart';

class VisaDebitCard extends StatelessWidget {
  const VisaDebitCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
     borderRadius: BorderRadius.circular(12),
     elevation: 2,
      child: Container(
       margin: EdgeInsets.only(left: 15),
       height: 80,
       width: double.infinity,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(12)
       ),
       child: Row( 
         children: [
           Image.asset(visaPNG),
           width30,
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text("Visa Debit Card".toUpperCase(),style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.grey),),
               Text("Debit Card".toUpperCase(),style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.grey),)
             ],
           ),
         ],
       ),
      ),
    );
  }
}