import 'package:flutter/material.dart';
import 'package:subtitle_game/shivani/screens/apis/google_signin_apis.dart';
import 'package:subtitle_game/shivani/screens/levels/level1.dart';
import 'package:subtitle_game/shivani/screens/models/google_signin_model.dart';

import 'google_signin/authentication.dart';

class CustomGoogleSignInButton extends StatefulWidget {
  const CustomGoogleSignInButton({super.key});

  @override
  State<CustomGoogleSignInButton> createState() =>
      _CustomGoogleSignInButtonState();
}

class _CustomGoogleSignInButtonState extends State<CustomGoogleSignInButton> {
  bool _isLoading = false;

  GoogleSignInModel? response;

  @override
  Widget build(BuildContext context) {
    // return  InkWell(
    // onTap: () async {
    //    var snackBar = const SnackBar(content: Text('Login Unsuccessful'));
    //    var snackBar1 = const SnackBar(content: Text('Login Successful'));
    //
    //   final auth = await GoogleSignInClass().login();
    //   setState(() {
    //
    //     _isLoading = true;
    //   });
    //   googleSignInApi(idToken: auth.idToken.toString()).then((value) {
    //      //if( value == true){
    //       setState(() {
    //         response = GoogleSignInModel.fromJson(value);
    //         //_isLoading  = false;
    //       });
    //      // ScaffoldMessenger.of(context).showSnackBar(snackBar1);
    //       Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LevelScreen1() ));
    //    // }
    //     /*else{
    //       setState(() {
    //         _isLoading = false;
    //       });
    //       ScaffoldMessenger.of(context).showSnackBar(snackBar);
    //
    //     }*/
    //
    //
    //   });
    //
    //
    //
    //
    // //  log(auth.idToken!.length.toString());
    // },
    //

    // child:
    return Row(
      children: [
        const SizedBox(
          width: 80,
        ),
        Image.asset(
          'assets/images/google_logo.png',
          height: 20,
        ),
        const SizedBox(width: 20),
        ElevatedButton(
          onPressed: () async {
            final auth = await GoogleSignInClass().login();
            setState(() {
              _isLoading = true;
            });
            googleSignInApi(idToken: auth.idToken.toString()).then((value) {
              //if( value == true){
              setState(() {
                response = GoogleSignInModel.fromJson(value);
                //_isLoading  = false;
              });
              // ScaffoldMessenger.of(context).showSnackBar(snackBar1);
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const LevelScreen1()));
              // }
              /*else{
            setState(() {
              _isLoading = false;
            });
            ScaffoldMessenger.of(context).showSnackBar(snackBar);

          }*/
            });
          },
          child: const Text('Sign up using Google'),
        ),
      ],
    );
    //);
  }
}
