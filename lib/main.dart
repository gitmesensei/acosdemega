import 'package:acosdemega/screens/home_screen.dart';
import 'package:acosdemega/screens/mobile_screen.dart';
import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';

import 'app_theme.dart';

void main() {
  runApp(EasyDynamicThemeWidget(
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Acosdemega Technology',
      theme: lightThemeData,
      darkTheme: darkThemeData,
      debugShowCheckedModeBanner: false,
      themeMode: EasyDynamicTheme.of(context).themeMode,
      home:HomeScreen(),
    );
  }
}

