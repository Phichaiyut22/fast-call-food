// ignore_for_file: prefer_const_constructors

import 'package:fast_call_food_project/views/fast_food_ui.dart';
import 'package:flutter/material.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
    @override
  void initState() {
    Future.delayed(
      Duration(
        seconds: 3
    ),
    () =>Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => FastFoodUI(),
      ),
    )
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius:BorderRadius.circular(100.0),
              child: Image.asset(
                'assets/images/fastfood.png',
                width: MediaQuery.of(context).size.width *0.5,
                height: MediaQuery.of(context).size.width *0.5,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),

            Text(
              'สายด่วนชวนกิน',
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.height *0.035,
              ),
            ),
             SizedBox(
              height: 20.0,
            ),
            CircularProgressIndicator(
              color: Colors.white,
            ),
             SizedBox(
              height: 20.0,
            ),
            Text(
              'กำลังโหลด',
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.height *0.025,
              ),
            ),
          ],
        ),
      ),
    );
  }
}