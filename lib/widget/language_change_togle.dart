import 'package:flutter/material.dart';

class LanguageChangeToggle extends StatelessWidget {
  const LanguageChangeToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 25,
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).primaryColor),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(child: Container(
           child: Center(child: Text("বাং",style: TextStyle(color: Color(0xFFAFAFAF),fontSize: 11),)),
          )),
          Expanded(
            child: Container(
              height: 25,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(
                    20,
                  ),
                ),
              ),
              child: Center(child: Text("ENG",style: TextStyle(color: Colors.white,fontSize: 11),)),
            ),
          ),
        ],
      ),
    );
  }
}
