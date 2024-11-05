// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyACi_nUYlSxIVLuu1X1LXt1uMoZ8O8orhQ',
    appId: '1:5844055008:web:afd5ee88f05eb701f6f185',
    messagingSenderId: '5844055008',
    projectId: 'flutter-sexto-blog',
    authDomain: 'flutter-sexto-blog.firebaseapp.com',
    storageBucket: 'flutter-sexto-blog.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD5GcP0TAEQwvu8a9PZHkLS01Hp8kpFwvs',
    appId: '1:5844055008:android:eb5693f89f92d53df6f185',
    messagingSenderId: '5844055008',
    projectId: 'flutter-sexto-blog',
    storageBucket: 'flutter-sexto-blog.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDHYDlI_uqZ6aB7OkpqJfCELZClbndsogQ',
    appId: '1:5844055008:ios:b92a7d9240d47bd6f6f185',
    messagingSenderId: '5844055008',
    projectId: 'flutter-sexto-blog',
    storageBucket: 'flutter-sexto-blog.firebasestorage.app',
    iosBundleId: 'fisei.uta.edu.ec.blogApp',
  );

}