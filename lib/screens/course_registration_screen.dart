import 'package:flutter/material.dart';

class Course {
  final String id;
  final String name;

  Course({required this.id, required this.name});
}

List<Course> courses = [
  Course(id: '1', name: 'Mathematics'),
  Course(id: '2', name: 'Physics'),
  Course(id: '3', name: 'Chemistry'),
  Course(id: '4', name: 'Biology'),
  Course(id: '5', name: 'Computer Science'),
  // Add more courses as needed
];

class CourseRegistrationScreen extends StatefulWidget {
  @override
  _CourseRegistrationScreenState createState() =>
      _CourseRegistrationScreenState();
}

class _CourseRegistrationScreenState extends State<CourseRegistrationScreen> {
  final _formKey = GlobalKey<FormState>();
  List<String> selectedCourses = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Course Registration")),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: List.generate(courses.length, (index) {
                  return CheckboxListTile(
                    title: Text(courses[index].name),
                    value: selectedCourses.contains(courses[index].id),
                    onChanged: (bool? value) {
                      setState(() {
                        if (value == true) {
                          selectedCourses.add(courses[index].id);
                        } else {
                          selectedCourses.remove(courses[index].id);
                        }
                      });
                    },
                  );
                }),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (selectedCourses.length >= 5) {
                  // Save to database
                } else {
                  // Show error
                }
              },
              child: Text("Register Courses"),
            ),
          ],
        ),
      ),
    );
  }
}
