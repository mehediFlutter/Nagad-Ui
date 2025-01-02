import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nagad_ui/screen/auth/login_screen/login_registration_text_field.dart';
import 'package:nagad_ui/submit_bottom/submit_bottom.dart';
import 'package:nagad_ui/widget/const.dart';

import '../../../widget/language_change_togle.dart';
import '../registration_screen/registration_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                Align(
                  alignment: Alignment.topRight,
                  child: LanguageChangeToggle(),
                ),
                SvgPicture.asset('assets/images/nagad.svg'),
                height10,
                Text(
                  "Welcome",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/telephone_1.svg',
                    ),
                    width10,
                    LoginAndRegistrationTextField(
                        controller: phoneNumberController,
                        labelText: "Phone Number"),
                  ],
                ),
                height10,
                height10,
                height10,
                SubmitBottom(
                  onPressed: () {
                    if (kDebugMode) {
                      print("Submit button pressed");
                    }
                  },
                  text: "Submit",
                ),
                height10,
                height10,
                Text("No registered yet?",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: const Color.fromARGB(255, 105, 102, 102))),
                height5,
                InkWell(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(context,
                          MaterialPageRoute(builder: (context) {
                        return RegistrationScreen();
                      }), (route) => false);
                    },
                    child: Text("Register Now",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
