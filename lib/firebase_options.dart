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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyBjLktQ1hwL49o0dhtBjS2SQIlaF3AMLKI',
    appId: '1:421265513975:web:bfaa7c5c5e119140bf22f2',
    messagingSenderId: '421265513975',
    projectId: 'movieapp-db742',
    authDomain: 'movieapp-db742.firebaseapp.com',
    databaseURL: 'https://movieapp-db742-default-rtdb.firebaseio.com',
    storageBucket: 'movieapp-db742.firebasestorage.app',
    measurementId: 'G-1E16Z66P62',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBgACkzMckzWD9PbUtWd_XEoMG_c6ro5dE',
    appId: '1:421265513975:android:3c752a1274bd13bfbf22f2',
    messagingSenderId: '421265513975',
    projectId: 'movieapp-db742',
    databaseURL: 'https://movieapp-db742-default-rtdb.firebaseio.com',
    storageBucket: 'movieapp-db742.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD5BkAlWI7whFmCnbj-xzFtJfhLSh1ZNlY',
    appId: '1:421265513975:ios:3659dbbe239c8d1dbf22f2',
    messagingSenderId: '421265513975',
    projectId: 'movieapp-db742',
    databaseURL: 'https://movieapp-db742-default-rtdb.firebaseio.com',
    storageBucket: 'movieapp-db742.firebasestorage.app',
    iosBundleId: 'com.example.flutterApplication',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD5BkAlWI7whFmCnbj-xzFtJfhLSh1ZNlY',
    appId: '1:421265513975:ios:3659dbbe239c8d1dbf22f2',
    messagingSenderId: '421265513975',
    projectId: 'movieapp-db742',
    databaseURL: 'https://movieapp-db742-default-rtdb.firebaseio.com',
    storageBucket: 'movieapp-db742.firebasestorage.app',
    iosBundleId: 'com.example.flutterApplication',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyB4dhGyf5YNCmEKTgUSTSEyj788KPDu5D8',
    appId: '1:421265513975:web:b9cde739d546f328bf22f2',
    messagingSenderId: '421265513975',
    projectId: 'movieapp-db742',
    authDomain: 'movieapp-db742.firebaseapp.com',
    databaseURL: 'https://movieapp-db742-default-rtdb.firebaseio.com',
    storageBucket: 'movieapp-db742.firebasestorage.app',
    measurementId: 'G-L010RP8N81',
  );
}
