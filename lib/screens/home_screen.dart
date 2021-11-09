import 'package:acosdemega/responsive.dart';
import 'package:acosdemega/screens/description.dart';
import 'package:acosdemega/screens/introduction.dart';
import 'package:acosdemega/widgets/app_bar.dart';
import 'package:acosdemega/widgets/app_drawer.dart';
import 'package:acosdemega/widgets/product_appbar.dart';
import 'package:acosdemega/widgets/subtitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool _tapped = false;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor:Theme.of(context).primaryColor,
        title:MyAppBar()
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            ProductBar(),
            Introduction(),
            SizedBox(height: 10,),
            Description(),
            SizedBox(height: 10,),



          ],
        ),
      ), floatingActionButton:Responsive.isMobile(context)? Container(
        child: FloatingActionButton.extended(
          onPressed: (){
          },
          label: Text("Book Appointment"),
        icon: Icon(Icons.edit),)
      ):null,
      drawer: Responsive.isMobile(context)? Drawer(
        child: AppDrawer(),
      ):null
    );
  }
}
