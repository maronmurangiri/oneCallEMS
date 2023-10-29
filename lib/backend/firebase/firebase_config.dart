import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDDaRJ4toGApWDeWQZxHMGmQ3F11aiP408",
            authDomain: "comradehealth-d02b4.firebaseapp.com",
            projectId: "comradehealth-d02b4",
            storageBucket: "comradehealth-d02b4.appspot.com",
            messagingSenderId: "829013516632",
            appId: "1:829013516632:web:4e8f8aa5d53feada48052d",
            measurementId: "G-2MRD604XEP"));
  } else {
    await Firebase.initializeApp();
  }
}
