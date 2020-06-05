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
//            child: Icon(Icons.data_usage),
            child: ListView(
              children: [
                Icon(const IconData(0xF22B0, fontFamily: 'Genesys'),
                    size: 48.0, color: Colors.red),
                Icon(const IconData(0xF22B1, fontFamily: 'Genesys'),
                    size: 48.0, color: Colors.red),
                Icon(const IconData(0xF22B2, fontFamily: 'Genesys'),
                    size: 48.0, color: Colors.red),
                Icon(const IconData(0xF22B3, fontFamily: 'Genesys'),
                    size: 48.0, color: Colors.red),
                Icon(const IconData(0xF22B4, fontFamily: 'Genesys'),
                    size: 48.0, color: Colors.red),
                Icon(const IconData(0xF22B5, fontFamily: 'Genesys'),
                    size: 48.0, color: Colors.red),
                Icon(const IconData(0xF22B6, fontFamily: 'Genesys'),
                    size: 48.0, color: Colors.red),
                Icon(const IconData(0xF22B7, fontFamily: 'Genesys'),
                    size: 48.0, color: Colors.red),
                Icon(const IconData(0xF22B8, fontFamily: 'Genesys'),
                    size: 48.0, color: Colors.red),
                Icon(const IconData(0xF22BA, fontFamily: 'Genesys'),
                    size: 48.0, color: Colors.red),
                Icon(const IconData(0xF22BB, fontFamily: 'Genesys'),
                    size: 48.0, color: Colors.red),
              ],
            ),
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
