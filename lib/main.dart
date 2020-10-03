import 'package:flutter/material.dart';
import 'package:paradigmshift/Constants/constants.dart';
import 'package:paradigmshift/AR Tab/ar_screen.dart';
import 'home_page.dart';
import 'package:paradigmshift/History Tab/history_screen.dart';
import 'package:paradigmshift/splash_screen.dart';
import 'package:paradigmshift/On Board/onboard_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      initialRoute: '/onBoard',
      routes: {
        '/': (context) => HomePage(),
        '/first': (context) => HistoryScreen(),
        '/second': (context) => ARScreen(),
        '/onBoard': (context) => OnBoard(),
      },
    );
  }
}
