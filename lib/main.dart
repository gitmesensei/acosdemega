
import 'package:acosdemega/responsive.dart';
import 'package:acosdemega/screens/home_screen.dart';
import 'package:acosdemega/screens/mobile_screen.dart';
import 'package:flutter/material.dart';

import 'app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Acosdemega Technology',
      theme: lightThemeData,
      debugShowCheckedModeBanner: false,
      home:MyHome()
    );
  }
}
class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive.isMobile(context)?MobileScreen():HomeScreen(),
    );
  }
}


