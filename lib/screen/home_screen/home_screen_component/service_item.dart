import 'package:flutter/material.dart';

class ServicesItem extends StatelessWidget {
  final String imagePath;
  final String serviceName;
  final Function() onTap;
  const ServicesItem({
    super.key,
    required this.imagePath,
    required this.serviceName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.all(13),
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(17)),
            child: Image.asset(imagePath),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SizedBox(
            width: size.width / 5.6,
            child: Text(
              serviceName,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Color(0XFF6E6E6E),
                  ),
            ),
          ),
        )
      ],
    );
  }
}
