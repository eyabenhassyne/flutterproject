import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCOL2zs4xzQ5wvuiVa21JYLHNCMlVeYMJU",
            authDomain: "forum-7586f.firebaseapp.com",
            projectId: "forum-7586f",
            storageBucket: "forum-7586f.firebasestorage.app",
            messagingSenderId: "1094465239448",
            appId: "1:1094465239448:web:0fe27cfdf2a748d38d93ed"));
  } else {
    await Firebase.initializeApp();
  }
}
