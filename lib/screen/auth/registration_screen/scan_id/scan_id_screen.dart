import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nagad_ui/screen/widgets/app_bar/custom_app_bar.dart';
import 'package:nagad_ui/screen/auth/registration_screen/scan_id/scan_camera.dart';
import 'package:nagad_ui/screen/auth/registration_screen/scan_id/scan_id_line.dart';

import '../../../../submit_bottom/submit_bottom.dart';
import '../../../../data/getx_controller/const/const.dart';

class ScanIdScreen extends StatefulWidget {
  const ScanIdScreen({super.key});

  @override
  State<ScanIdScreen> createState() => _ScanIdScreenState();
}

class _ScanIdScreenState extends State<ScanIdScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: CustomAppBar(title: 'Scan ID'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            height50,
            Text(
              "National ID",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontSize: 22),
            ),
            height5,
            Text(
              "Scan the front side of NID card with camera",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: Colors.grey),
            ),
            height15,
            Stack(
              children: [
                Container(
                    margin: EdgeInsets.all(20),
                    height: 183,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFF3F3F3)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              color: Color(0xFFE5E5E5)),
                        ),
                        height25,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SvgPicture.asset('assets/images/scan_person.svg'),
                            Column(
                              children: [
                                ScanIdLine(width: 106),
                                height15,
                                ScanIdLine(width: 106),
                                height15,
                                ScanIdLine(width: 106),
                                height15,
                                ScanIdLine(width: 106),
                              ],
                            )
                          ],
                        )
                      ],
                    )),
                ScanCamera(),
              ],
            ),
           height15,
            Text(
              "Scan the back side of NID card with camera",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: Colors.grey),
            ),
            height25,

            // scan back side of nid card
            Stack(
              children: [
                Container(
                  height: 183,
                  width: double.infinity,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFF3F3F3),
                  ),
                  child: Column(
                    children: [
                      height10,
                      Container(
                        height: 38,
                        width: double.infinity,
                        color: scanContainerItem,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              height15,
                              ScanIdLine(width: 125),
                              height15,
                              ScanIdLine(width: 106),
                              height15,
                              ScanIdLine(width: 115),
                              height15,
                              ScanIdLine(width: 80),
                              height15,
                            ],
                          ),
                          SvgPicture.asset('assets/images/scan_person.svg',width: 50,),
                        ],
                      )
                    ],
                  ),
                ),
            ScanCamera(),
              ],
            ),

          Expanded(child: SizedBox()),
            SubmitBottom(
              isWidthInfinity: true,
              isEnable: true,
              onPressed: () {
         
              },
              text: "NEXT",
            ),
            height10,
          ],
        ),
      ),
    ));
  }
}
