import 'package:flutter/material.dart';
import 'package:nagad_ui/material_app/material_color.dart';
import '../screen/nagad_home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nagad UI',
      theme: ThemeData(
        primaryColor: MaterialColor(AppColors.primaryColor.value, AppColors().color),
        primarySwatch:
            MaterialColor(AppColors.primaryColor.value, AppColors().color),
        useMaterial3: true,
      ),
      home: NagadHomeScreen(),
    );
  }
}
