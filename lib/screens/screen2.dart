import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  String name;
  Screen2( {this.name=""});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Container(
            child: Column(children: [
              Text("$name" ,style: TextStyle(fontSize: 40),)
            ] ),
          ),
        ),
      ),
    );
  }
}
