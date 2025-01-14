import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nagad_ui/screen/home_screen/home_screen.dart';
import 'package:nagad_ui/screen/my_nagad_screen/my_nagad_screen.dart';
import 'package:nagad_ui/screen/people_screen/people_screen.dart';
import 'package:nagad_ui/screen/transaction_screen/transaction_screen.dart';

class BottomNavController extends GetxController {
  RxList<Widget> bottomNavScreen = <Widget>[
    HomeScreen(),
    TransactionScreen(),
    PeopleScreen(),
    MyNagadScreen()
  ].obs;
}
