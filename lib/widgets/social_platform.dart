import 'package:flutter/material.dart';


class SocialPlatform extends StatelessWidget {
  const SocialPlatform({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/social/facebook.png",width: 30,height: 30,),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/social/instagram.png",width: 30,height: 30,),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/social/twitter.png",width: 30,height: 30,),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/social/github.png",width: 30,height: 30,),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/social/googleplay.png",width: 30,height: 30,),
        ),


      ],
    );
  }
}
