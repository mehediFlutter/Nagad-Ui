import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nagad_ui/data/getx_controller/const/assets_path.dart';
import 'package:nagad_ui/data/getx_controller/const/const.dart';

import '../re_usable_base_screen.dart';
import 'my_nagad_component/account_general_item.dart';

class MyNagadScreen extends StatefulWidget {
  const MyNagadScreen({super.key});

  @override
  State<MyNagadScreen> createState() => _MyNagadScreenState();
}

class _MyNagadScreenState extends State<MyNagadScreen> {
  @override
  Widget build(BuildContext context) {
    return ReUsableBaseScreen(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: 150,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                height20,
                Text("My Nagad",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: Colors.white, fontSize: 18)),
                height20,
                Row(
                  children: [
                    Image.asset(profilePNG),
                    width20,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mehedi Hassan',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          "01639-483485",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(color: Colors.white, fontSize: 12),
                        )
                      ],
                    ),
                    Spacer(),
                    SvgPicture.asset(editSVG)
                  ],
                )
              ],
            ),
          ),
          height20,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "General",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.grey),
                ),
                AccountGeneralItem(
                  imagePath: languagePNG,
                  text: 'Language',
                  isText: true,
                  trailingText: "English",
                ),
                AccountGeneralItem(
                  imagePath: accountTypePNG,
                  text: 'Account Type',
                  isText: true,
                  trailingText: "Regular",
                ),
                AccountGeneralItem(
                  imagePath: profitPNG,
                  text: 'I Want Profit',
                  isText: true,
                  trailingText: "ON",
                ),
                AccountGeneralItem(
                  imagePath: changePinPNG,
                  text: 'Change PIN',
                ),
                AccountGeneralItem(
                  imagePath: towerPNG,
                  text: 'Change Mobile Operator',
                ),
                AccountGeneralItem(
                  imagePath: reSubmitKycPNG,
                  text: 'Re-Submit KYC',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
