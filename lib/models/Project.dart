class Project {
  final String id;
  final String title;
  final String description;
  final String createdBy;
  final Map<String, List<String>> team;
  final DateTime createdAt;
  final DateTime deadline;

  Project({
    required this.id,
    required this.title,
    required this.description,
    required this.createdBy,
    required this.team,
    required this.createdAt,
    required this.deadline,
  });
}
