import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:philomath/widgets/drawer.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Utility.dart';

class ID extends StatefulWidget {
  @override
  _IDState createState() => _IDState();
}

class _IDState extends State<ID> {
  Future<File> imageFile;
  Image imageFromPreferences;

  String _firstName = "";
  String _lastName = "";
  String _nationalId = "";
  String _phoneNumber = "";
  String _email = "";


  loadImageFromPreferences() {
    Utility.getImageFromPreferences().then((img) {
      if (null == img) {
        return;
      }
      setState(() {
        imageFromPreferences = Utility.imageFromBase64String(img);
      });
    });
  }

  @override
  void initState() {
    loadImageFromPreferences();
    getData();
    super.initState();
  }

  Widget imageFromGallery() {
    return FutureBuilder<File>(
      future: imageFile,
      builder: (BuildContext context, AsyncSnapshot<File> snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            null != snapshot.data) {
          //print(snapshot.data.path);
          Utility.saveImageToPreferences(
              Utility.base64String(snapshot.data.readAsBytesSync()));
          return Image.file(
            snapshot.data,
          );
        } else if (null != snapshot.error) {
          return const Text(
            'Error Picking Image',
            textAlign: TextAlign.center,
          );
        } else {
          return const Text(
            'No Image Selected',
            textAlign: TextAlign.center,
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text("Health ID"),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: CircleAvatar(
                radius: 70,
                child: null == imageFromPreferences
                    ? Container()
                    : imageFromPreferences,
              ),
            ),
            ListTile(
              title: Text("Name: $_firstName $_lastName"),
            ),
            ListTile(
              title: Text("National ID: $_nationalId"),
            ),
            ListTile(
              title: Text("Phone Number: $_phoneNumber"),
            ),
            ListTile(
              title: Text("Email: $_email"),
            ),
          ],
        ));
  }

  getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _firstName = prefs.get("firstName").toString();
      _lastName = prefs.get("lastName").toString();
      _nationalId = prefs.get("nationalId").toString();
      _phoneNumber = prefs.get("phoneNumber").toString();
      _email = prefs.get("email").toString();
    });
  }
}
