import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            margin: EdgeInsets.only(bottom: 10, left: 5),
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 0),
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 2.0,
                                color:  Colors.black,
                                style: BorderStyle.solid),
                          ),
                          child: Center(
                            child: Image.asset(
                              "assets/images/logo.png",
                              fit: BoxFit.cover,
                              width: 80,
                              height: 50,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, right: 0),
                          child: Text(
                            'ACOSDEMEGA TECHNOLOGY',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5, right: 0),
                          child: Text(
                            'acosdemegatech@gmail.com',
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'THEME',
                  ),
                  leading: Icon(
                    Icons.lightbulb,
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text(
                    'Recent Orders',
                  ),
                  leading: Icon(
                    Icons.check_circle,
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text(
                    'Wallet',
                  ),
                  leading: Icon(
                    Icons.person_pin,
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text(
                    'Submit Complaint',
                  ),
                  leading: Icon(
                    Icons.publish,
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text(
                    'Logout',
                  ),
                  leading: Icon(
                    Icons.exit_to_app,
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer

                    //FirebaseAuth.instance.signOut();
                    //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(
                    height: 2,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 20),
                  child: Text(
                    'communicate',
                  ),
                ),
                ListTile(
                  title: Text(
                    'Contact Us',
                  ),
                  leading: Icon(
                    Icons.mail,
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text(
                    'Privacy Policy',
                  ),
                  leading: Icon(
                    Icons.lock,
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text(
                    'Help',
                  ),
                  leading: Icon(
                    Icons.help,
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
              ],
            )));
  }
}
