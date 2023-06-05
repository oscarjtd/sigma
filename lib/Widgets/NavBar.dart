import 'package:flutter/material.dart';
import 'package:pasantia/responsive.dart';

import '../screens/main/home.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});
  static List<bool> _isOpen = [false, false, false];

  @override
  State<NavBar> createState() => _NavBarState();
}

int optionsIndex = 0;

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (Responsive.isMobile(context)) const CloseButton(),
              ],
            ),
            _buildEPList(),
          ],
        ));
  }

  ExpansionPanelList _buildEPList() {
    return ExpansionPanelList(
      children: [
        ExpansionPanel(
          backgroundColor: Colors.white,
          headerBuilder: (context, isOpen) {
            return const ListTile(
              title: Text(
                "Usuario",
              ),
              leading: Icon(Icons.supervised_user_circle_outlined),
            );
          },
          isExpanded: NavBar._isOpen[0],
          body: SizedBox(
            height: 200,
            child: Column(
              children: [
                Expanded(
                    child: ListTile(
                  onTap: () => LTonTap("Usuario", "uno", "test"),
                  title: const Text("Opcion 1"),
                )),
                Expanded(
                    child: ListTile(
                  onTap: () => LTonTap("Usuario", "dos", ""),
                  title: Text("Opcion 2"),
                )),
                Expanded(
                    child: ListTile(
                  onTap: () => LTonTap("Usuario", "tres", ""),
                  title: Text("Opcion 3"),
                )),
              ],
            ),
          ),
        ),
        ExpansionPanel(
          backgroundColor: Colors.white,
          headerBuilder: (context, isOpen) {
            return const ListTile(
              title: Text(
                "Administrador",
              ),
              leading: Icon(Icons.admin_panel_settings),
            );
          },
          isExpanded: NavBar._isOpen[1],
          body: SizedBox(
            height: 200,
            child: Column(
              children: [
                Expanded(
                    child: ListTile(
                  onTap: () => LTonTap("Admin", "uno", ""),
                  title: Text("Opcion 1"),
                )),
                Expanded(
                    child: ListTile(
                  onTap: () => LTonTap("Admin", "dos", ""),
                  title: Text("Opcion 2"),
                )),
                Expanded(
                    child: ListTile(
                  onTap: () => LTonTap("Admin", "tres", ""),
                  title: Text("Opcion 3"),
                )),
              ],
            ),
          ),
        ),
        ExpansionPanel(
          backgroundColor: Colors.white,
          headerBuilder: (context, isOpen) {
            return const ListTile(
              title: Text(
                "Estudiante",
              ),
              leading: Icon(Icons.circle_notifications_outlined),
            );
          },
          isExpanded: NavBar._isOpen[2],
          body: SizedBox(
            height: 200,
            child: Column(
              children: [
                Expanded(
                    child: ListTile(
                  onTap: () => LTonTap("Estudiante", "uno", ""),
                  title: Text("Opcion 1"),
                )),
                Expanded(
                    child: ListTile(
                  onTap: () => LTonTap("Estudiante", "dos", ""),
                  title: Text("Opcion 2"),
                )),
                Expanded(
                    child: ListTile(
                  onTap: () => LTonTap("Estudiante", "tres", ""),
                  title: Text("Opcion 3"),
                )),
              ],
            ),
          ),
        ),
      ],
      expansionCallback: (i, isOpen) {
        setState(() {
          NavBar._isOpen[i] = !isOpen;
        });
      },
    );
  }

  void LTonTap(String option, String numero, String form) {
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation1, animation2) => const MainPage(),
        transitionDuration: Duration.zero,
        reverseTransitionDuration: Duration.zero,
      ),
    );
    MainPage.testform = form;
    MainPage.items = [
      "Prueba ${numero} ${option}",
    ];
  }
}
