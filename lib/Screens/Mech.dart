import 'package:flutter/material.dart';
import 'package:philomath/MechanicsList/MechLO1&2.dart';
import 'package:philomath/MechanicsList/MechLO3.dart';
import 'package:philomath/MechanicsList/MechLO4.dart';
import 'package:philomath/MechanicsList/MechLO5.dart';
import 'package:philomath/MechanicsList/MechLO6.dart';
import 'package:philomath/MechanicsList/MechLO7.dart';
import 'package:philomath/widgets/drawer.dart';

class Mechanics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Mechanics",
        style: TextStyle(
          fontSize: 27,
        ),
      )),
      drawer: MyDrawer(),
      body: Center(
        child: Container(
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Card(
                child: ListTile(
                  subtitle: Text("Moment, couple, and equilibrium"),
                  leading: Icon(Icons.filter_1),
                  title: Text(
                    "LO1&2",
                    style: TextStyle(),
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacement(new MaterialPageRoute(
                        builder: (context) => MechLO1and2()));
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                child: ListTile(
                  subtitle: Text("Rotational kinematics"),
                  leading: Icon(Icons.filter_3),
                  title: Text(
                    "LO3",
                    style: TextStyle(),
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        new MaterialPageRoute(builder: (context) => MechLO3()));
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                child: ListTile(
                  subtitle: Text("Moment of inertia and torque"),
                  leading: Icon(Icons.filter_4),
                  title: Text(
                    "LO4",
                    style: TextStyle(),
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        new MaterialPageRoute(builder: (context) => MechLO4()));
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                child: ListTile(
                  subtitle: Text("Angular momentum"),
                  leading: Icon(Icons.filter_5),
                  title: Text(
                    "LO5",
                    style: TextStyle(),
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        new MaterialPageRoute(builder: (context) => MechLO5()));
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                child: ListTile(
                  subtitle: Text("Rotational kinetic energy"),
                  leading: Icon(Icons.filter_6),
                  title: Text(
                    "LO6",
                    style: TextStyle(),
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        new MaterialPageRoute(builder: (context) => MechLO6()));
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                child: ListTile(
                  subtitle: Text("Use of calculus in dynamics"),
                  leading: Icon(Icons.filter_7),
                  title: Text(
                    "LO1",
                    style: TextStyle(),
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        new MaterialPageRoute(builder: (context) => MechLO7()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
