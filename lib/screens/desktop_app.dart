import 'package:acosdemega/responsive.dart';
import 'package:acosdemega/widgets/download.dart';
import 'package:acosdemega/widgets/heading.dart';
import 'package:acosdemega/widgets/links.dart';
import 'package:flutter/material.dart';

import '../app_theme.dart';

class DesktopApp extends StatefulWidget {
  const DesktopApp({Key? key}) : super(key: key);

  @override
  _DesktopAppState createState() => _DesktopAppState();
}

class _DesktopAppState extends State<DesktopApp> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
  return  Container(
    width: size.width,
    color: Colors.white,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
              alignment: Alignment.topLeft,
              child: Heading(
                  title: " | Desktop Apps",
                  alignText: TextAlign.start,
                  size: Responsive.isMobile(context)?24: 30,
                  color: Colors.black)),
        ),
        Center(
          child: Responsive.isMobile(context)?Column(
            children: [

              Align(
                alignment:Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: AspectRatio(
                    aspectRatio: 13/8,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(image:AssetImage('assets/images/desktop.jpg'),fit: BoxFit.fill)
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20,left: 10,right: 10,),
                child: Align(
                  alignment:Alignment.bottomCenter ,
                  child: Container(
                    width: 400,
                    height: 200,
                    child: Column(
                      children: [
                        Center(child: Text('Medical Records +',textAlign:TextAlign.center,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:24),)),
                        SizedBox(height: 10,),
                        Text('Keep your patients data secure with our secure, locally stored database. Sort out patients details up to 35 filters.',
                          style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w500,fontSize: 20,),textAlign:TextAlign.center,),


                      ],
                    ),
                  ),
                ),
              ),
            ],
          ):Padding(
            padding: const EdgeInsets.only(top: 40,bottom: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                    width: size.width/3,
                    height: size.height/2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(child: Text('Medical Record Plus ',textAlign:TextAlign.center,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:28),)),
                        SizedBox(height: 10,),
                        Text('Book Cab with easy and understandable UI. With Quick buttons for Home and Work. Slide up to find recent places you travelled to.',
                          style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w500,fontSize:20,),textAlign:TextAlign.center,),

                      ],
                    ),
                  ),
                ),
                Container(
                  width: size.width/2,
                  height: size.height/2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          blurRadius: 4,
                        )
                      ],
                      image: DecorationImage(image:AssetImage('assets/images/desktop.jpg'),fit: BoxFit.fill)
                  ),
                ),

              ],
            ),
          )
        ),
      ],
    ),
  );
  }
}
