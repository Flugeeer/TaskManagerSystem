import 'package:flutter/material.dart';
import 'package:taskmanagersystem/models/Task.dart';
import 'package:taskmanagersystem/models/User.dart';
import 'package:taskmanagersystem/services/authservice.dart';

class TaskService extends ChangeNotifier {
List<MainTask> _tasks = [];
final AuthService _authService;

TaskService(this._authService){
  _initializeTask();
}

void _initializeTask(){
  _tasks.add(MainTask(
    id: '1', 
    title: 'Разработка фронтенда для приложения', 
    description: 'Разработать базовый пользовательский интерфейс', 
    assignTo: '2', 
    projectId: '1', 
    status: 'in_progress', 
    createdAt: DateTime.now().add(Duration(days: 6)), 
    deadline: DateTime.now().add(Duration(days: 6)), 
    priority: 'high', 
    TaskType: 'frontend'),
  );
  SubTask(
id: '1-1',
title: 'Создать дизайн главного экрана',
type: 'frontend',
isCompleted: false,
estimatatedTime: Duration(hours: 6),
  );

}
}

