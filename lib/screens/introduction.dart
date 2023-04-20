import 'package:acosdemega/responsive.dart';
import 'package:acosdemega/widgets/catchy_text.dart';
import 'package:acosdemega/widgets/heading.dart';
import 'package:acosdemega/widgets/social_platform.dart';
import 'package:acosdemega/widgets/subtitle.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Introduction extends StatefulWidget {
  const Introduction({Key? key}) : super(key: key);

  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {

  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((e) => '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }


  void launchEmail(){
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'contact@acosdemega.com',
      query: encodeQueryParameters(<String, String>{
        'subject': 'Contacting for a new project'
      }),
    );
    launch(emailLaunchUri.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height:Responsive.isMobile(context)?20: 50,),
          Center(
            child: Responsive.isMobile(context)?Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Heading(title: "Your Digital Brand\nDelivered By Us.", alignText: TextAlign.left, size:Responsive.isMobile(context)?40: 50, color: Colors.black,),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: CatchyText(),
                ),
              ],
            ):Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Heading(title: "Your Digital Brand\nDelivered By Us.", alignText: TextAlign.left, size: 50, color: Colors.black,),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: CatchyText(),
                ),
              ],
            )
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        Subtitle(title: "Contact us for you dream project", alignText: TextAlign.center, size: 20),
                        TextButton(
                          onPressed:(){
                            launchEmail();
                          },
                          child:Center(
                            child: Text('contact@acosdemega.com',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color:Colors.redAccent
                              ),),
                          ),
                        ),
                      ],
                    ),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SocialPlatform(),
                        )),
                    SizedBox(height:Responsive.isMobile(context)?20: 50,),

                  ],
                )),


          ),
        ],
      ),
    );
  }
}
