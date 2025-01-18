import 'package:flutter/material.dart';
import 'package:nagad_ui/screen/re_usable_base_screen.dart';

class SaveUddoktaScreen extends StatefulWidget {
  const SaveUddoktaScreen({super.key});

  @override
  State<SaveUddoktaScreen> createState() => _SaveUddoktaScreenState();
}

class _SaveUddoktaScreenState extends State<SaveUddoktaScreen> {
  @override
  Widget build(BuildContext context) {
    return ReUsableBaseScreen(child: Column(
      children: [
        Center(child: Text("Save Uddokta Screen"),)
      ],
    ));
  }
}