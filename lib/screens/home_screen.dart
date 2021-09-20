import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Material(
              elevation: 5,
              child: Container(
                height: 80,
                width: double.infinity,
                color: Theme.of(context).primaryColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/images/logo.png",
                          fit: BoxFit.cover,
                          width: 80,
                          height: 50,
                          color:EasyDynamicTheme.of(context).themeMode==ThemeMode.light ?Colors.black:Colors.white,
                        ),

                        Text('Acosdemega Technology',
                          textAlign: TextAlign.center,
                          style:  GoogleFonts.aBeeZee(
                              fontSize: 20,
                              fontWeight: FontWeight.w800
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextButton(
                            onPressed: null,
                            child: Text('Login',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              color:EasyDynamicTheme.of(context).themeMode==ThemeMode.light ?Colors.black:Colors.white,
                            ),),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextButton(
                            onPressed:(){
                              EasyDynamicTheme.of(context).changeTheme();
                            },
                            child: Text('Theme',
                              style: TextStyle(
                                color:EasyDynamicTheme.of(context).themeMode==ThemeMode.light ?Colors.black:Colors.white60,
                              ),),
                          ),
                        ),
                        SizedBox(width: 50,)
                      ],
                    ),

                  ],
                ),
              ),
            ),



          ],
        ),
      )
    );
  }
}
