import "package:flutter/material.dart";
import "package:taskmanagersystem/main.dart";
//import "package:taskmanagersystem/main.dart";

class MainTaskPage extends StatefulWidget {
  const MainTaskPage({super.key, required this.title});
  final String title;
  @override
  State<MainTaskPage> createState() => _MainTaskPageState();
}

class _MainTaskPageState extends State<MainTaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 20.0),
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
                        builder: (context) => const MainPage(title: "хуй"),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreen,
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Вернуться на главный экран',
                        style: TextStyle(color: Colors.amber),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
