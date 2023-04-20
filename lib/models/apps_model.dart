import 'package:flutter/material.dart';

class AppsModel {
  final String name, about, userPic;
  final int id;
  final Color color;

  AppsModel({required this.name, required this.about, required this.userPic, required this.id, required this.color});
}

// List of demo AppsModels
List<AppsModel> appsModels = [
  AppsModel(
    id: 1,
    name: "Bellhop",
    about: "Travel, Stay & Experience",
    userPic: "assets/apps/bellhop_logo.png",
    color: Color(0xff5CE1E6),
  ),
  AppsModel(
    id: 2,
    name: "Cabiee",
    about: "Get Your Cab On The GO!",
    userPic: "assets/apps/cabiee_logo.png",
    color: Color(0xFFFFCB2E),
  ),
  AppsModel(
    id: 3,
    name: "Food Mania",
    about: "Eat, Eat & Rep-Eat",
    userPic: "assets/apps/foodmania_logo.png",
    color:Colors.pink.shade100,
  ),
  AppsModel(
    id: 4,
    name: "E-Mall",
    about: "Shopping nevers stops",
    userPic: "assets/apps/emall_logo.png",
    color:Color(0xFF89CFF0),
  ),
];
