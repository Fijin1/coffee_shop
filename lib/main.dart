import 'package:coffee_shop/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var height;
var width;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: splashscreen() ,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
    );
  }
}
