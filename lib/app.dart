import 'package:flutter/material.dart';
import 'package:shopping_test/core/utils/theme_manager.dart';
import 'package:shopping_test/screens/get_started/get_started_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeManager.appTheme,
        home:
        const GetStartedScreen(),
    );
  }
}
