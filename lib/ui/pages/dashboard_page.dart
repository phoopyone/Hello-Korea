import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Mywidget(
              title: "Call Center",
              iconData: Icons.contact_phone,
              color: Colors.green,
            ),
            Mywidget(
              title: "Address",
              iconData: Icons.location_city,
              color: Colors.brown,
            ),
            Mywidget(
              title: "Knowledge",
              iconData: Icons.local_library,
              color: Colors.blue,
            ),
            Mywidget(
              title: "Application",
              iconData: Icons.apps,
              color: Colors.red,
            ),
            Mywidget(
              title: "Channel",
              iconData: Icons.video_library,
              color: Colors.red,
            ),
            Mywidget(
              title: "Entertainment",
              iconData: Icons.tv,
              color: Colors.yellow,
            ),
            Mywidget(
              title: "Job",
              iconData: Icons.work,
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}

class Mywidget extends StatelessWidget {
  final String title;

  Mywidget({this.title, this.iconData, this.color});

  final IconData iconData;
  final MaterialColor color;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        splashColor: color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              iconData,
              size: 70,
              color: color,
            ),
            Text(title,
                style: TextStyle(
                  fontSize: 20,
                ))
          ],
        ),
      ),
    );
  }
}
