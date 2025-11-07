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
            SizedBox(height: 300),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                label: Text('Email'),
                labelStyle: TextStyle(color: Colors.lightGreen, fontSize: 16.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                // fillColor: Color.fromARGB(120, 230, 123, 123),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 12),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                label: Text('Password'),
                labelStyle: TextStyle(color: Colors.lightGreen, fontSize: 16.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.lightGreen),
                ),
              ),
              keyboardType: TextInputType.visiblePassword,
            ),
            // ElevatedButton(onPressed: onPressed, child: child)
          ],
        ),
      ),
    ),
  );
}
