import 'package:acosdemega/responsive.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../app_theme.dart';
import 'heading.dart';

class MyAppBar extends StatefulWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}
class _MyAppBarState extends State<MyAppBar> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Responsive.isMobile(context)
              ? Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                        icon: Icon(
                          Icons.menu,
                          color: Colors.black,
                        )),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Acosdemega Technology",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.aBeeZee(
                            fontSize: 22, fontWeight: FontWeight.w800),
                      ),
                    )
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/logo.png",
                        fit: BoxFit.cover,
                        width: 100,
                        height: 100,
                        color: Colors.black),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Acosdemega Technology",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.aBeeZee(
                            fontSize: 24, fontWeight: FontWeight.w800),
                      ),
                    )
                  ],
                ),
          Responsive.isMobile(context)
              ? SizedBox(
                  width: 0.1,
                )
              : Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FloatingActionButton.extended(
                        elevation: 0,
                        onPressed: () {
                          _launchURL();
                        },
                        label: Text(
                          'Call +91-8527404034',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    )
                  ],
                ),
        ],
      ),
    );
  }
  void _launchURL() async {
    if (!await launch("tel:8527404034")) throw 'Could not launch';
  }
}


