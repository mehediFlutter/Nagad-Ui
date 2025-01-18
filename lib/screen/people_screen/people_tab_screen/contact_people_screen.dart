import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nagad_ui/data/getx_controller/const/const.dart';
import 'package:nagad_ui/screen/re_usable_base_screen.dart';

import '../../../data/getx_controller/const/assets_path.dart';

class ContactPeopleScreen extends StatefulWidget {
  const ContactPeopleScreen({super.key});

  @override
  State<ContactPeopleScreen> createState() => _ContactPeopleScreenState();
}

class _ContactPeopleScreenState extends State<ContactPeopleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
          return ContactItem();
        },));
  }
}

class ContactItem extends StatelessWidget {
  const ContactItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 2),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(personIconSVG),
              width20,
              Text(
                "Abir Ahmed",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.grey),
              ),
              Spacer(),
              SvgPicture.asset(arrowForwardSVG),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 55,top: 5),
            child: Divider(),
          ),
        ],
      ),
    );
  }
}
