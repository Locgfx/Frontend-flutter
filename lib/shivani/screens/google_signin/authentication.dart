// class Authentication {
//   static Future<User?> signInWithGoogle({required BuildContext context}) async {
//     FirebaseAuth auth = FirebaseAuth.instance;
//     User? user;
//
//     final GoogleSignIn googleSignIn = GoogleSignIn();
//
//     final GoogleSignInAccount? googleSignInAccount =
//     await googleSignIn.signIn();
//
//     if (googleSignInAccount != null) {
//       final GoogleSignInAuthentication googleSignInAuthentication =
//       await googleSignInAccount.authentication;
//
//       final AuthCredential credential = GoogleAuthProvider.credential(
//         accessToken: googleSignInAuthentication.accessToken,
//         idToken: googleSignInAuthentication.idToken,
//       );
//
//       try {
//         final UserCredential userCredential =
//         await auth.signInWithCredential(credential);
//
//         user = userCredential.user;
//       } on FirebaseAuthException catch (e) {
//         if (e.code == 'account-exists-with-different-credential') {
//           ScaffoldMessenger.of(context).showSnackBar(
//             Authentication.customSnackBar(
//               content:
//               'The account already exists with a different credential.',
//             ),
//           );
//         }
//         else if (e.code == 'invalid-credential') {
//           ScaffoldMessenger.of(context).showSnackBar(
//             Authentication.customSnackBar(
//               content:
//               'Error occurred while accessing credentials. Try again.',
//             ),
//           );
//         }
//       } catch (e) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           Authentication.customSnackBar(
//             content: 'Error occurred using Google Sign-In. Try again.',
//           ),
//         );
//       }
//     }
//
//     return user;
//   }
// }

import 'dart:developer';

import 'package:google_sign_in/google_sign_in.dart';


class GoogleSignInClass {
  final GoogleSignIn _googleSignIn = GoogleSignIn();


  Future logOut() => _googleSignIn.signOut();


  Future<GoogleSignInAuthentication> login() async {
    GoogleSignInAuthentication auth;
    GoogleSignInAccount? account = await _googleSignIn.signIn();

    if (account == null) {
      throw Exception();
    } else {
      auth = await account.authentication;
    }
    //log(auth.idToken.toString());
    //log(_googleSignIn);
    log(auth.idToken!.toString());
    //log(auth.accessToken!.toString());

    log(account.id);
    log(account.email);
    log(account.displayName.toString());
    log(account.photoUrl.toString());
    return auth;
  }
}





