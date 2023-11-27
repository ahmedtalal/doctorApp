import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class FirebaseConfig{
  static FirebaseConfig? _firebaseConfig;
   FirebaseConfig._internal();
  static FirebaseConfig instance(){
    if (_firebaseConfig == null) {
      return _firebaseConfig = FirebaseConfig._internal();
    }
    return _firebaseConfig!;
  }

  Future<void> initFirebase()async{
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  }
}