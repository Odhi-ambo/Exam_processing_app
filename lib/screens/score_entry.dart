import 'package:exam_processing_app/screens/course_registration_screen.dart';
import 'package:flutter/material.dart';

class ScoreEntryScreen extends StatefulWidget {
  @override
  _ScoreEntryScreenState createState() => _ScoreEntryScreenState();
}

class _ScoreEntryScreenState extends State<ScoreEntryScreen> {
  final _formKey = GlobalKey<FormState>();
  late String selectedCourse;
  late int assignment1, assignment2, cat1, cat2, exam;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Enter Scores")),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            DropdownButtonFormField(
              items: courses.map((course) {
                return DropdownMenuItem(
                  value: course.id,
                  child: Text(course.name),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedCourse = value!;
                });
              },
              decoration: const InputDecoration(labelText: "Select Course"),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "Assignment 1"),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                assignment1 = int.parse(value);
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "Assignment 2"),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                assignment2 = int.parse(value);
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "CAT 1"),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                cat1 = int.parse(value);
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "CAT 2"),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                cat2 = int.parse(value);
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "Exam"),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                exam = int.parse(value);
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Save scores to database
                }
              },
              child: Text("Submit Scores"),
            ),
          ],
        ),
      ),
    );
  }
}
