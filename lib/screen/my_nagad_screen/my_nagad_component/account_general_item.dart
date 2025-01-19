import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../data/getx_controller/const/assets_path.dart';
import '../../../data/getx_controller/const/const.dart';

class AccountGeneralItem extends StatelessWidget {
  final String text;
  final String imagePath;
  final bool isText;
  final String? trailingText;
  const AccountGeneralItem({
    super.key,
    required this.text,
    required this.imagePath,
    this.isText = false,
    this.trailingText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, top: 4),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(imagePath),
              width10,
              Text(
                text,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Spacer(),
              isText
                  ? Text(
                      trailingText ?? '',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: Colors.grey),
                    )
                  : SvgPicture.asset(arrowForwardSVG)
            ],
          ),
          height5,
          Divider()
        ],
      ),
    );
  }
}
