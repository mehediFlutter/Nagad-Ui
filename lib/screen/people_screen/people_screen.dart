import 'package:flutter/material.dart';

import '../re_usable_base_screen.dart';

class PeopleScreen extends StatefulWidget {
  const PeopleScreen({super.key});

  @override
  State<PeopleScreen> createState() => _PeopleScreenState();
}

class _PeopleScreenState extends State<PeopleScreen> {
  @override
   Widget build(BuildContext context) {
    return ReUsableBaseScreen(
      child: Column(
        children: [Text("People Screen")],
      ),
    );
  }
}