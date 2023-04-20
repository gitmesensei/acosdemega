import 'package:acosdemega/widgets/heading.dart';
import 'package:acosdemega/widgets/links.dart';
import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../models/apps_model.dart';


class AppCard extends StatefulWidget {
  const AppCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  _FeedbackCardState createState() => _FeedbackCardState();
}

class _FeedbackCardState extends State<AppCard> {
  Duration duration = Duration(milliseconds: 200);
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      hoverColor: Colors.transparent,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: duration,
        margin: EdgeInsets.only(top: kDefaultPadding * 3),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: appsModels[widget.index].color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Transform.translate(
              offset: Offset(0, -55),
              child: AnimatedContainer(
                duration: duration,
                height: 130,
                width: 140,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 10),
                  boxShadow: [if (!isHover) kDefaultCardShadow],
                  image: DecorationImage(
                    image: AssetImage(appsModels[widget.index].userPic),
                  ),
                ),
              ),
            ),
           Heading(title: appsModels[widget.index].name, alignText: TextAlign.center, size: 30, color: Colors.black),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(appsModels[widget.index].about,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),),
            ),
            SocialLinks(),
            SizedBox(height: kDefaultPadding ),

          ],
        ),
      ),
    );
  }
}
