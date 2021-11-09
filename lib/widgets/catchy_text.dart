import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class CatchyText extends StatelessWidget {
  const CatchyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 150,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(width: 20.0, height: 100.0),
          const Text(
            'Truly',
            style: TextStyle(fontSize: 43.0,
            fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 20.0, height: 100.0),
          AnimatedTextKit(
            repeatForever: true,
            animatedTexts: [
              RotateAnimatedText('UNIQUE',textStyle:TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
                fontFamily: 'Horizon',
              )),
              RotateAnimatedText('MODERN',textStyle: TextStyle(
                fontSize: 50.0,
                color: Colors.amberAccent,
                fontWeight: FontWeight.bold,
                fontFamily: 'Horizon',
              )),
              RotateAnimatedText('BEST',textStyle: TextStyle(
                fontSize: 50.0,
                color: Colors.purpleAccent,
                fontWeight: FontWeight.bold,
                fontFamily: 'Horizon',
              )),
            ],
            onTap: () {
              print("Tap Event");
            },
          ),
        ],
      ),
    );
  }
}
