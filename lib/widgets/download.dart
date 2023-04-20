import 'dart:html' as html;
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class DownLoad extends StatefulWidget {
  String s;
  DownLoad(this.s, {Key? key}) : super(key: key);

  @override
  State<DownLoad> createState() => _DownLoadState();
}

class _DownLoadState extends State<DownLoad> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          onPressed: () async {
            html.window.open("assets/images/acosdemega_flier.png", "text");
          },
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "assets/social/download.png",
                  width: 30,
                  height: 30,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  widget.s,
                  style: TextStyle(color: Colors.white, fontSize: 12),
                )
              ],
            ),
          )),
    );
  }
}
