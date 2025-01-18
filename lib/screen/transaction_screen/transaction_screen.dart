import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nagad_ui/data/getx_controller/const/assets_path.dart';
import 'package:nagad_ui/data/getx_controller/const/const.dart';
import 'package:nagad_ui/screen/transaction_screen/transaction_screen_component/all_transaction_screen.dart';
import 'package:nagad_ui/screen/transaction_screen/transaction_screen_component/in_transaction_screen.dart';
import 'package:nagad_ui/screen/transaction_screen/transaction_screen_component/out_transaction_screen.dart';
import 'package:nagad_ui/screen/widgets/app_bar/custom_app_bar.dart';

import '../re_usable_base_screen.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> with SingleTickerProviderStateMixin {
  
    late TabController _tabController;
      @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }


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
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12)),
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
                height10,
                TabBar(
                   controller: _tabController,
                    dividerColor: Colors.transparent,
                    indicatorColor: Colors.red,
                    labelColor: Colors.red,
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: [
                      Tab(text: 'ALL'),
                      Tab(text: 'IN'),
                      Tab(text: 'OUT'),
                    ]),
                SizedBox(
                  height: 400,
                  width: double.infinity,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                    AllTransactionScreen(),
                    InTransactionScreen(),
                    OutTransactionScreen()
                  ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
