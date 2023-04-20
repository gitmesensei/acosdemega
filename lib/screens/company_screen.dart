import 'package:acosdemega/responsive.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';


class CompanyPage extends StatefulWidget {
  @override
  _CompanyPageState createState() => _CompanyPageState();
}

class _CompanyPageState extends State<CompanyPage> {
  Color textColor = Colors.grey;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return   Container(
      width: size.width,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Acosdemega Technology",
                textAlign: TextAlign.left,
                style: GoogleFonts.aBeeZee(
                  color: Colors.white,
                    fontSize: 24, fontWeight: FontWeight.w800),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Divider(height: 0.3, color: Colors.white,),
          ),

          Container(
            width:size.width,
            height: 400,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 150,
                  height: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25,top: 16),
                        child: Text('Follow',
                          style: TextStyle(
                              color: Colors.white,
                            fontSize: 18
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25,top: 10),
                        child: HoverButton(
                          onpressed: () {  },
                          hoverTextColor: Colors.white,
                          textColor: Colors.grey,
                          child:Text('Facebook',style: TextStyle(
                            fontSize: 16
                              ),),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 25,top: 10),
                        child: HoverButton(
                          onpressed: () {  },
                          hoverTextColor: Colors.white,
                          textColor: Colors.grey,
                          child:Text('Twitter',style: TextStyle(
                              fontSize: 16
                          ),),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 25,top: 10),
                        child: HoverButton(
                          onpressed: () {  },
                          hoverTextColor: Colors.white,
                          textColor: Colors.grey,
                          child:Text('Instagram',style: TextStyle(
                              fontSize: 16
                          ),),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 25,top: 10),
                        child: HoverButton(
                          onpressed: () {  },
                          hoverTextColor: Colors.white,
                          textColor: Colors.grey,
                          child:Text('LinkedIn',style: TextStyle(
                              fontSize: 16
                          ),),
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(width: 50,),
                Container(
                  width: 150,
                  height: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25,top: 16),
                        child: Text('Company',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25,top: 10),
                        child: HoverButton(
                          onpressed: () {  },
                          hoverTextColor: Colors.white,
                          textColor: Colors.grey,
                          child:Text('About',style: TextStyle(
                              fontSize: 16
                          ),),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 25,top: 10),
                        child: HoverButton(
                          onpressed: () {  },
                          hoverTextColor: Colors.white,
                          textColor: Colors.grey,
                          child:Text('Terms',style: TextStyle(
                              fontSize: 16
                          ),),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 25,top: 10),
                        child: HoverButton(
                          onpressed: () {  },
                          hoverTextColor: Colors.white,
                          textColor: Colors.grey,
                          child:Text('Privacy',style: TextStyle(
                              fontSize: 16
                          ),),
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 50,bottom: 0),
            alignment: Alignment.bottomLeft,
            child: Text('© 2021 Acosdemega Technology',
              style: TextStyle(
                fontSize: 18,
                color:Colors.grey,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 0,bottom: 40),
            child: Divider(height: 0.3, color: Colors.white,),
          ),



        ],
      ),
    );
  }
}
