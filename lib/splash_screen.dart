import 'dart:async';
import 'package:paradigmshift/Constants/constants.dart';
import 'package:paradigmshift/History Tab/history_screen.dart';
import 'package:flutter/material.dart';
import 'package:paradigmshift/home_page.dart';

//ToDo: Create a Splash Screen

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    loadData();
    super.initState();
  }

  Future<Timer> loadData() async {
    return new Timer(Duration(seconds: 8), onDoneLoading);
  }

  onDoneLoading() async {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => HomePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(5.0),
        child: Text(
        'Splash Screen',
        ),
      ),
    );
  }
}
