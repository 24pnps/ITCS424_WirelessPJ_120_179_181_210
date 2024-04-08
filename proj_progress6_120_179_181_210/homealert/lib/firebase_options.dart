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
    apiKey: 'AIzaSyArd8_NS1a-ZyyslEYk3xJZHb1XntKtBXQ',
    appId: '1:470595759886:web:2d89e72a8d9efb0654315f',
    messagingSenderId: '470595759886',
    projectId: 'wireless-project-app',
    authDomain: 'wireless-project-app.firebaseapp.com',
    storageBucket: 'wireless-project-app.appspot.com',
    measurementId: 'G-Y27VWGPW1R',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAI46DpK93wRSf0ssTCc9qPW_9fxzGsCdg',
    appId: '1:470595759886:android:fc3b6f40f484efcf54315f',
    messagingSenderId: '470595759886',
    projectId: 'wireless-project-app',
    storageBucket: 'wireless-project-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDQsu9Eb1hLmwg8ZLnHoEOEdA0f97ak92U',
    appId: '1:470595759886:ios:6deb7522e58fe9c354315f',
    messagingSenderId: '470595759886',
    projectId: 'wireless-project-app',
    storageBucket: 'wireless-project-app.appspot.com',
    iosBundleId: 'com.example.googleMapsYt',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDQsu9Eb1hLmwg8ZLnHoEOEdA0f97ak92U',
    appId: '1:470595759886:ios:a47ef3ff2905424f54315f',
    messagingSenderId: '470595759886',
    projectId: 'wireless-project-app',
    storageBucket: 'wireless-project-app.appspot.com',
    iosBundleId: 'com.example.googleMapsYt.RunnerTests',
  );
}
