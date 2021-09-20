import 'package:acosdemega/screens/home_screen.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({Key? key}) : super(key: key);

  @override
  _MobileScreenState createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  @override
  Widget build(BuildContext context) {
    double _size = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration:BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/background.png"),fit: BoxFit.cover)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Make Your Digital Presence',
                textAlign: TextAlign.center,
                style:  GoogleFonts.aBeeZee(
                    fontSize: 28,
                    color: Colors.black,
                    fontWeight: FontWeight.w800
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Unlock Digital Potential',
                style:  GoogleFonts.aBeeZee(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w300
                ),
              ),
            ),
            Center(
              child: Container(
                height: _size*0.8,
                width: _size*0.5,
                decoration:BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/images/mobile.png"),fit: BoxFit.cover,
                    )
                ) ,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: AutoSizeText('12:00 am',
                          style:  GoogleFonts.aBeeZee(
                              fontSize: 28,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 140),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: AutoSizeText('12 Aug, Saturday',
                          style:  GoogleFonts.aBeeZee(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                      ),
                    ),

                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(_createRoute());
                      },
                      onVerticalDragEnd: (details){
                        if(details.primaryVelocity! < 0){
                          Navigator.of(context).push(_createRoute());
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 60),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.keyboard_arrow_up,size: 30,color: Colors.black,),
                              Padding(
                                padding: const EdgeInsets.only(top: 0),
                                child: AutoSizeText('Swipe up to unlock',
                                  style:  GoogleFonts.aBeeZee(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                    )

                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => HomeScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween =
        Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
