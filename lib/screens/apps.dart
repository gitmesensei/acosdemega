import 'package:acosdemega/models/apps_model.dart';
import 'package:acosdemega/widgets/app_card.dart';
import 'package:flutter/material.dart';

import '../app_theme.dart';
import '../responsive.dart';
import '../widgets/heading.dart';

class Apps extends StatefulWidget {
  @override
  State<Apps> createState() => _AppsState();
}

class _AppsState extends State<Apps> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: kDefaultPadding),
        Align(
            alignment: Alignment.topLeft,
            child: Heading(
                title: " | Apps",
                alignText: TextAlign.start,
                size: Responsive.isMobile(context)?24: 30,
                color: Colors.black)),
        SizedBox(height: kDefaultPadding),
        Container(
          height: 410,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              appsModels.length,
              (index) => Padding(
                padding: const EdgeInsets.all(10.0),
                child: AppCard(index: index),
              ),
            ),
          ),
        ),
        SizedBox(height: kDefaultPadding,)
      ],
    );
  }
}
