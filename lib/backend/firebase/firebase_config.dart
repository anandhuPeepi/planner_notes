import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDeHps-qFS4nzVAiFPIFg56IX1FCNKBZus",
            authDomain: "my-daily-planner-app-nujtrf.firebaseapp.com",
            projectId: "my-daily-planner-app-nujtrf",
            storageBucket: "my-daily-planner-app-nujtrf.appspot.com",
            messagingSenderId: "551745261741",
            appId: "1:551745261741:web:f941d9c3643b9dbe5b7624"));
  } else {
    await Firebase.initializeApp();
  }
}
