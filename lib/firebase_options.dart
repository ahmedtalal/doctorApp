// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyC8gve8VVuRc51uWKxHm6uY4Ggb5-jyvO4',
    appId: '1:233745442938:web:583a1017a37e13ac1df3c3',
    messagingSenderId: '233745442938',
    projectId: 'doctorapp-807e7',
    authDomain: 'doctorapp-807e7.firebaseapp.com',
    storageBucket: 'doctorapp-807e7.appspot.com',
    measurementId: 'G-FKP37GSEK3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAWcRJ_ELdtgUlCYOrI7znb7MxtH4YKfug',
    appId: '1:233745442938:android:1f07638fadf49dd01df3c3',
    messagingSenderId: '233745442938',
    projectId: 'doctorapp-807e7',
    storageBucket: 'doctorapp-807e7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCupjBoZnu9XLCHnJkELpn_4jkaCa6_1iE',
    appId: '1:233745442938:ios:b85e8b1b452f529a1df3c3',
    messagingSenderId: '233745442938',
    projectId: 'doctorapp-807e7',
    storageBucket: 'doctorapp-807e7.appspot.com',
    iosBundleId: 'code.rexen.doctorApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCupjBoZnu9XLCHnJkELpn_4jkaCa6_1iE',
    appId: '1:233745442938:ios:0a4acd13abf6d5781df3c3',
    messagingSenderId: '233745442938',
    projectId: 'doctorapp-807e7',
    storageBucket: 'doctorapp-807e7.appspot.com',
    iosBundleId: 'code.rexen.doctorApp.RunnerTests',
  );
}
