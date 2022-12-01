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
    apiKey: 'AIzaSyDaLltPamnUxDiBmVXLf-pSlhWUVbXpOIU',
    appId: '1:388459311901:web:5151eb75fb03dbc4d827f4',
    messagingSenderId: '388459311901',
    projectId: 'juris-law-app',
    authDomain: 'juris-law-app.firebaseapp.com',
    storageBucket: 'juris-law-app.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD6ioSFfUQYQAt9wcWE-s-3HJyvA-TyS0o',
    appId: '1:388459311901:android:af486dd528a35e79d827f4',
    messagingSenderId: '388459311901',
    projectId: 'juris-law-app',
    storageBucket: 'juris-law-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCrXR8dzQTNlGIuf6F2d8Fzwlt3B1uVjRg',
    appId: '1:388459311901:ios:c3aa4e37f15176a3d827f4',
    messagingSenderId: '388459311901',
    projectId: 'juris-law-app',
    storageBucket: 'juris-law-app.appspot.com',
    iosClientId:
        '388459311901-1l69pck9estfbtp1gokocp3iik9efibt.apps.googleusercontent.com',
    iosBundleId: 'com.example.jurisLawApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCrXR8dzQTNlGIuf6F2d8Fzwlt3B1uVjRg',
    appId: '1:388459311901:ios:c3aa4e37f15176a3d827f4',
    messagingSenderId: '388459311901',
    projectId: 'juris-law-app',
    storageBucket: 'juris-law-app.appspot.com',
    iosClientId:
        '388459311901-1l69pck9estfbtp1gokocp3iik9efibt.apps.googleusercontent.com',
    iosBundleId: 'com.example.jurisLawApp',
  );
}