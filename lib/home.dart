import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/callscreen.dart';
import 'package:whatsapp_clone/screens/camerascreen.dart';
import 'package:whatsapp_clone/screens/chatscreen.dart';
import 'package:whatsapp_clone/screens/statuscreen.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 4, vsync: this, initialIndex: 1)
      ..addListener((){setState(() {});});
  }

  @override
  void dispose(){
    tabController.dispose();
    super.dispose();

  }



  @override
  Widget build(BuildContext context) {
    TabBar tabBar = new TabBar(controller: tabController, tabs: [
      new Tab(
        icon: Icon(Icons.camera_alt),
      ),
      new Tab(
        text: "Chats",
      ),
      new Tab(
        text: "Estados",
      ),
      new Tab(
        text: "Llamadas",
      ),
    ], isScrollable: true,);
    AppBar appBar = new AppBar(
      title: new Text("Whatsapp"),
      bottom: tabBar,
      actions: <Widget>[
        Icon(Icons.search),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0.5),
        ),
        Icon(Icons.more_vert)
      ],
    );

    TabBarView tabBarView = new TabBarView(
      controller: tabController,
      children: <Widget>[
        new camerascreen(),
        new chatScreen(),
        new statuScreen(),
        new callScreen()
      ],
    );

    floatingActionButton(Icon icon){
      return new FloatingActionButton(
        onPressed: (){}, foregroundColor: Colors.white, backgroundColor: Colors.teal,
      child: icon,);
    }

    Widget floatingActionButtonStatus(Icon iconEdit, Icon iconCamera){
      return new Column(
        children: <Widget>[
          new FloatingActionButton(onPressed: (){},
          foregroundColor: new Color(0xff49646c),
            backgroundColor: new Color(0xffebf4fc),
            child: iconEdit,), SizedBox(height: 10,), floatingActionButton(iconCamera)
        ],
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
      );
    }

    return Scaffold(
      appBar: appBar,
      body: tabBarView,
      floatingActionButton: tabController.index == 0
          ? new Container(): tabController.index == 1 ? floatingActionButton(
          Icon(Icons.message)) : tabController.index == 2 ? floatingActionButtonStatus(Icon(Icons.edit), Icon(Icons.camera_alt)) : floatingActionButton(
          Icon(Icons.add_call)),
    );
  }
}
