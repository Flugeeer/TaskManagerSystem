import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:taskmanagersystem/pages/HomePage.dart';
import 'package:taskmanagersystem/pages/UserProfile.dart';
import 'package:taskmanagersystem/pages/ChatPage.dart';
import 'package:taskmanagersystem/pages/SettingsPage.dart';
import 'package:taskmanagersystem/pages/PullRequestPage.dart';
import 'package:taskmanagersystem/pages/LoginPage.dart';
import 'package:taskmanagersystem/services/authservice.dart';
import 'package:taskmanagersystem/pages/LoginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Manager System',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.lightGreen,
          primary: Colors.white,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.title});
  final String title;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 2;
  final screens = [
    SettingsPage(),
    PullRequestPage(),
    HomePage(),
    ProfilePage(),
    ChatPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
            backgroundColor: Colors.lightGreen,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.request_page),
            label: "Pull Request",
            backgroundColor: Colors.lightGreen,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.lightGreen,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
            backgroundColor: Colors.lightGreen,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "Messages",
            backgroundColor: Colors.lightGreen,
          ),
        ],
      ),
    );
  }
}
