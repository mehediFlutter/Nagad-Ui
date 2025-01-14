import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nagad_ui/theme/theme.dart';
import '../screen/nagad_home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Nagad UI',
      theme: AppTheme.lightTheme,
    
    
      

      home: NagadHomeScreen(),
    );
  }
}
