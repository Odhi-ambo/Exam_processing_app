import 'package:flutter/material.dart';

class ScoreEntry extends StatefulWidget {
  const ScoreEntry({super.key});

  @override
  State<ScoreEntry> createState() => _ScoreEntryState();
}

class _ScoreEntryState extends State<ScoreEntry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Score Entry'),
      ),
    );
  }
}
