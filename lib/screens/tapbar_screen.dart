import 'package:dicesapp/genesys/screens/genesys_main_screen.dart';
import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';

class TabBarScreen extends StatefulWidget {
  @override
  _TabBarScreenState createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GFTabBarView(
        controller: tabController,
        children: <Widget>[
          GenesysMainScreen(),
          Center(child: Icon(Icons.ac_unit)),
          Center(
            child: Icon(Icons.data_usage),
          ),
        ],
      ),
      bottomNavigationBar: GFTabBar(
        controller: tabController,
        tabs: <Widget>[
          Icon(Icons.hearing),
          Icon(Icons.ac_unit),
          Icon(Icons.data_usage),
        ],
        tabBarColor: Colors.black,
        length: 3,
        tabBarHeight: 50,
        indicatorColor: Colors.transparent,
        unselectedLabelColor: Colors.white.withOpacity(.25),
      ),
    );
  }
}
