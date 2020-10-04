import 'package:flutter/material.dart';
import 'timeline_screen.dart';
import 'package:paradigmshift/Constants/constants.dart';

class HistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
            'History'
        ),
      ),
      body: Timeline(),
    );
  }
}
