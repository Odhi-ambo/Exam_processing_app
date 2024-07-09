import 'student.dart';
import 'course.dart';
import 'score.dart';

class ReportGenerator {
  final List<Student> students;
  final List<Course> courses;
  final List<Score> scores;

  ReportGenerator(
      {required this.students, required this.courses, required this.scores});

  List<Student> getStudentsWhoPassedAllCoursesInSemester(String semester) {
    // Implement the logic to get students who passed all courses in a semester
    return [];
  }

  List<Student> getStudentsWhoFailedOneOrMoreCoursesInSemester(
      String semester) {
    // Implement the logic to get students who failed one or more courses in a semester
    return [];
  }
}
  // Add other