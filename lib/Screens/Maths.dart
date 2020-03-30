import 'package:flutter/material.dart';
import 'package:philomath/widgets/drawer.dart';

class Maths extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Maths",
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
                height: 10,
              ),
              Card(
                child: ListTile(
                  subtitle: Text(
                      "Implicit differentiation & Parametric differentiation"),
                  leading: Icon(Icons.looks_one),
                  title: Text(
                    "LO1",
                    style: TextStyle(),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('/MathsLO1');
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                child: ListTile(
                  subtitle: Text(
                      "Critical points and concavity and its applications"),
                  leading: Icon(Icons.looks_two),
                  title: Text(
                    "LO2 &3",
                    style: TextStyle(),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('/MathsLO2');
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                child: ListTile(
                  subtitle: Text("Sequences and Series"),
                  leading: Icon(Icons.looks_two),
                  title: Text(
                    "LO4",
                    style: TextStyle(),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('/MathsLO4');
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                child: ListTile(
                  subtitle: Text("Complex Numbers"),
                  leading: Icon(Icons.looks_two),
                  title: Text(
                    "LO5&6",
                    style: TextStyle(),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('/MathsLO5');
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                child: ListTile(
                  subtitle:
                      Text("Applications of derivatives on rectilinear motion"),
                  leading: Icon(Icons.looks_two),
                  title: Text(
                    "LO7",
                    style: TextStyle(),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('/MathsLO7');
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                child: ListTile(
                  subtitle: Text("Differential equations"),
                  leading: Icon(Icons.looks_two),
                  title: Text(
                    "LO8",
                    style: TextStyle(),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('/MathsLO8');
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                child: ListTile(
                  subtitle: Text("Techniques of integration"),
                  leading: Icon(Icons.looks_two),
                  title: Text(
                    "LO9",
                    style: TextStyle(),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('/MathsLO9');
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                child: ListTile(
                  subtitle: Text("Applications of integration"),
                  leading: Icon(Icons.looks_two),
                  title: Text(
                    "LO10",
                    style: TextStyle(),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('/MathsLO10');
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                child: ListTile(
                  subtitle: Text("Analytic solid geometry"),
                  leading: Icon(Icons.looks_two),
                  title: Text(
                    "LO11",
                    style: TextStyle(),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('/MathsLO11');
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
