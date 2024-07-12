import 'package:exam_processing_app/screens/admin_home_screen.dart';
import 'package:exam_processing_app/screens/admin_report_screen.dart';
import 'package:exam_processing_app/screens/course_registration_screen.dart';
import 'package:exam_processing_app/screens/home_screen.dart';
import 'package:exam_processing_app/screens/login_screen.dart';
import 'package:exam_processing_app/screens/registration_screen.dart';
import 'package:exam_processing_app/screens/score_entry.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exam Processing App',
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/register': (context) => RegistrationScreen(),
        '/home': (context) => const HomeScreen(),
        '/courseRegistration': (context) => const CourseRegistrationScreen(),
        '/scoreEntry': (context) => const ScoreEntryScreen(),
        '/adminReport': (context) => const AdminReportScreen(),
        '/adminHome': (context) => const AdminHomeScreen(),
      },
    );
  }
}
