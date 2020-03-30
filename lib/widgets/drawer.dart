import 'dart:io';
import 'package:flutter/material.dart';
import 'package:philomath/UserId/Utility.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'menu.dart';

class MyDrawer extends StatefulWidget {
  MyDrawer() : super();

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  String _firstName = "";
  String _lastName = "";
  String _nationalId = "";
  Future<File> imageFile;
  Image imageFromPreferences;

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
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("$_firstName $_lastName"),
              accountEmail: Text(_nationalId),
              currentAccountPicture: null == imageFromPreferences
                  ? Container()
                  : imageFromPreferences,
            ),
            SizedBox(height: 2.5),
            MyMenuItems(),
          ],
        ),
      ),
    );
  }

  getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _firstName = prefs.get("firstName").toString();
      _lastName = prefs.get("lastName").toString();
      _nationalId = prefs.get("nationalId").toString();
    });
  }
}
