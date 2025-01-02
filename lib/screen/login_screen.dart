import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nagad_ui/screen/auth/login_registration_text_field.dart';
import 'package:nagad_ui/submit_bottom/submit_bottom.dart';
import 'package:nagad_ui/widget/const.dart';

import '../widget/language_change_togle.dart';

class WelcomeWidget extends StatefulWidget {
  const WelcomeWidget({super.key});

  @override
  State<WelcomeWidget> createState() => _WelcomeWidgetState();
}

class _WelcomeWidgetState extends State<WelcomeWidget> {
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
                  child: LanguageChangeTogle(),
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
                    LoginAndRegistrationTextField(),
                  ],
                ),

               SubmitBottom(
                 onPressed: () {
                   if (kDebugMode) {
                     print("Submit button pressed");
                   }
                 },
               ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

