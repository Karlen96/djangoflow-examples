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
    apiKey: 'AIzaSyBQ4ufmLHz8cN2Iek-lMhB2KwNvgfNbBdU',
    appId: '1:130766043566:web:2d151b988106e21fa9b03f',
    messagingSenderId: '130766043566',
    projectId: 'djangoflow-examples',
    authDomain: 'djangoflow-examples.firebaseapp.com',
    storageBucket: 'djangoflow-examples.appspot.com',
    measurementId: 'G-5LB3ZERRP7',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAmDlD3OZuxjPEiZ6pqPV2LRK8l-FFbgJE',
    appId: '1:130766043566:android:b0a6ba4eafff9931a9b03f',
    messagingSenderId: '130766043566',
    projectId: 'djangoflow-examples',
    storageBucket: 'djangoflow-examples.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCAXzD2GTZegRoIxR4THGOaQomgYmZym8g',
    appId: '1:130766043566:ios:8b0cbe045ea07a75a9b03f',
    messagingSenderId: '130766043566',
    projectId: 'djangoflow-examples',
    storageBucket: 'djangoflow-examples.appspot.com',
    androidClientId: '130766043566-jlj50duh60ggvtkdpeuqsacg64d307da.apps.googleusercontent.com',
    iosClientId: '130766043566-caoiq41v8lof0ivqmjhkl5mc5osk9ek4.apps.googleusercontent.com',
    iosBundleId: 'com.djangoflow.simpleAuth',
  );
}