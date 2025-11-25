class MainTask {
  final String id;
  final String title;
  final String description;
  final String assignTo;
  final String projectId;
  final String status;
  final DateTime createdAt;
  final DateTime deadline;
  final List<SubTask> subTasks;
  final String priority;
  final String TaskType;

  MainTask({
    required this.id,
    required this.title,
    required this.description,
    required this.assignTo,
    required this.projectId,
    required this.status,
    required this.createdAt,
    required this.deadline,
    this.subTasks = const [],
    required this.priority,
    required this.TaskType,it
  });
}

class SubTask {
  final String id;
  final String title;
  final String type;
  final bool isCompleted;
  final Duration estimatatedTime;

  SubTask({
    required this.id,
    required this.title,
    required this.type,
    this.isCompleted = false,
    required this.estimatatedTime,
  });
}
