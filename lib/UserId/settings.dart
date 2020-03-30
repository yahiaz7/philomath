import 'package:flutter/material.dart';
import 'package:philomath/widgets/drawer.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'ID.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

import 'Utility.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  Future<File> imageFile;
  Image imageFromPreferences;
  var _firstNameController = new TextEditingController();
  var _lastNameController = new TextEditingController();
  var _nationalId = new TextEditingController();
  var _phoneNumber = new TextEditingController();
  var _email = new TextEditingController();
  final _formKey = GlobalKey<FormState>();

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

  pickImageFromGallery(ImageSource source) {
    setState(() {
      imageFile = ImagePicker.pickImage(source: source);
    });
  }

  @override
  void initState() {
    Fluttertoast.showToast(msg: "You must fill up all the fields");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final halfMediaWidth = MediaQuery.of(context).size.width / 2.0;
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text("Settings"),
        ),
        body: Form(
          key: _formKey,
          child: ListView(
            cacheExtent: 100,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(5.0, 15, 0.0, 0.0),
                alignment: Alignment.topRight,
                child: Row(
                  children: <Widget>[
                    IconButton(
                      iconSize: 35,
                      icon: Icon(Icons.add_a_photo),
                      onPressed: () {
                        pickImageFromGallery(ImageSource.gallery);
                        setState(() {
                          imageFromPreferences = null;
                        });
                      },
                    ),
                    CircleAvatar(
                      radius: 70,
                      child: imageFromGallery(),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topCenter,
                      width: halfMediaWidth,
                      child: ListTile(
                        title: new TextFormField(
                          decoration: InputDecoration(
                            hintText: "First Name",
                            hintStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.indigo)),
                          ),
                          controller: _firstNameController,
                          validator: (String value) {
                            if (value.isEmpty) {
                              return 'Enter your First Name';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      width: halfMediaWidth,
                      child: ListTile(
                        title: new TextFormField(
                          decoration: InputDecoration(
                            hintText: "Last Name",
                            hintStyle: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.indigo)),
                          ),
                          controller: _lastNameController,
                          validator: (String value) {
                            if (value.isEmpty) {
                              return 'Enter your Last Name';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: new TextFormField(
                  maxLength: 14,
                  keyboardType: TextInputType.numberWithOptions(),
                  decoration: InputDecoration(
                    hintText: "National ID",
                    hintStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.indigo)),
                  ),
                  controller: _nationalId,
                  validator: (String value) {
                    if (value.length != 14) {
                      return 'Enter 14 Digits';
                    }
                    return null;
                  },
                ),
              ),
              ListTile(
                title: new TextFormField(
                  maxLength: 11,
                  keyboardType: TextInputType.numberWithOptions(),
                  decoration: InputDecoration(
                    hintText: " Phone Number",
                    hintStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.indigo)),
                  ),
                  controller: _phoneNumber,
                  validator: (String value) {
                    if (value.length != 11) {
                      return 'Enter your 11 Digits';
                    }
                    return null;
                  },
                ),
              ),
              ListTile(
                title: new TextFormField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.indigo)),
                  ),
                  controller: _email,
                  validator: (String value) {
                    if (value.isEmpty) {
                      return 'Enter your Email';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                height: 40.0,
                child: Material(
                  borderRadius: BorderRadius.circular(25.0),
                  shadowColor: Colors.indigoAccent,
                  color: Colors.indigo,
                  elevation: 5.0,
                  child: GestureDetector(
                      onTap: () {
                        if (_formKey.currentState.validate()) {
                          saveData(
                              _firstNameController.text,
                              _lastNameController.text,
                              _nationalId.text,
                              _phoneNumber.text,
                            _email.text,
                              );
                          Navigator.of(context).pushReplacement(
                              new MaterialPageRoute(
                                  builder: (context) => ID()));
                        }
                      },
                      child: Center(
                        child: Text("Save Data",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat')),
                      )),
                ),
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ));
  }

  saveData(
      String firstName,
      String lastName,
      String nationalId,
      String phoneNumber,
      String email
      ) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("firstName", firstName);
    prefs.setString("lastName", lastName);
    prefs.setString("nationalId", nationalId);
    prefs.setString("phoneNumber", phoneNumber);
    prefs.setString("email", email);

    Fluttertoast.showToast(msg: "Saved Data");
  }
}
