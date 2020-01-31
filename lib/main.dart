import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'UI/search_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SplashPage(),
    );
  }
}

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return  SplashScreen(
        seconds: 5,
        navigateAfterSeconds:  SearchPage(),

        image:  Image.asset("assets/splash.png"),
        backgroundColor: Color(0xff76B143),
        styleTextUnderTheLoader: TextStyle(),
        photoSize: 100.0,
        loadingText: Text("V 1.0",style: TextStyle(fontSize: 12.0,color: Colors.white),),
        loaderColor: Colors.red
    );
  }
}
