import 'package:flutter/material.dart';
import 'package:nagad_ui/screen/re_usable_base_screen.dart';

class ContactPeople extends StatefulWidget {
  const ContactPeople({super.key});

  @override
  State<ContactPeople> createState() => _ContactPeopleState();
}

class _ContactPeopleState extends State<ContactPeople> {
  @override
  Widget build(BuildContext context) {
    return ReUsableBaseScreen(
        child: Center(
      child: Text("Contact"),
    ));
  }
}
