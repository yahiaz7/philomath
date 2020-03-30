import 'package:flutter/material.dart';
import 'package:philomath/widgets/drawer.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Philomath'),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Container(
          child: ListView(
            children: <Widget>[
              Card(
                child: ListTile(
                  leading: Icon(Icons.looks_one),
                  title: Text(
                    "Maths",
                    style: TextStyle(),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('/maths');
                  },
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.looks_two),
                  title: Text(
                    "Mecahnics",
                    style: TextStyle(),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('/mech');
                  },
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.looks_3),
                  title: Text(
                    "Statistics",
                    style: TextStyle(),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('/Statistics');
                  },
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.copyright),
                  title: Text(
                    "Made with love by:\nYahya Moustafa Zahran\nyahya.10545@stemdakahlia.moe.edu.eg\n+201002359671 "
                    "\nAhmed Magdy Yassen\nahmed.10494@stemdakahlia.moe.edu.eg\n+201025895447",
                    style:TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
