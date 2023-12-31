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
    apiKey: 'AIzaSyCkWgBACSaeLn-NKY3O8n3Gb9_Ce_KeYUg',
    appId: '1:601113886344:web:9e442536a590b7e367e93d',
    messagingSenderId: '601113886344',
    projectId: 'loginflutter-5f8c5',
    authDomain: 'loginflutter-5f8c5.firebaseapp.com',
    storageBucket: 'loginflutter-5f8c5.appspot.com',
    measurementId: 'G-5DZY334WFS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCa9wq_bTDnqi5pC6fTkrq8c109eyxSG3A',
    appId: '1:601113886344:android:9fae21f783b5de7a67e93d',
    messagingSenderId: '601113886344',
    projectId: 'loginflutter-5f8c5',
    storageBucket: 'loginflutter-5f8c5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDerqTu6U4v8mYjR6PTDHNJwc_e-rc4_f8',
    appId: '1:601113886344:ios:d1fe9454058d700267e93d',
    messagingSenderId: '601113886344',
    projectId: 'loginflutter-5f8c5',
    storageBucket: 'loginflutter-5f8c5.appspot.com',
    iosClientId: '601113886344-nc9e7u727fh9oqhrnrrgohpth63vb33m.apps.googleusercontent.com',
    iosBundleId: 'com.example.soyuab',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDerqTu6U4v8mYjR6PTDHNJwc_e-rc4_f8',
    appId: '1:601113886344:ios:326041c2ef43aa6a67e93d',
    messagingSenderId: '601113886344',
    projectId: 'loginflutter-5f8c5',
    storageBucket: 'loginflutter-5f8c5.appspot.com',
    iosClientId: '601113886344-65pmuj6ddorqoq0qnvl5i36r2q2jc4r8.apps.googleusercontent.com',
    iosBundleId: 'com.example.soyuab.RunnerTests',
  );
}
