import 'package:flutter/material.dart';


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
      child: Container(
        height: 500,
        width: double.infinity,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
