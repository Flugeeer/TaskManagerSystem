class User {
  final String id;
  final String email;
  final String name;
  final String lastname;
  final String Role;
  final List<String> skills;
  final DateTime joinedAt;

  User({
    required this.id,
    required this.email,
    required this.name,
    required this.lastname,
    required this.Role,
    this.skills = const [],
    required this.joinedAt,
  });
}
