import 'package:acosdemega/responsive.dart';
import 'package:acosdemega/widgets/heading.dart';
import 'package:flutter/material.dart';

class Achievements extends StatefulWidget {
  const Achievements({Key? key}) : super(key: key);

  @override
  _AchievementsState createState() => _AchievementsState();
}

class _AchievementsState extends State<Achievements> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      height: screenSize.height*0.8,
      child: Row(
        children: [

         Responsive.isMobile(context)?SizedBox():Container(
            width: screenSize.width/3,
            color: Colors.white,
            child: Stack(
              children: [

                Container(
                  padding: const EdgeInsets.all(18.0),
                  color: Colors.cyan,
                  child: Align(
                      alignment: Alignment.topCenter,
                      child: Heading(title: "Our Services", alignText: TextAlign.center, size: 24, color: Colors.white)),
                ),

                Center(child: Image.asset("assets/images/work.png",fit: BoxFit.cover,))

              ],
            ),
          ),
        Container(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: Responsive.isMobile(context)?screenSize.width/2:screenSize.width/3,
                        height: screenSize.height/2,
                        color: Colors.greenAccent,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text("40+ projects",style: TextStyle(color: Colors.white,fontSize: 20),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text('wide range of projects\nfrom web to app.',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white,fontSize: 16),),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: Responsive.isMobile(context)?screenSize.width/2:screenSize.width/3,
                        height:screenSize.height/2 ,
                        color: Colors.pinkAccent,
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text("websites",style: TextStyle(color: Colors.white,fontSize: 20),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text('Dynamic design and responsive websites',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white,fontSize: 16),),
                            )
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width:Responsive.isMobile(context)?screenSize.width/2: screenSize.width/3,
                        height: screenSize.height/2,
                        color: Colors.deepPurpleAccent.shade200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text("Android Apps",style: TextStyle(color: Colors.white,fontSize: 20),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text('Android app that you love and work seamlessly',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white,fontSize: 16),),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width:Responsive.isMobile(context)?screenSize.width/2: screenSize.width/3,
                        height:screenSize.height/2 ,
                        color: Colors.orangeAccent,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text("IOS App",style: TextStyle(color: Colors.white,fontSize: 20),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text('Apple apps with best in industry design',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white,fontSize: 16),),
                            )
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.pinkAccent,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width:Responsive.isMobile(context)?screenSize.width/2: screenSize.width/3,
                        height: screenSize.height/2,
                        color: Colors.redAccent,
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text("Hybrid/Native Apps",style: TextStyle(color: Colors.white,fontSize: 20),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text('Apps that works on both ios and android without a hitch',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white,fontSize: 16),),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: Responsive.isMobile(context)?screenSize.width/2:screenSize.width/3,
                        height:screenSize.height/2 ,
                        color: Colors.blue,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text("Desktop App",style: TextStyle(color: Colors.white,fontSize: 20),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text('Easy access and more functions',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white,fontSize: 16),),
                            )
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        )
        ],
      ),
    );
  }
}
