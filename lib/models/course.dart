enum Difficulty {
  easy,
  medium,
  hard,
}

class Course {
  final String cover;
  final String title;
  final String type;
  final int lessonsCount;
  final int totalHours;
  final Difficulty difficulty;
  final bool isPro;

  const Course({
    required this.cover,
    required this.title,
    required this.type,
    required this.lessonsCount,
    required this.totalHours,
    required this.difficulty,
    required this.isPro,
  });
}
