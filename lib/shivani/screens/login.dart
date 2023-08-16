import 'package:flutter/material.dart';

import 'google_signin_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //bool isGoogleLoading = false;

  @override
  Widget build(BuildContext context) {
    /* Future<void> googleSignIn() async {
      try{
        isGoogleLoading = true;
        signInWithGoogle();
        isGoogleLoading = false;
        setInitialScreen(firebaseUser);
      }catch(e){
        isGoogleLoading = false;
      }
    }*/

    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Break the Stutter!',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w100,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              'Welcome to my app!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w300,
              ),
            ),
            // Row(
            //   children: [
            //     const SizedBox(
            //       width: 80,
            //     ),
            //     Image.asset('assets/images/google.png', height: 20),
            //     const SizedBox(width: 20),
            //     ElevatedButton(
            //       onPressed: () {},
            //       child: const Text('Sign up using Email  '),
            //     ),
            //   ],
            // ),
            SizedBox(height: 20),
            CustomGoogleSignInButton(),
            // Row(
            //   children: [
            //     const SizedBox(
            //       width: 80,
            //     ),
            //     Image.asset(
            //       'assets/images/google_logo.png',
            //       height: 20,
            //     ),
            //     const SizedBox(width: 20),
            //     ElevatedButton(
            //       onPressed: (){
            //         googleSignIn();
            //       },
            //       child: const Text('Sign up using Google'),
            //     ),
            //   ],
            // ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

/*class Authentication {
  static Future<User?> signInWithGoogle({required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;

    final GoogleSignIn googleSignIn = GoogleSignIn();

    final GoogleSignInAccount? googleSignInAccount =
    await googleSignIn.signIn();

    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      try {
        final UserCredential userCredential =
        await auth.signInWithCredential(credential);

        user = userCredential.user;
      } on FirebaseAuthException catch (e) {
        if (e.code == 'account-exists-with-different-credential') {
          ScaffoldMessenger.of(context).showSnackBar(
            Authentication.customSnackBar(
              content:
              'The account already exists with a different credential.',
            ),
          );
        }
        else if (e.code == 'invalid-credential') {
          ScaffoldMessenger.of(context).showSnackBar(
            Authentication.customSnackBar(
              content:
              'Error occurred while accessing credentials. Try again.',
            ),
          );
        }
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          Authentication.customSnackBar(
            content: 'Error occurred using Google Sign-In. Try again.',
          ),
        );
      }
    }

    return user;
  }
}*/
