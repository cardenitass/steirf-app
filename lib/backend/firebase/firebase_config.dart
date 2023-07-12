import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA_RcjnbOMa-hqBnALIsLKYt1FVInwSSxg",
            authDomain: "steirfappbd.firebaseapp.com",
            projectId: "steirfappbd",
            storageBucket: "steirfappbd.appspot.com",
            messagingSenderId: "206822707826",
            appId: "1:206822707826:web:ef1db94cdd1f5da12da8eb",
            measurementId: "G-24XMXE8R98"));
  } else {
    await Firebase.initializeApp();
  }
}
