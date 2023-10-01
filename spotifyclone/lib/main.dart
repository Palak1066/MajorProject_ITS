import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:spotifyclone/login.dart';
import 'login.dart';
import 'homepg.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyD_flKaxZYtHTbRt6tB7z2U8VHi9dJ0nBs",
        appId: "1:1054455157359:web:c5a3e68ea2ac636d47f39a",
        messagingSenderId: "1054455157359",
        projectId: "spotiyclone-48a67"
    )
  );
  runApp(Log());
}


// class Hello extends StatelessWidget {
//   const Hello({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Home(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }
