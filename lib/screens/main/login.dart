// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pasantia/responsive.dart';
import 'package:pasantia/main.dart';
import 'package:pasantia/screens/main/components/loginMobile.dart';
import 'home.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  static String routeName = "Login";

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _loginFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
        body: Resposive(
            desktop: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text("Hola"),
                ),
                Expanded(
                  flex: 1,
                  child: Text("Adios"),
                ),
              ],
            ),
            tablet: Container(color: Colors.black),
            mobile: Expanded(flex: 1, child: LoginMobile())));
  }
}


                   /*
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 10.0),
                              width: 350,
                              height: 70,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.popAndPushNamed(
                                      context, MainPage.routeName);
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(200, 168, 207, 69),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                child: Text(
                                  'Ingresar',
                                  style: TextStyle(
                                      color: Colors.black,
                                      letterSpacing: 1.5,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'OpenSans'),
                                ),
                              ),
                            ),
                            */