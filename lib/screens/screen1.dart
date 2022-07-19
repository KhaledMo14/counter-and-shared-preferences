import 'dart:io';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/screens/screen2.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Screen1 extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<Screen1> {
  String name = "";
  //take data from textfield
  TextEditingController textEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              controller: textEditingController,
              decoration: InputDecoration(
             border: OutlineInputBorder(), hintText: 'enter your text'),
            ),
          ),
          SizedBox(
            height: 20,
          ),

          SizedBox(
            height: 20,
          ),
  
          ElevatedButton(
              onPressed: () {
                 save(textEditingController.text);
               saveData();
                 Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Screen2(name : this.name)));
              },
              child: Text("Save Date")),

          SizedBox(
            height: 40,
          ),

          // ElevatedButton(onPressed: readText(), child: Tex('read from file'))
        ],
      )),
    );
  }

  void save(String text) async {
    var sharedPref = await SharedPreferences.getInstance();
    sharedPref.setString("key", text);
  }

  void saveData() async {
    var sharedPref = await SharedPreferences.getInstance();
    var text = sharedPref.getString("key");
    setState(() {
      this.name = text ?? '';
    });
  }


}
