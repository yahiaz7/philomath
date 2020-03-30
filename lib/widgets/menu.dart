import 'package:flutter/material.dart';

class MyMenuItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.add_to_home_screen),
              title: Text(
                "Home",
              ),
              onTap: () {
                Navigator.of(context).pushNamed('/home');
              },
            ),
            ListTile(
              leading: Icon(Icons.functions),
              title: Text("Maths"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.functions),
              title: Text("Mechanics"),
              onTap: () {
                Navigator.of(context).pushNamed('/mech');
              },
            ),
            ListTile(
              leading: Icon(Icons.functions),
              title: Text("Statistics"),
              onTap: () {
                Navigator.of(context).pushNamed('/Statistics');
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("User ID"),
              onTap: () {
                Navigator.of(context).pushNamed('/ID');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                "Settings",
                style: TextStyle(),
              ),
              onTap: () {
                Navigator.of(context).pushNamed('/Setting');
              },
            ),
          ],
        ),
      ),
    );
  }
}
