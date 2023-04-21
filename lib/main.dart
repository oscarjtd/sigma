import 'package:flutter/material.dart';
import 'package:pasantia/Screens/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
   @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(
      home: const MainPage(),
      routes: <String, WidgetBuilder>{
        MainPage.routeName: (BuildContext context) =>  const MainPage(),
      }
    );
  }
}