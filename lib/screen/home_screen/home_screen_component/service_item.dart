import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ServicesItem extends StatelessWidget {
  final String imagePath;
  final String serviceName;
  const ServicesItem({
    super.key,
    required this.imagePath,
    required this.serviceName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(13),
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(17)),
          child: SvgPicture.asset(imagePath),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            serviceName,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Color(0XFF6E6E6E),
                ),
          ),
        )
      ],
    );
  }
}
