import 'package:flutter/material.dart';
import 'package:pasantia/Widgets/testForm.dart';
import 'package:pasantia/Widgets/userFrom.dart';
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
                  onTap: () => LTonTap(userForm()),
                  title: const Text("Crear usuario"),
                )),
                Expanded(
                    child: ListTile(
                  onTap: () => LTonTap(""),
                  title: Text("Modificar Usuario"),
                )),
                Expanded(
                    child: ListTile(
                  onTap: () => LTonTap(""),
                  title: Text("Eliminar usuario"),
                )),
                                Expanded(
                    child: ListTile(
                  onTap: () => LTonTap(""),
                  title: Text("Listar usuarios"),
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
                "Scope",
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
                  onTap: () => LTonTap(""),
                  title: Text("Crear"),
                )),
                Expanded(
                    child: ListTile(
                  onTap: () => LTonTap(""),
                  title: Text("Actualizar"),
                )),
                Expanded(
                    child: ListTile(
                  onTap: () => LTonTap(""),
                  title: Text("Actualizar"),
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
                "Rol",
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
                  onTap: () => LTonTap( ""),
                  title: Text("Crear"),
                )),
                Expanded(
                    child: ListTile(
                  onTap: () => LTonTap(""),
                  title: Text("Eliminar"),
                )),
                Expanded(
                    child: ListTile(
                  onTap: () => LTonTap(""),
                  title: Text("Actualizar"),
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

  void LTonTap(var form) {
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation1, animation2) => const MainPage(),
        transitionDuration: Duration.zero,
        reverseTransitionDuration: Duration.zero,
      ),
    );
    MainPage.form = form;
  }
}
