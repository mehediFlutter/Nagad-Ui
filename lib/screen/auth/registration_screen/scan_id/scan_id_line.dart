import 'package:flutter/material.dart';

class ScanIdLine extends StatelessWidget {
  final double width;
  const ScanIdLine({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 8,
      decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
    );
  }
}
