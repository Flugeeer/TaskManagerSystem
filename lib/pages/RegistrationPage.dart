import 'package:flutter/material.dart';
import 'package:taskmanagersystem/pages/LoginPage.dart';
import 'package:taskmanagersystem/services/authservice.dart';


class RegistrationPage extends StatefulWidget{
@override
  _RegistartionPageState createState() => _RegistartionPageState();
}
class _RegistartionPageState extends State<RegistrationPage>{
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _lastnameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _errorMessage = '';
  @override
  void despose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) => Scaffold(
appBar: AppBar(title: Text('Registration')),
body: Center(
child: Padding(padding: EdgeInsets.all(12.0),),
),
  ); 

}