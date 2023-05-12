import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/gradient.dart';
import 'package:my_rent_work/HomeScreen/home_screen.dart';
import 'package:my_rent_work/WelcomeScreen/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  startTimer(){
    Timer(const Duration(seconds: 5),()async{
      if(FirebaseAuth.instance.currentUser != null){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
      }else{
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>WelcomeScreen()));
      }
    });
  }

  @override
  void initState(){
    super.initState();
    startTimer();
  }

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.white,  Colors.white],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: [0.0, 0.0],
            tileMode: TileMode.clamp),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("assets/images/my-rent-work.png"),
            ),
            const SizedBox(height: 23.0),
            const Center(
              child: Text(
                'Easy To Maintain The Tenants',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lobster'
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
