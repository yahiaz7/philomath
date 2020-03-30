import 'package:flutter/material.dart';
import 'package:philomath/StatisticsList/StatLO1.dart';
import 'package:philomath/StatisticsList/StatLO2.dart';
import 'package:philomath/StatisticsList/StatLO3.dart';
import 'package:philomath/StatisticsList/StatLO4.dart';
import 'package:philomath/StatisticsList/StatLO5.dart';

import 'package:philomath/widgets/drawer.dart';

class Statistics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Statistics",
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
                  subtitle: Text("Sampling distributions"),
                  leading: Icon(Icons.filter_1),
                  title: Text(
                    "LO1",
                    style: TextStyle(),
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        new MaterialPageRoute(builder: (context) => StatLO1()));
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                child: ListTile(
                  subtitle: Text("Describing relationships"),
                  leading: Icon(Icons.filter_2),
                  title: Text(
                    "LO2",
                    style: TextStyle(),
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        new MaterialPageRoute(builder: (context) => StatLO2()));
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                child: ListTile(
                  subtitle: Text("Experimental design"),
                  leading: Icon(Icons.filter_3),
                  title: Text(
                    "LO3",
                    style: TextStyle(),
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        new MaterialPageRoute(builder: (context) => StatLO3()));
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                child: ListTile(
                  subtitle: Text("Confidence intervals and hypothesis testing"),
                  leading: Icon(Icons.filter_4),
                  title: Text(
                    "LO4",
                    style: TextStyle(),
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        new MaterialPageRoute(builder: (context) => StatLO4()));
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                child: ListTile(
                  subtitle: Text("Probability"),
                  leading: Icon(Icons.filter_5),
                  title: Text(
                    "LO5",
                    style: TextStyle(),
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        new MaterialPageRoute(builder: (context) => StatLO5()));
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
