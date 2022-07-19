import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_4/screens/screen1.dart';
import 'package:flutter_application_4/screens/screen2.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Raleway'),
    initialRoute: '/',
    routes: {
      '/':(context) => Screen1(),
      '/screen2':(context) => Screen2(),
    },
  ));
}
