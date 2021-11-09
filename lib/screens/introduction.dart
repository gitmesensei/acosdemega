import 'package:acosdemega/responsive.dart';
import 'package:acosdemega/widgets/catchy_text.dart';
import 'package:acosdemega/widgets/heading.dart';
import 'package:acosdemega/widgets/subtitle.dart';
import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';

class Introduction extends StatefulWidget {
  const Introduction({Key? key}) : super(key: key);

  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {


  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: Container(
        height: 500,
        width: double.infinity,
        color: Theme.of(context).primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Responsive.isDesktop(context)?Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Heading(title: "Your Digital Brand\nDelivered By Us.", alignText: TextAlign.left, size: 50,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: CatchyText(),
                  ),
                ],
              ):Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Heading(title: "Your Digital Brand\nDelivered By Us.", alignText: TextAlign.left, size:Responsive.isMobile(context)?40: 50,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: CatchyText(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      Subtitle(title: "Contact us for you dream project. ", alignText: TextAlign.center, size: 20),
                      TextButton(
                        onPressed:(){
                        },
                        child:Text(' Click here',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color:Colors.redAccent
                          ),),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
