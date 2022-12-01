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
    apiKey: 'AIzaSyBh99TlGbzKEv-61D-Hq_pzQwP-WkWVW2E',
    appId: '1:359632088749:web:76031bb1174b0aa5d12024',
    messagingSenderId: '359632088749',
    projectId: 'fir-flutter-codelab-b961f',
    authDomain: 'fir-flutter-codelab-b961f.firebaseapp.com',
    storageBucket: 'fir-flutter-codelab-b961f.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCMtVHfwzYV0itHPQhI-oFHcN0aM2CzUCQ',
    appId: '1:359632088749:android:fc102122dcf230ccd12024',
    messagingSenderId: '359632088749',
    projectId: 'fir-flutter-codelab-b961f',
    storageBucket: 'fir-flutter-codelab-b961f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCWP5X78uRA1V6JmdKXFE5Umg6HRAeZdPM',
    appId: '1:359632088749:ios:8cd118f5b9516488d12024',
    messagingSenderId: '359632088749',
    projectId: 'fir-flutter-codelab-b961f',
    storageBucket: 'fir-flutter-codelab-b961f.appspot.com',
    iosClientId: '359632088749-kuficm1ji34a3ac4pc4r4b2d6i4ja3r9.apps.googleusercontent.com',
    iosBundleId: 'com.example.start',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCWP5X78uRA1V6JmdKXFE5Umg6HRAeZdPM',
    appId: '1:359632088749:ios:8cd118f5b9516488d12024',
    messagingSenderId: '359632088749',
    projectId: 'fir-flutter-codelab-b961f',
    storageBucket: 'fir-flutter-codelab-b961f.appspot.com',
    iosClientId: '359632088749-kuficm1ji34a3ac4pc4r4b2d6i4ja3r9.apps.googleusercontent.com',
    iosBundleId: 'com.example.start',
  );
}
