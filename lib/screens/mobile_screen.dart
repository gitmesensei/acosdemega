import 'package:acosdemega/screens/home_screen.dart';
import 'package:acosdemega/widgets/messages.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({Key? key}) : super(key: key);

  @override
  _MobileScreenState createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen>  with TickerProviderStateMixin{

  late AnimationController _controller;
  late AnimationController _controller2;
  late Animation _animation3;


  Tween<double> _tween = Tween(begin: 0.95, end: 1);
  var tween2 = Tween(begin: Offset(0.0, -0.2), end: Offset.zero)
      .chain(CurveTween(curve: Curves.ease));
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: const Duration(milliseconds: 1000), vsync: this);
    _controller2 = AnimationController(duration: const Duration(milliseconds: 2000), vsync: this);
    _animation3 = Tween(begin: 0.0, end: 1.0).animate(_controller2);

  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    _controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.repeat(reverse: true);
    _controller2.forward();
    double _size = MediaQuery.of(context).size.height;
    DateTime now = DateTime.now();
    String _time = DateFormat('kk:mm').format(now);
    String _date = DateFormat('EEE d MMM').format(now);
    return Scaffold(
      body: Container(
        height: _size,
        decoration:BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/background.jpg"),fit: BoxFit.cover)
        ),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
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
                          child: AutoSizeText(_time,
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
                          child: AutoSizeText(_date,
                            style:  GoogleFonts.aBeeZee(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                        ),
                      ),
                      //messages

                      SlideTransition(
                          position: _animation3.drive(tween2),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Messages("Richard Howl","Hey, Let's Make an App","assets/images/1.png"),
                              Messages("Daniel Peters","I have a Great IDEA","assets/images/2.png"),
                              Messages("Rachel Adams","Launch our app","assets/images/3.png"),
                            ],
                          )),

                      ScaleTransition(
                        scale: _tween.animate(CurvedAnimation(parent: _controller, curve: Curves.bounceIn)),
                        child: GestureDetector(
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
