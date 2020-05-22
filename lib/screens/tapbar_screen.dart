import 'package:dicesapp/genesys/screens/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
          Center(
            child: FaIcon(FontAwesomeIcons.search),
          ),
          Center(
            child: FaIcon(FontAwesomeIcons.info),
          ),
        ],
      ),
      bottomNavigationBar: GFTabBar(
        controller: tabController,
        tabs: <Widget>[
          FaIcon(FontAwesomeIcons.mountain),
          FaIcon(FontAwesomeIcons.search),
          FaIcon(FontAwesomeIcons.info),
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
