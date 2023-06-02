// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:pasantia/Widgets/NavBar.dart';
import 'package:pasantia/Widgets/testForm.dart';
import 'package:pasantia/responsive.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  static String routeName = "/MainPage";
  static String testform = "";
  static List items = ["", "", "", ""];
  
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawer: const NavBar(),
        body: Responsive(
          tablet: Row(children: const [
            Expanded(
              flex: 1,
              child: NavBar(),
            ),
            Expanded(flex: 4, child: HomepageBody()),
          ]),
          mobile: Row(children: [
            Column(
              children: [
                IconButton(
                    onPressed: () {
                      _scaffoldKey.currentState?.openDrawer();
                    },
                    icon: const Icon(Icons.menu)),
              ],
            ),
            const Expanded(flex: 1, child: HomepageBody()),
          ]),
          desktop: Row(
            children: const [
              Expanded(
                flex: 1,
                child: NavBar(),
              ),
              Expanded(flex: 4, child: HomepageBody()),
            ],
          ),
        ));
  }
}

class HomepageBody extends StatefulWidget {
  const HomepageBody({super.key});

  @override
  State<HomepageBody> createState() => _HomepageBodyState();
}

class _HomepageBodyState extends State<HomepageBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 188, 217, 219),
            Color.fromARGB(255, 97, 130, 145),
          ]),
          image: DecorationImage(
            opacity: 0.1,
            image: AssetImage("images/background.png"),
            fit: BoxFit.cover,
          )),
      child: ListView.builder(
        itemCount: MainPage.items.length,
        itemBuilder: (context, index) {
          if (MainPage.testform== "") {
            return ListTile(
              title: Text(
                MainPage.items[index],
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            );
          }else{ return SizedBox(height: 300, child: SimpleForm());}
           
          
        },
      ),
    );
  }
}
