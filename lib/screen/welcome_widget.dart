import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
                    Expanded(
                      child: TextFormField(
                        style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFD0D5DD)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
