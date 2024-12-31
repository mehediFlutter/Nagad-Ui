import 'package:flutter/material.dart';
import 'package:nagad_ui/screen/welcome_widget.dart';

class NagadHomeScreen extends StatefulWidget {
  const NagadHomeScreen({super.key});

  @override
  State<NagadHomeScreen> createState() => _NagadHomeScreenState();
}

class _NagadHomeScreenState extends State<NagadHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return WelcomeWidget();
  }
}