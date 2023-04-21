import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

int optionsIndex = 0;

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        Container(
          width: double.infinity,
          height: 250.0,
          child: Swiper(
            itemBuilder: (context, index) {
              return Center(
                child: Text("Opcion ${index + 1}"),
              );
            },
            itemCount: 3,
            pagination: const SwiperPagination(),
            control: const SwiperControl(color: Colors.green),
            onIndexChanged: (value) {
              setState(() {
                optionsIndex = value;
              });
            },
          ),
        ),
        _navBarOption(optionsIndex)
      ],
    ));
  }
}

Widget _Swiper() {
  return Container(
    width: double.infinity,
    height: 250.0,
    child: Swiper(
      itemBuilder: (context, index) {
        return Center(
          child: Text("Opcion ${index + 1}"),
        );
      },
      itemCount: 3,
      pagination: const SwiperPagination(),
      control: const SwiperControl(color: Colors.green),
      onIndexChanged: (value) {},
    ),
  );
}

List test = [
  ["Opcion 1", "Opcion 1", "Opcion 1", "Opcion 1"],
  ["Opcion 2", "Opcion 2", "Opcion 2", "Opcion 2"],
  ["Opcion 3", "Opcion 3", "Opcion 3", "Opcion 3"]
];

Widget _navBarOption(int indexoption) {
  return SizedBox(
    height: 300,
    width: 300,
    child: ListView.builder(
      itemCount: test.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(test[indexoption][index]),
          onTap: () {
            
          },
        );
      },
    ),
  );
}
