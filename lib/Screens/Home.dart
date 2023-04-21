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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Row(
        children: [
           Expanded(
            flex: size.width > 1340 ? 1 : 2,
            child: const NavBar(),
          ),
          Expanded(
            flex: size.width > 1340 ? 4 : 6,
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
    );
  }
}
