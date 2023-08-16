// import 'package:avatar_glow/avatar_glow.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:speech_to_text/speech_to_text.dart';
// import 'package:subtitle_game/google_signin_.dart';
//
// class MyLevel1 extends StatefulWidget {
//   const MyLevel1({super.key});
//
//   @override
//   State<MyLevel1> createState() => MyLevel1State();
// }
//
// class MyLevel1State extends State<MyLevel1> {
//   final String _dummyText = 'The quick brown fox jumps over the lazy dog.';
//   SpeechToText speechToText = SpeechToText();
//   ValueNotifier<String> textNotifier = ValueNotifier<String>('');
//   final user = FirebaseAuth.instance.currentUser!;
//   var text = '';
//   var isListening = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//       floatingActionButton: AvatarGlow(
//         endRadius: 55,
//         animate: isListening,
//         repeat: true,
//         repeatPauseDuration: const Duration(milliseconds: 100),
//         showTwoGlows: true,
//         glowColor: Colors.blue,
//         duration: const Duration(milliseconds: 2000),
//         child: GestureDetector(
//           onTapDown: (details) async {
//             if (!isListening) {
//               var available = await speechToText.initialize();
//               if (available) {
//                 setState(() {
//                   isListening = true;
//                 });
//                 isListening = true;
//                 speechToText.listen(
//                   onResult: (result) {
//                     setState(() {
//                       textNotifier.value = result.recognizedWords;
//                     });
//                   },
//                 );
//               }
//             }
//           },
//           onTapUp: (details) {
//             setState(() {
//               isListening = false;
//             });
//             speechToText.stop();
//           },
//           child: CircleAvatar(
//             backgroundColor: Colors.transparent,
//             radius: 35,
//             child: Icon(
//               isListening
//                   ? CupertinoIcons.mic_circle
//                   : CupertinoIcons.mic_circle_fill,
//               size: 70,
//               color: Colors.blue,
//             ),
//           ),
//         ),
//       ),
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         title: const Text(''),
//         actions: [
//           TextButton(
//               onPressed: () {
//                 final provider =
//                     Provider.of<GoogleSignInProvider>(context, listen: false);
//                 provider.Logout();
//               },
//               child: const Text(
//                 'Logout',
//                 style: TextStyle(color: Colors.white),
//               ))
//         ],
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             const SizedBox(
//               height: 20,
//             ),
//             const Text(
//               'Break the Stutter',
//               style: TextStyle(
//                 fontSize: 32,
//                 fontWeight: FontWeight.w100,
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//
//             // levels
//             const Text(
//               'Level 1',
//               style: TextStyle(
//                 fontWeight: FontWeight.w500,
//                 fontSize: 24,
//               ),
//             ),
//             const SizedBox(
//               height: 60,
//             ),
//
//             //empty space
//             const SizedBox(height: 20),
//             // read text
//             const Text(
//               'Read:',
//               style: TextStyle(
//                 fontWeight: FontWeight.w300,
//                 fontSize: 24,
//               ),
//             ),
//
//             const SizedBox(height: 16),
//             SizedBox(
//               width: 300,
//               child: Text(
//                 _dummyText,
//                 textAlign: TextAlign.center,
//                 style: const TextStyle(
//                   fontSize: 18,
//                 ),
//               ),
//             ),
//             //empty space
//             const SizedBox(
//               height: 50,
//             ),
//
//             const SizedBox(
//               height: 50,
//             ),
//             const Text(
//               'Subtitles:',
//               style: TextStyle(
//                 fontWeight: FontWeight.w300,
//                 fontSize: 24,
//               ),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             SizedBox(
//               width: 300,
//               child: ValueListenableBuilder<String>(
//                 valueListenable: textNotifier,
//                 builder: (context, value, child) {
//                   return Text(
//                     value,
//                     textAlign: TextAlign.center,
//                     style: const TextStyle(
//                       fontWeight: FontWeight.w300,
//                       fontStyle: FontStyle.italic,
//                       fontSize: 12,
//                     ),
//                   );
//                 },
//               ),
//             ),
//             const SizedBox(
//               height: 50,
//             ),
//             const Text(
//               'Suggestion',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontWeight: FontWeight.w300,
//                 fontStyle: FontStyle.italic,
//                 fontSize: 12,
//               ),
//             ),
//             const SizedBox(
//               width: 300,
//               child: Text(
//                 'quick , over',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                     fontSize: 18,
//                     fontStyle: FontStyle.italic,
//                     fontWeight: FontWeight.w300),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
