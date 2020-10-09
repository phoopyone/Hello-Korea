import 'package:flutter/material.dart';
import 'package:hello_korea/ui/bottom_navigation.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: FlatButton(
        color: Colors.red,
        child: Text("Go to Next Page"),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) {
            return BottomNavigation();
          }));
        },
      ),
    ));
  }
}
