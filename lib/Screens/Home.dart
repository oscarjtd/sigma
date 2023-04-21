import 'package:flutter/material.dart';
import 'package:pasantia/Widgets/NavBar.dart';


class MainPage extends StatefulWidget {
  static String routeName = "MainPage";
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();

  
}
class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          
        ),
      ),
    );
  }
}
