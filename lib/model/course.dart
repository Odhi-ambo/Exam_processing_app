abstract class Course {
  final String id;
  final String name;
  final int semester;
  final int year;

  Course(String id, String name, int semester, int year)
      : this.id = id,
        this.name = name,
        this.semester = semester,
        this.year = year;
}
