import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'home.dart';

void main() => runApp(Whatsapp());

class Whatsapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Whatsapp clon",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.teal, accentColor: Colors.amber,)

        //primaryColor: Colors.teal,
        //accentColor: const Color(0xFF25D366),
        //primaryColor: const Color(0xFF075E54) Colors.teal,
      ),


      home: Home(),
    );
  }
}
