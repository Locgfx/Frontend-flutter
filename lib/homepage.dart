/*

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:subtitle_game/level1.dart';
import 'package:subtitle_game/shivani/screens/splash.dart';
import 'package:subtitle_game/splash.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasData) {
            return MyLevel1();
          } else {
            return SplashScreen();
          }
        },
      ),
    );
  }
}
*/
