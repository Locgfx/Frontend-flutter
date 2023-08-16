/*
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import 'package:subtitle_game/google_signin_.dart';
import 'homepage.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    method();

    super.initState();
  }

  void method() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MyHomePage(),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Break the Stutter!',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w100,
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            const Text(
              'Welcome to my app!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w300,
              ),
            ),
            Row(
              children: [
                const SizedBox(
                  width: 80,
                ),
                Image.asset(
                  'lib/assets/mail.png',
                  height: 20,
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    final provider = Provider.of<GoogleSignInProvider>(context,
                        listen: false);
                    provider.GoogleLogin();
                  },
                  child: const Text('Sign up using Email  '),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const SizedBox(
                  width: 80,
                ),
                Image.asset(
                  'lib/assets/google_logo.png',
                  height: 20,
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    final provider = Provider.of<GoogleSignInProvider>(context,
                        listen: false);
                    provider.GoogleLogin();
                    print(provider);
                  },
                  child: const Text('Sign up using Google'),
                ),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
*/
