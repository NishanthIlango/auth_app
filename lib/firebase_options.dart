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
    apiKey: 'AIzaSyApTLius0zwAZtj3JUvJw_js_QzH90ioC0',
    appId: '1:974673838899:web:64fa09d6961332d7ed7446',
    messagingSenderId: '974673838899',
    projectId: 'myprojects-8f0bd',
    authDomain: 'myprojects-8f0bd.firebaseapp.com',
    storageBucket: 'myprojects-8f0bd.appspot.com',
    measurementId: 'G-DNG1H9531C',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCpJHyy8s6i6DKVAX2vDuzcOvspKwnAqpE',
    appId: '1:974673838899:android:eb7fff7994445b5ced7446',
    messagingSenderId: '974673838899',
    projectId: 'myprojects-8f0bd',
    storageBucket: 'myprojects-8f0bd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCrH9GsKijj3wFLhu9g8jF3yVM7aBJzgQ4',
    appId: '1:974673838899:ios:632c5e5836ba3124ed7446',
    messagingSenderId: '974673838899',
    projectId: 'myprojects-8f0bd',
    storageBucket: 'myprojects-8f0bd.appspot.com',
    iosBundleId: 'com.example.authApp',
  );
}
