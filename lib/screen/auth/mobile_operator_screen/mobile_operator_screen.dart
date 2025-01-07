import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nagad_ui/widget/const.dart';

class MobileOperatorScreen extends StatefulWidget {
  const MobileOperatorScreen({super.key});

  @override
  State<MobileOperatorScreen> createState() => _MobileOperatorScreenState();
}

class _MobileOperatorScreenState extends State<MobileOperatorScreen> {
  bool isChecked = false;
  List<String> mobileOperators = [
    'Teletalk',
    'Grameenphone',
    'Robi',
    'Airtel',
    'Banglalink'
  ];
    int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/images/mobile_operator.svg'),
                height10,
                height10,
                Text(
                  "Mobile Operator",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontSize: 25),
                ),
                height10,
                Text(
                  "Select your current mobile network operator",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.grey),
                ),
                height20,
                Expanded(
                  child: Center(
                    child: ListView.builder(
                      itemCount: mobileOperators.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                       if (kDebugMode) {
                         print(selectedIndex);
                       }
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                width30,
                                Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Theme.of(context).primaryColor),
                                  color: selectedIndex == index
                                      ? Theme.of(context).primaryColor
                                      : null,
                                   ),
                                    child:selectedIndex==index? Icon(Icons.check,
                                        color: Colors.white, size: 15):null),
                                width10,
                                Text(
                                  mobileOperators[index],
                                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                      color: selectedIndex == index
                                          ? Theme.of(context).primaryColor
                                          : Colors.black,fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
