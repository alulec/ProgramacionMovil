import 'package:flutter/material.dart';

class statuScreen extends StatefulWidget {
  @override
  statuScreenState createState() => new statuScreenState();
}

class statuScreenState extends State<statuScreen>{

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Text("Status"),
      ),
    );

  }
}