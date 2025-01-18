import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nagad_ui/data/getx_controller/const/assets_path.dart';
import 'package:nagad_ui/data/getx_controller/const/const.dart';
import 'package:nagad_ui/screen/widgets/app_bar/custom_app_bar.dart';

import '../re_usable_base_screen.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  @override
  Widget build(BuildContext context) {
    return ReUsableBaseScreen(
      child: Column(
        children: [
          CustomAppBar(title: 'Transaction'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Column(
              children: [
                Card(
                  elevation: 5,
                  child: Container(
                    margin: EdgeInsetsDirectional.symmetric(horizontal: 20),
                    height: 70,
                    width: double.infinity,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(arrowBackSVG),
                        Text(
                          "November 2022",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        SvgPicture.asset(arrowForwardSVG),
                      ],
                    ),
                  ),
                ),
                TabBar(tabs: [
                  Tab(icon: Icon(Icons.directions_car), text: 'Car'),
                  Tab(icon: Icon(Icons.directions_bike), text: 'Bike'),
                  Tab(icon: Icon(Icons.directions_bus), text: 'Bus'),
                ])
              ],
            ),
          ),
        ],
      ),
    );
  }
}
