import 'package:flutter/material.dart';
import 'package:taskmanagersystem/main.dart';
import 'package:taskmanagersystem/pages/UserProfile.dart';
import 'package:taskmanagersystem/maintaskpage.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(
        "Task Manager System",
        style: TextStyle(fontSize: 24.0, color: Colors.lightGreen),
      ),
      backgroundColor: Colors.white,
    ),
    body: Container(
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SizedBox(
              width: double.infinity,
              height: 100,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (context) =>
                          const MainTaskPage(title: "Main task"),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightGreen,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.plus_circle_fill,
                      size: 24,
                      color: Colors.white,
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Отображение выполняемой задачи\nГлавный переход на приоритетную задачу\nОбратный отсчет по времени к дедлайну',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
        ],
      ),
    ),
  );
}
