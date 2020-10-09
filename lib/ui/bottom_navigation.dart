import 'package:flutter/material.dart';
import 'package:hello_korea/ui/pages/dashboard_page.dart';
import 'package:hello_korea/ui/pages/home_page.dart';
import 'package:hello_korea/ui/pages/setting_page.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: null,
      body: DefaultTabController(
        length: 3,
        child: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
            ),
            Scaffold(
              bottomNavigationBar: Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: TabBar(
                  tabs: <Widget>[
                    Tab(
                      icon: Icon(Icons.home),
                    ),
                    Tab(
                      icon: Icon(Icons.dashboard),
                    ),
                    Tab(
                      icon: Icon(Icons.settings),
                    ),
                  ],
                  labelColor: Colors.red,
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(color: Colors.red, width: 4.0),
                    insets: EdgeInsets.only(bottom: 44),
                  ),
                  unselectedLabelColor: Colors.grey,
                ),
              ),
              body: TabBarView(
                children: <Widget>[
                  HomePage(),
                  DashboardPage(),
                  SettingPage(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
