import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/courseRegistration');
              },
              child: const Text("Register for Courses"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/scoreEntry');
              },
              child: const Text("Enter Scores"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/adminReport');
              },
              child: const Text("Generate Reports"),
            ),
          ],
        ),
      ),
    );
  }
}
