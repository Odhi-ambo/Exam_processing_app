import 'package:flutter/material.dart';
import 'package:exam_processing_app/model/student.dart';
import 'package:exam_processing_app/model/course.dart';
import 'package:exam_processing_app/model/score.dart';
import 'package:exam_processing_app/model/report_generator.dart';

class AdminReportScreen extends StatefulWidget {
  const AdminReportScreen({super.key});

  @override
  _AdminReportScreenState createState() => _AdminReportScreenState();
}

class _AdminReportScreenState extends State<AdminReportScreen> {
  late String selectedReport;
  List<Student> reportResults = [];

  // Initialize students, courses, and scores
  List<Student> students = [
    Student(id: '1', name: 'Alice', email: 'alice@example.com'),
    Student(id: '2', name: 'Bob', email: 'bob@example.com'),
    // Add more students
  ];

  List<Course> courses = [
    Course(id: '1', name: 'Math 101'),
    Course(id: '2', name: 'Physics 101'),
    // Add more courses
  ];

  List<Score> scores = [
    Score(
        studentId: '1',
        courseId: '1',
        assignment1: 80,
        assignment2: 90,
        cat1: 85,
        cat2: 88,
        exam: 90),
    Score(
        studentId: '2',
        courseId: '1',
        assignment1: 75,
        assignment2: 80,
        cat1: 78,
        cat2: 79,
        exam: 82),
    // Add more scores
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Generate Reports")),
      body: Column(
        children: [
          DropdownButtonFormField(
            items: const [
              DropdownMenuItem(
                  value: "passedSemester",
                  child: Text("Passed All Courses in Semester")),
              DropdownMenuItem(
                  value: "failedSemester",
                  child: Text("Failed One or More Courses in Semester")),
              // Add other report types
            ],
            onChanged: (value) {
              setState(() {
                selectedReport = value!;
              });
            },
            decoration: const InputDecoration(labelText: "Select Report Type"),
          ),
          ElevatedButton(
            onPressed: () {
              // Generate the selected report
              setState(() {
                if (selectedReport == "passedSemester") {
                  reportResults = ReportGenerator(
                    students: students,
                    courses: courses,
                    scores: scores,
                  ).getStudentsWhoPassedAllCoursesInSemester('currentSemester');
                } else if (selectedReport == "failedSemester") {
                  reportResults = ReportGenerator(
                    students: students,
                    courses: courses,
                    scores: scores,
                  ).getStudentsWhoFailedOneOrMoreCoursesInSemester(
                      'currentSemester');
                }
                // Handle other report types
              });
            },
            child: const Text("Generate Report"),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: reportResults.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(reportResults[index].name),
                  // Display additional info as needed
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
