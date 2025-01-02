import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nagad_ui/screen/auth/login_screen/login_screen.dart';
import 'package:nagad_ui/screen/auth/mobile_operator_screen/mobile_operator_screen.dart';

import '../../../submit_bottom/submit_bottom.dart';
import '../../../widget/const.dart';
import '../login_screen/login_registration_text_field.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  TextEditingController phoneNumberController = TextEditingController();
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
              height25,
              height25,
              SvgPicture.asset('assets/images/registration_nogod.svg'),
              height10,
              Text("Create an Account",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      )),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/telephone_1.svg',
                  ),
                  width10,
                  LoginAndRegistrationTextField(
                    controller: phoneNumberController,
                    labelText: "Phone Number",
                  ),
                ],
              ),
              height10,
              height10,
              height5,
              SubmitBottom(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MobileOperatorScreen()));
                },
                text: "NEXT",
              ),
              height10,
              height10,
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Theme.of(context).primaryColor,
                      thickness: 2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      "OR",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(context).primaryColor,
                          ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Theme.of(context).primaryColor,
                      thickness: 2,
                    ),
                  ),
                ],
              ),
              Center(
                  child: Text(
                "To register, please visit the uddokta point with yourmobile phone, a photo and NID copy",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Colors.grey,
                    ),
              )),
              height10,
              height10,
              SvgPicture.asset('assets/navigator_icon/store_locator.svg'),
              height10,
              Text("Tap Find Nearest Uddokta Point",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              Text("Have an Account?",
                  style: Theme.of(context).textTheme.bodyLarge),
              InkWell(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                      (route) => false);
                },
                child: Text(
                  "Login",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).primaryColor,
                      ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
