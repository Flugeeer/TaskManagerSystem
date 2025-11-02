import "package:flutter/material.dart";
import "../main.dart";
import "../tasklist.dart";
import "package:taskmanagersystem/maintaskpage.dart";

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePage createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('Profile')),
    body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity, // Main Info of user,
            height: 400,
            color: Colors.lightGreen,
          ),
          Container(
            width: double.infinity,
            height: 300,
            color: Colors.red,
          ), // completed tasks and performance bar,
        ],
      ),
    ),
  );
}
