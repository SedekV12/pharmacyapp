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
    apiKey: 'AIzaSyC_ZAi6rq18GCBv88N5NxxAxEOF6ASR4FA',
    appId: '1:398120286037:web:586516a77d3375fe9f61dc',
    messagingSenderId: '398120286037',
    projectId: 'chat-app-6443e',
    authDomain: 'chat-app-6443e.firebaseapp.com',
    databaseURL: 'https://chat-app-6443e-default-rtdb.firebaseio.com',
    storageBucket: 'chat-app-6443e.appspot.com',
    measurementId: 'G-FJ1BF1XHMQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB5TkY5gFpOs2l3_kAVrpqoTSQWOyH390k',
    appId: '1:398120286037:android:20fd7f874e1d00419f61dc',
    messagingSenderId: '398120286037',
    projectId: 'chat-app-6443e',
    databaseURL: 'https://chat-app-6443e-default-rtdb.firebaseio.com',
    storageBucket: 'chat-app-6443e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC1yB9VXtGAy1l-Y1hTNpi1elqFGfXVNFo',
    appId: '1:398120286037:ios:5cba210570332ed79f61dc',
    messagingSenderId: '398120286037',
    projectId: 'chat-app-6443e',
    databaseURL: 'https://chat-app-6443e-default-rtdb.firebaseio.com',
    storageBucket: 'chat-app-6443e.appspot.com',
    iosClientId: '398120286037-khr5vdc30u6p8lbluu7rpr8280tokmdh.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC1yB9VXtGAy1l-Y1hTNpi1elqFGfXVNFo',
    appId: '1:398120286037:ios:5cba210570332ed79f61dc',
    messagingSenderId: '398120286037',
    projectId: 'chat-app-6443e',
    databaseURL: 'https://chat-app-6443e-default-rtdb.firebaseio.com',
    storageBucket: 'chat-app-6443e.appspot.com',
    iosClientId: '398120286037-khr5vdc30u6p8lbluu7rpr8280tokmdh.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatapp',
  );
}