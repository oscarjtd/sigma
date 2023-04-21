import 'package:flutter/material.dart';
import 'package:pasantia/Widgets/NavBar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  static String routeName = "/MainPage";
  static List items = ["Opcion 1", "Opcion 1", "Opcion 1", "Opcion 1"];
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 300,
              width: 300,
              child: ListView.builder(
                itemCount: MainPage.items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(MainPage.items[index]),
                    onTap: () {},
                  );
                },
              ),
            ),
          ],
        ),
      ),
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
