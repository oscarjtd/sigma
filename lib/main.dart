import 'package:flutter/material.dart';
import 'package:pasantia/screens/main/login.dart';

import 'screens/main/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const Login(),
        routes: <String, WidgetBuilder>{
          MainPage.routeName: (BuildContext context) => const MainPage(),
          Login.routeName: (BuildContext context) => const Login(),
        });
  }
}
