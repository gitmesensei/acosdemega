import 'package:acosdemega/responsive.dart';
import 'package:acosdemega/widgets/download.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Description extends StatefulWidget {
  const Description({Key? key}) : super(key: key);

  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: Column(
        children: [
          SizedBox(height:Responsive.isMobile(context)?20: 50,),
          Responsive.isMobile(context)?Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Image.asset('assets/gifs/hello.gif',width: 200,height: 200,),
              ),

              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text('"Founded in 2018, Acosdemega Technology is a combination of power packed team with varied experience in different technologies such as Flutter, JavaScript, Angular, Database, AI & many more. "',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.pangolin(fontSize: 26,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                      wordSpacing: 2,
                      fontStyle: FontStyle.italic),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('To know more.', style: GoogleFonts.actor(fontSize: 20,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w400,
                      color: Colors.pinkAccent,
                      wordSpacing: 2,
                      fontStyle: FontStyle.italic),),
                  DownLoad("Download Brochure"),
                ],
              ),
              SizedBox(height: 15,),

            ],
          ):Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text('" Founded in 2018, Acosdemega Technology is a combination of power packed team with varied experience in different technologies such as Flutter, JavaScript, Angular, Database, AI & many more. "',
                      textAlign: TextAlign.center,
                      softWrap: true,
                      style: GoogleFonts.pangolin(fontSize: 26,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1,
                          wordSpacing: 2,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Image.asset('assets/gifs/hello.gif',width: 250,height: 250,),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('To know more.', style: GoogleFonts.actor(fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.pinkAccent,
                      letterSpacing: 1,
                      wordSpacing: 2,
                      fontStyle: FontStyle.italic),),
                  DownLoad("Download Brochure"),
                ],
              )
            ],
          ),
          SizedBox(height:Responsive.isMobile(context)?20: 50,),
        ],
      ),
    );
  }
}
