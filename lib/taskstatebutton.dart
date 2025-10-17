import "package:flutter/material.dart";
import "package:flutter/cupertino.dart";

abstract class TaskState {
  Color get color;
  IconData get icon;
  String get title;
  String get subtitle;

  Widget buildButton(BuildContext context, VoidCallback onPressed);
}

class NoTasksState implements TaskState {
  @override
  Color get color => Colors.grey;
  @override
  IconData get icon => CupertinoIcons.add_circled;
  @override
  String get title => "Нет активных задач";
  @override
  String get subtitle => "Нет никаких активных задач";

  @override
  Widget buildButton(BuildContext context, VoidCallback onPressed) {
    return _buildBaseButton(
      context,
      onPressed,
      icon: icon,
      color: color,
      title: title,
      subtitle: subtitle,
    );
  }
}

Widget _buildBaseButton(
  BuildContext context,
  VoidCallback onPressed, {
  required Color color,
  required IconData icon,
  required String title,
  required String subtitle,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 2,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 28, color: Colors.white),
            SizedBox(width: 12),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 1),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
