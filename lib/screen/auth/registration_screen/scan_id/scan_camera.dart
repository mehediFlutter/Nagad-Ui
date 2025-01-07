import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ScanCamera extends StatelessWidget {
  const ScanCamera({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 30,
      child: Container(
        padding: EdgeInsets.all(10),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            shape: BoxShape.circle),
            child: SvgPicture.asset('assets/icons/camera.svg'),
      ),
    );
  }
}
