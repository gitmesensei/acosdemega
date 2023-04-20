import 'package:acosdemega/screens/company_screen.dart';
import 'package:acosdemega/screens/website.dart';
import 'package:acosdemega/responsive.dart';
import 'package:acosdemega/screens/apps.dart';
import 'package:acosdemega/screens/services.dart';
import 'package:acosdemega/screens/description.dart';
import 'package:acosdemega/screens/introduction.dart';
import 'package:acosdemega/widgets/app_bar.dart';
import 'package:acosdemega/widgets/app_drawer.dart';
import 'package:acosdemega/widgets/heading.dart';
import 'package:acosdemega/widgets/product_appbar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'desktop_app.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            toolbarHeight: 80,
            elevation: 0,
            automaticallyImplyLeading: false,
            backgroundColor: Theme.of(context).primaryColor,
            title: MyAppBar()),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              ProductBar(),
              Introduction(),
              SizedBox(
                height: 10,
              ),
              Description(),
              SizedBox(
                height: 10,
              ),
              Apps(),
              SizedBox(
                height: 10,
              ),
              Website(),
              SizedBox(
                height: 10,
              ),
              DesktopApp(),
              SizedBox(
                height: 10,
              ),
             Responsive.isMobile(context)? Container(
                  color: Colors.white,
                  width: double.infinity,
                  padding: EdgeInsets.all(18),
                  child: Heading(
                      title: "Our Services",
                      alignText: TextAlign.center,
                      size: 24,
                      color: Colors.black)):SizedBox(
               height: 10,
             ),
              Achievements(),
              CompanyPage()
            ],
          ),
        ),
        floatingActionButton: Responsive.isMobile(context)
            ? Container(
                child: FloatingActionButton(
                  backgroundColor: Colors.green,
                onPressed: () {
                    _launchURL();
                },
                child: Icon(Icons.call),
              ))
            : null,
        drawer: Responsive.isMobile(context)
            ? Drawer(
                child: AppDrawer(),
              )
            : null);
  }
  void _launchURL() async {
    if (!await launch("tel:8527404034")) throw 'Could not launch';
  }
}
