import 'package:flutter/material.dart';
import 'package:taskmanagersystem/main.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('Login')),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(width: 300, height: 100, color: Colors.green),
        Container(width: 300, height: 100, color: Colors.amber),
      ],
    ),
  );
}
