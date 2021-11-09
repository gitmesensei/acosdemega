import 'package:acosdemega/responsive.dart';
import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

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
                        icon: Icon(Icons.menu,
                          color: EasyDynamicTheme.of(context).themeMode==ThemeMode.dark?Colors.white:Colors.black,
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
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      fit: BoxFit.cover,
                      width: 80,
                      height: 80,
                      color: EasyDynamicTheme.of(context).themeMode ==
                              ThemeMode.light
                          ? Colors.black
                          : Colors.white,
                    ),
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
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Book Appointment',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FloatingActionButton.extended(
                        elevation: 0,
                        onPressed: () {
                          EasyDynamicTheme.of(context).changeTheme();
                        },
                        icon: Icon(
                          Icons.lightbulb_outline_rounded,
                        ),
                        label: Text(
                          'Theme',
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
}
