import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:nagad_ui/data/getx_controller/const/const.dart';
import 'package:nagad_ui/data/getx_controller/demo_http.dart';
import 'package:nagad_ui/screen/re_usable_base_screen.dart';

import '../../data/getx_controller/const/assets_path.dart';
import 'home_screen_component/service_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DemoHttpController demoHttpController = Get.put(DemoHttpController());

  @override
  void initState() {
    print("Init state");

    // demoHttpController.fetchData(
    //     );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ReUsableBaseScreen(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 200,
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
                child: Stack(
                  children: [
                    Positioned(
                      right: 0,
                      child: SvgPicture.asset(
                        backgroundManSVG,
                        colorFilter: ColorFilter.mode(
                            const Color.fromARGB(255, 238, 164, 164),
                            BlendMode.srcIn),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(nagadTextSVG),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: Text(
                              "Bill Gets",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(fontSize: 14, color: Colors.white),
                            ),
                          ),
                          Container(
                            padding:
                                EdgeInsets.only(bottom: 3, left: 4, right: 4),
                            height: 32,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SvgPicture.asset(homeSelectedSVG),
                                Text(
                                  "Tap for Balance",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Theme.of(context).primaryColor),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Service",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: Color(0xFF6E6E6E)),
                      ),
                      height20,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ServicesItem(
                            imagePath: sendMoneySVG,
                            serviceName: 'Cash Out',
                          ),
                          ServicesItem(
                            imagePath: rechargeSVG,
                            serviceName: 'Money Recharge',
                          ),
                          ServicesItem(
                            imagePath: addMoneySVG,
                            serviceName: 'Add Money',
                          ),
                        ],
                      ),
                      height20,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ServicesItem(
                            imagePath: transferSVG,
                            serviceName: 'Transfer Money',
                          ),
                          ServicesItem(
                            imagePath: insuranceSVG,
                            serviceName: 'Insurance',
                          ),
                          ServicesItem(
                            imagePath: nagodMelaSVG,
                            serviceName: 'Nagad Mela',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Payments",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: Color(0xFF6E6E6E)),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ServicesItem(
                            imagePath: merchantPaySVG,
                            serviceName: 'Merchant Pay',
                          ),
                          ServicesItem(
                            imagePath: billPaySVG,
                            serviceName: 'Bill Pay',
                          ),
                          ServicesItem(
                            imagePath: nagodMelaSVG,
                            serviceName: 'EMI Payment',
                          ),
                          ServicesItem(
                            imagePath: donationSVG,
                            serviceName: 'Donation',
                          ),
                        ],
                      ),
                      height20,
                   Image.asset(tamimImagePNG),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
