import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nagad_ui/app_bar/custom_app_bar.dart';
import 'package:nagad_ui/screen/auth/registration_screen/scan_id/scan_id_line.dart';

import '../../../../widget/const.dart';

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
                  .bodySmall!
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.person,
                              size: 120,
                              color: scanContainerItem,
                            ),
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
          ],
        ),
      ),
    ));
  }
}

class ScanCamera extends StatelessWidget {
  const ScanCamera({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 30,
      child: Container(
        padding: EdgeInsets.all(10),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            shape: BoxShape.circle),
            child: SvgPicture.asset('assets/icons/camera.svg'),
      ),
    );
  }
}
