import 'dart:math';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/entity/chatmodel.dart';

class chatScreen extends StatefulWidget {
  @override
  chatScreenState createState() => new chatScreenState();
}

class chatScreenState extends State<chatScreen>{

  @override
  Widget build(BuildContext context) {
    Widget notificationCircle(value){
      return new Container(
        child: new Text(value.toString(),
        style: TextStyle(color: Colors.white),
        ),
        height: 20,
        width: 20,
        decoration: new BoxDecoration(
          color: Colors.green,
          shape: BoxShape.circle,
        ),
      );
    }

    return ListView.builder(itemCount: temporalData.length,
    itemBuilder: (context, i) => new Column(
      children: <Widget>[
        new Divider(
          height: 5,
        ),
        new ListTile(
          leading: new CircleAvatar(
            foregroundColor: Colors.teal,
            backgroundColor: Colors.grey,
            backgroundImage: new NetworkImage(temporalData[i].avatarUrl),
          ),
          title: Row(children: <Widget>[
            new Text(temporalData[i].nombre, style: TextStyle(fontWeight: FontWeight.bold)),
            new Text(temporalData[i].hora, style: TextStyle(color: Colors.grey, fontSize: 14)),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
          subtitle: new Container(
            padding: const EdgeInsets.only(top: 5),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(temporalData[i].mensaje,
                style: TextStyle(color: Colors.grey, fontSize: 15)),
                temporalData[i].newMessage == 0 ? new Container() : notificationCircle(Random().nextInt(5) + 1)
              ],
            ),
          ),
        )
      ],
    ),
    );


  }
}