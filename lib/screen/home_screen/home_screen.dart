import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:nagad_ui/data/getx_controller/const/const.dart';
import 'package:nagad_ui/data/getx_controller/demo_http.dart';
import 'package:nagad_ui/data/getx_controller/model/network_response.dart';
import 'package:nagad_ui/data/network_caller/api_controller.dart';
import 'package:nagad_ui/data/network_caller/network_caller.dart';
import 'package:nagad_ui/screen/re_usable_base_screen.dart';
import 'package:nagad_ui/screen/transfer_money_screen/transfer_money_screen.dart';

import '../../data/getx_controller/const/assets_path.dart';
import 'home_screen_component/service_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DemoHttpController demoHttpController = Get.put(DemoHttpController());
  NetworkCaller networkCaller = NetworkCaller();
  ApiController apiController = Get.put(ApiController());

  List? myData = [];

  fetchData() async {
    NetworkResponse response = await networkCaller.getRequest(
        "");
   
    myData = response.body;
    if (mounted) {
      setState(() {});
    }
  }

  @override
  void initState() {
    print("Init state");
     fetchData();

    // demoHttpController.fetchData(
    //     );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("Get Data : $myData");
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
                                          color:
                                              Theme.of(context).primaryColor),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
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
                      height10,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ServicesItem(
                            imagePath: cashOutPNG,
                            serviceName: 'Cash Out',
                            onTap: () {},
                          ),
                          ServicesItem(
                            imagePath: rechargePNG,
                            serviceName: 'Money Recharge',
                            onTap: () {},
                          ),
                          ServicesItem(
                            imagePath: addMoneyPNG,
                            serviceName: 'Add Money',
                            onTap: () {},
                          ),
                        ],
                      ),
                      height10,
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ServicesItem(
                              imagePath: transferPNG,
                              serviceName: 'Transfer Money',
                              onTap: () {
                                Get.to(TransferMoneyScreen());
                              }),
                          ServicesItem(
                            imagePath: insurancePNG,
                            serviceName: 'Insurance',
                            onTap: () {},
                          ),
                          ServicesItem(
                            imagePath: nagodMelaPNG,
                            serviceName: 'Nagad Mela',
                            onTap: () {},
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ServicesItem(
                            imagePath: merchantPayPNG,
                            serviceName: 'Merchant Pay',
                            onTap: () {},
                          ),
                          ServicesItem(
                            imagePath: billPayPNG,
                            serviceName: 'Bill Pay',
                            onTap: () {},
                          ),
                          ServicesItem(
                            imagePath: emiPaymentPNG,
                            serviceName: 'EMI Payment',
                            onTap: () {},
                          ),
                          ServicesItem(
                            imagePath: donationPNG,
                            serviceName: 'Donation',
                            onTap: () {},
                          ),
                        ],
                      ),
                      height20,
                      SizedBox(
                        width: double.infinity,
                        child: Image.asset(
                          tamimImagePNG,
                          fit: BoxFit
                              .cover, // Ensures the image covers the full width
                        ),
                      ),
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
