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
    apiKey: 'AIzaSyBYU54FuiPvZped6ah2-HPyk90VlLj6PAY',
    appId: '1:352634689140:web:a6dbceef15a8cee4302321',
    messagingSenderId: '352634689140',
    projectId: 'rsp-database',
    authDomain: 'rsp-database.firebaseapp.com',
    databaseURL: 'https://rsp-database-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'rsp-database.appspot.com',
    measurementId: 'G-H36LELQPTX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAxpDOOB2fJ1camuUqEom7yQbFKloHbm5U',
    appId: '1:352634689140:android:e664cf7deb86368f302321',
    messagingSenderId: '352634689140',
    projectId: 'rsp-database',
    databaseURL: 'https://rsp-database-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'rsp-database.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB4u-U5KSL348nFm7TISVXgZ02t7VhuNqU',
    appId: '1:352634689140:ios:0b1836927e30a97b302321',
    messagingSenderId: '352634689140',
    projectId: 'rsp-database',
    databaseURL: 'https://rsp-database-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'rsp-database.appspot.com',
    iosClientId: '352634689140-t7r2spp58l6i8vc87rhhdlbkrhdrhcb6.apps.googleusercontent.com',
    iosBundleId: 'com.example.rsp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB4u-U5KSL348nFm7TISVXgZ02t7VhuNqU',
    appId: '1:352634689140:ios:0b1836927e30a97b302321',
    messagingSenderId: '352634689140',
    projectId: 'rsp-database',
    databaseURL: 'https://rsp-database-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'rsp-database.appspot.com',
    iosClientId: '352634689140-t7r2spp58l6i8vc87rhhdlbkrhdrhcb6.apps.googleusercontent.com',
    iosBundleId: 'com.example.rsp',
  );
}
