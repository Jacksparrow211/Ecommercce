import 'package:flutter/material.dart';

import '../subscreen/feed/feed_subscreen.dart';
import '../subscreen/help/help_subscreen.dart';
import '../subscreen/home/home_subscreen.dart';

class MainScreen extends StatelessWidget {


  List<Widget> subscreens = [
    HomeSubscreen(),
    FeedSubscreen(),
    HelpSubscreen(),
    const Center(
      child: Text("About Screen"),
    ),

  ];

  List<Tab> listOfTabs = [
    const Tab(icon: Icon(Icons.home_outlined), text: "Home",),
    const Tab(icon: Icon(Icons.feed_outlined), text: "Feeds",),
    const Tab(icon: Icon(Icons.help_outline), text: "Help",),
    const Tab(icon: Icon(Icons.info_outline), text: "About",),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: subscreens.length,
      child: Scaffold(
          body:TabBarView(
            children : subscreens,
          ),
          bottomNavigationBar: Container(
            color: Colors.orange,
            child: TabBar(
              tabs: listOfTabs,
            ),
          ),
          // floatingActionButton: btnCart(context: context)
      ),
    );
  }
}