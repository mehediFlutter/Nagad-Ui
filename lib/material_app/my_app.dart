import 'package:flutter/material.dart';
import 'package:nagad_ui/theme/theme.dart';
import '../screen/nagad_home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nagad UI',
      theme: AppTheme.lightTheme,
    
    
      
      // theme: ThemeData(
        
        
      //   primarySwatch:
      //       MaterialColor(AppColors.primaryColor.value, AppColors().color),
      //   useMaterial3: true,
      // ),
      home: NagadHomeScreen(),
    );
  }
}
