import 'package:flutter/material.dart';
import 'package:taskmanagersystem/main.dart';
import 'package:taskmanagersystem/services/authservice.dart';
import 'package:taskmanagersystem/models/User.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  void despose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('Login')),
    body: Center(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 400,
                  color: Colors.green,
                ),
              ],
            ),
            SizedBox(height: 10),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                label: Text('Email'),
                labelStyle: TextStyle(color: Colors.lightGreen, fontSize: 16.0),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.lightGreen, width: 1.0),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.lightGreen, width: 1.0),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 12),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                label: Text('Password'),
                labelStyle: TextStyle(color: Colors.lightGreen, fontSize: 16.0),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.lightGreen, width: 1.0),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.lightGreen, width: 1.0),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              keyboardType: TextInputType.visiblePassword,
            ),
            SizedBox(height: 12),
            // ElevatedButton(onPressed: onPressed, child: child)
          ],
        ),
      ),
    ),
  );
}
