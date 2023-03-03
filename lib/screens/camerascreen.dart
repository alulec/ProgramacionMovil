import 'package:flutter/material.dart';

class camerascreen extends StatefulWidget {
  @override
  camerascreenState createState() => new camerascreenState();
}

class camerascreenState extends State<camerascreen>{

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Text("Camera"),
      ),
    );

  }
}