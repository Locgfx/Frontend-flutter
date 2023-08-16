import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:speech_to_text/speech_recognition_result.dart';

import '../google_signin/authentication.dart';
import '../login.dart';
import 'level5.dart';


 class LevelScreen4 extends StatefulWidget {
   const LevelScreen4({super.key});

   @override
   State<LevelScreen4> createState() => _LevelScreen4State();
 }

 class _LevelScreen4State extends State<LevelScreen4> {

   final SpeechToText _speechToText = SpeechToText();

   bool _speechEnabled = false;
   String _lastWords = '';
   String dummyText = 'You are enough just as you are';


   void _initSpeech() async {
     _speechEnabled = await _speechToText.initialize();
     setState(() {});
   }

   void _startListening() async {
     await _speechToText.listen(onResult: _onSpeechResult);
     setState(() {});
   }

   void _stopListening() async {
     await _speechToText.stop();
     setState(() {});
   }

   void _onSpeechResult(SpeechRecognitionResult result) {
     setState(() {
       _lastWords = result.recognizedWords;

       if(_lastWords.toLowerCase().trim() == dummyText.toLowerCase().trim())
       {
         Navigator.push(context, MaterialPageRoute(builder: (context) => LevelScreen5()));
       }
       else{
         Text('error');
       }
       print(_lastWords);
       print(dummyText);
     });
   }
   @override
   void initState() {

     super.initState();
     _initSpeech();
   }
   @override
   Widget build(BuildContext context) {
     return Scaffold(

       appBar: AppBar(

         automaticallyImplyLeading: false,
         title:  Text(''),
         actions: [
           TextButton(
               onPressed: (){
                 GoogleSignInClass().logOut();
                 setState(() {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                 });
               },
               child: const Text(
                 'Logout',
                 style: TextStyle(color: Colors.black),
               ))
         ],
       ),
       body: Center(
         child: Column(
           children: [
             const SizedBox(
               height: 20,
             ),
             const Text(
               'Break the Stutter',
               style: TextStyle(
                 fontSize: 32,
                 fontWeight: FontWeight.w100,
               ),
             ),
             const SizedBox(
               height: 20,
             ),

             // levels
             const Text(
               'Level 4',
               style: TextStyle(
                 fontWeight: FontWeight.w500,
                 fontSize: 24,
               ),
             ),
             const SizedBox(
               height: 60,
             ),

             //empty space
             const SizedBox(height: 20),
             // read text
             const Text(
               'Read:',
               style: TextStyle(
                 fontWeight: FontWeight.w300,
                 fontSize: 24,
               ),
             ),

             const SizedBox(height: 16),
             SizedBox(
               width: 300,
               child: Text(
                 dummyText,
                 textAlign: TextAlign.center,
                 style: TextStyle(
                   fontSize: 18,
                 ),
               ),
             ),
             //empty space
             const SizedBox(
               height: 50,
             ),

             const SizedBox(
               height: 50,
             ),
             const Text(
               'Subtitles:',
               style: TextStyle(
                 fontWeight: FontWeight.w300,
                 fontSize: 24,
               ),
             ),
             const SizedBox(
               height: 10,
             ),

             Container(
               padding: const EdgeInsets.all(16),
               child: Text(
                 // If listening is active show the recognized words
                   _speechToText.isListening
                       ? _lastWords
                   // If listening isn't active but could be tell the user
                   // how to start it, otherwise indicate that speech
                   // recognition is not yet ready or not supported on
                   // the target device
                       : ''
                 /*_speechEnabled
                    ? 'Tap the microphone to start listening...'
                    : 'Speech not available',
 */             ),
             ),
             /*SizedBox(
              width: 300,
              child: ValueListenableBuilder<String>(
                valueListenable: textNotifier,
                builder: (context, value, child) {
                  return Text(
                    value,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                      fontSize: 12,
                    ),
                  );
                },
              ),
            ),*/
             const SizedBox(
               height: 50,
             ),
             const Text(
               'Suggestion',
               textAlign: TextAlign.center,
               style: TextStyle(
                 fontWeight: FontWeight.w300,
                 fontStyle: FontStyle.italic,
                 fontSize: 12,
               ),
             ),
             const SizedBox(
               width: 300,
               child: Text(
                 'enough , just',
                 textAlign: TextAlign.center,
                 style: TextStyle(
                     fontSize: 18,
                     fontStyle: FontStyle.italic,
                     fontWeight: FontWeight.w300),
               ),
             ),


           ],
         ),
       ),
       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
       floatingActionButton: FloatingActionButton(
         backgroundColor: Colors.blue,
         //shape: RoundedRectangleBorder,
         onPressed:
         // If not yet listening for speech start, otherwise stop
         _speechToText.isNotListening ? _startListening : _stopListening,
         tooltip: 'Listen',
         child: Icon(_speechToText.isNotListening ? Icons.mic_off : Icons.mic),
       ),
     );
   }
 }

