import "package:flutter/material.dart";
//import "package:taskmanagersystem/main.dart";

class MainTask extends StatefulWidget {
  const MainTask({super.key, required this.title});
  final String title;
  @override
  State<MainTask> createState() => _MainTaskState();
}

class _MainTaskState extends State<MainTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
      width: double.infinity,
      child: Column(
        

      ),
    ),  

    );
  }
}
