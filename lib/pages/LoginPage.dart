import 'package:flutter/material.dart';
import 'package:taskmanagersystem/main.dart';
import 'package:taskmanagersystem/services/authservice.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _errorMessage = '';
  @override
  void despose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _login() async {
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      setState(() {
        _errorMessage = 'Please enter all fields';
      });
      return;
    }
    final authService = Provider.of<AuthService>(context, listen: false);
    final success = authService.login(email, password);

    if (success) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (content) => MainPage(title: 'Task Manager System'),
        ),
      );
    } else {
      setState(() {
        _errorMessage = 'Wrong email or password';
      });
    }
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
                labelText: 'Email',
                labelStyle: TextStyle(color: Colors.lightGreen),
                prefixIcon: Icon(Icons.email, color: Colors.lightGreen),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.lightGreen, width: 1.0),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.lightGreen, width: 2.0),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16),

            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.lightGreen),
                prefixIcon: Icon(Icons.lock, color: Colors.lightGreen),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.lightGreen, width: 1.0),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.lightGreen, width: 2.0),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              obscureText: true,
              onSubmitted: (_) => _login(),
            ),
            if (_errorMessage.isNotEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  _errorMessage,
                  style: TextStyle(color: Colors.red, fontSize: 14),
                  textAlign: TextAlign.center,
                ),
              ),
            SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: _login,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightGreen,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(12.0),
                  ),
                  elevation: 2,
                ),
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 12),
            // ElevatedButton(onPressed: onPressed, child: child)
          ],
        ),
      ),
    ),
  );
}
