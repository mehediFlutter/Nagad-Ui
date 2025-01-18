import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nagad_ui/screen/bottom_nav_base_screen/bottom_nav_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  splashMethod() async {
    await Future.delayed(Duration(seconds: 3));
    if (mounted) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => BottomNavScreen()),
          (route) => false);
    }
  }

  @override
  void initState() {
    super.initState();
    splashMethod();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.redAccent,
        body: Center(
          child: SvgPicture.asset('assets/images/splash_screen_nagad.svg'),
        ),
      ),
    );
  }
}
