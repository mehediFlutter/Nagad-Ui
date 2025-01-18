import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nagad_ui/screen/home_screen/home_screen.dart';
import 'package:nagad_ui/screen/my_nagad_screen/my_nagad_screen.dart';
import 'package:nagad_ui/screen/people_screen/people_screen.dart';
import 'package:nagad_ui/screen/transaction_screen/transaction_screen.dart';

class BottomNavController extends GetxController {
  RxInt selectedIndex = 0.obs;
  RxList<Widget> bottomNavScreen = <Widget>[
    HomeScreen(),
    TransactionScreen(),
    PeopleScreen(),
    MyNagadScreen()
  ].obs;

  bottomNavigatorTap(int index) {
    selectedIndex.value = index;
  }
}
