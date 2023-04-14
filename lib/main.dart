import 'package:flutter/material.dart';
import 'package:practice04/welcome_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: true,
        title: "weather station",
       //theme: ThemeData.dark(),
        home: WelcomePage()
    );
  }

}