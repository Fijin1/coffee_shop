import 'package:coffee_shop/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'firebase_options.dart';

var w;
var h;
var userName;
String? userEmail;
var userImg;
var UserId;
bool? google;
var CurrentUserStatus;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    w=MediaQuery.of(context).size.width;
    h=MediaQuery.of(context).size.height;


    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: splashscreen() ,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
    );
  }
}
