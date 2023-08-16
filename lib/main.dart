import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:subtitle_game/shivani/screens/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
  /*=> ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const SplashScreen(),
        ),
      );*/
}

// class DynamicContent extends StatefulWidget {
//   final Function(String) updateText;

//   const DynamicContent({Key? key, required this.updateText}) : super(key: key);

//   @override
//   DynamicContentState createState() => DynamicContentState();
// }

// class DynamicContentState extends State<DynamicContent> {
//   var isListening = false;
//   SpeechToText? speechToText;

//   @override
//   void initState() {
//     super.initState();
//     speechToText = SpeechToText();
//   }

//   @override
//   void dispose() {
//     speechToText?.cancel(); // Cancel the speech recognition session
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onLongPress: () async {
//         if (!isListening) {
//           speechToText
//               ?.cancel(); // Cancel the previous speech recognition session
//           var available = await speechToText?.initialize();
//           if (available ?? false) {
//             setState(() {
//               isListening = true;
//             });
//             speechToText?.listen(
//               onResult: (result) {
//                 setState(() {
//                   widget.updateText(
//                       result.recognizedWords); // Call the updateText callback
//                 });
//               },
//             ).then((_) {
//               Future.delayed(const Duration(milliseconds: 500), () {
//                 setState(() {
//                   isListening = false;
//                 });
//                 speechToText?.stop();
//               });
//             });
//           }
//         }
//       },
//       child: Builder(builder: (context) {
//         return Icon(
//           isListening ? Icons.mic_outlined : Icons.mic_none_sharp,
//           size: 70,
//           color: Colors.black,
//         );
//       }),
//     );
//   }
// }
