import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:nagad_ui/data/getx_controller/bottom_nav_controller.dart';
import 'package:nagad_ui/data/getx_controller/const/assets_path.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  @override
  Widget build(BuildContext context) {
    BottomNavController bottomNavController = Get.put(BottomNavController());
    return SafeArea(
      child: Obx(
        () {
          return Scaffold(
            body: bottomNavController
                .bottomNavScreen[bottomNavController.selectedIndex.value],
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  border: Border.all(color: const Color(0xFFEEEEEE))),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                child: BottomNavigationBar(
                  selectedItemColor: Colors.red, // Color when active
                  unselectedItemColor: Colors.grey, // Color when inactive
                  selectedLabelStyle:
                      TextStyle(fontWeight: FontWeight.bold), // Optional
                  unselectedLabelStyle:
                      TextStyle(fontWeight: FontWeight.normal),
                  type: BottomNavigationBarType.fixed,
                  currentIndex: bottomNavController.selectedIndex.value,
                  onTap: (int index) {
                    bottomNavController.bottomNavigatorTap(index);
                  },
                  items: [
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                          bottomNavController.selectedIndex.value == 0
                              ? homeSelectedSVG
                              : homeUnSelectedSVG),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                          bottomNavController.selectedIndex.value == 1
                              ? transactionSelectedSVG
                              : transactionUnSelectedSVG),
                      label: 'Transaction',
                    ),
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        bottomNavController.selectedIndex.value == 2
                            ? peopleSelectedSVG
                            : peopleUnSelectedSVG,
                      ),
                      label: 'People',
                    ),
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        bottomNavController.selectedIndex.value == 3
                            ? myNagadSelectedSVG
                            : myNagadUnSelectedSVG,
                      ),
                      label: 'People',
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
