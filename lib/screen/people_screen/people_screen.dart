import 'package:flutter/material.dart';
import 'package:nagad_ui/data/getx_controller/const/const.dart';

import '../re_usable_base_screen.dart';

class PeopleScreen extends StatefulWidget {
  const PeopleScreen({super.key});

  @override
  State<PeopleScreen> createState() => _PeopleScreenState();
}

class _PeopleScreenState extends State<PeopleScreen>
    with SingleTickerProviderStateMixin {
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
          Container(
            height: 130,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFFD7E49),
                  Color(0xFFFB7345),
                  Color(0xFFF6593D),
                  Color(0xFFF44E39),
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                height20,
                Text(
                  "People",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Colors.white),
                ),
                TabBar(
                    labelColor: Colors.white,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorColor: Colors.white,
                    unselectedLabelColor: const Color.fromARGB(255, 77, 75, 75),
                    dividerColor: Colors.transparent,
                    labelStyle: TextStyle(fontSize: 12),
                    controller: _tabController,
                    tabs: [
                      Tab(
                        text: 'Contact',
                      ),
                      Tab(text: 'SAVED UDDOKTA'),
Tab(
        child: Text(
          'SaveMerchant',
          textAlign: TextAlign.center,
          softWrap: true,
          maxLines: 2,
          style: TextStyle(fontSize: 12),
        ),
      ),
                    ])
              ],
            ),
          )
        ],
      ),
    );
  }
}
