import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialLinks extends StatelessWidget {
  const SocialLinks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(onPressed: (){},
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  children: [
                    Image.asset("assets/social/apple.png",width: 30,height: 30,color: Colors.white,),
                    SizedBox(width: 5,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Get it on",style: TextStyle(color: Colors.white,fontSize: 10),),
                        Text("App Store",style: TextStyle(color: Colors.white,fontSize: 12),),

                      ],
                    )
                  ],
                ),
              )),
          SizedBox(width: 20,),
          ElevatedButton(onPressed: (){},
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  children: [
                    Image.asset("assets/social/googleplay.png",width: 30,height: 30,color: Colors.white,),
                    SizedBox(width: 5,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Get it on",style: TextStyle(color: Colors.white,fontSize: 10),),
                        Text("Google Play",style: TextStyle(color: Colors.white,fontSize: 12),),

                      ],
                    )
                  ],
                ),
              )),

        ],
      ),
    );
  }
}
