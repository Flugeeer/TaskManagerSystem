import 'package:flutter/material.dart';
import 'package:taskmanagersystem/models/User.dart';

class AuthService extends ChangeNotifier {
  User? _currentUser;
}

final List<User> _demoUsers = [
  User(
    id: '1',
    email: 'flugeeer@tech.com',
    password: '12345',
    name: 'Vladislav',
    lastname: 'Katashov',
    expirience: 'Recruit',
    Role: 'Recruit',
    joinedAt: DateTime.now(),
  ),
  User(
    id: '2',
    email: '4lwayswannasleep@tech.ru',
    password: '12345',
    name: 'Vladislav',
    lastname: 'Joslinn',
    expirience: 'Senior',
    Role: 'Backend',
    joinedAt: DateTime.now(),
  ),
];
