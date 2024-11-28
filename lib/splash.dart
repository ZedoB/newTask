import 'dart:async';

import 'package:flutter/material.dart';
import 'package:task/authentication/presentation/login.dart';
import 'package:task/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    Timer(
        const Duration(seconds: 3),
            () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => LoginPage())));

    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Image.asset('assets/images/task.png',
        height: 300,width: 300),
      ),
    );
  }
}
