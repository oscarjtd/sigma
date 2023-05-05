// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pasantia/responsive.dart';
import 'package:pasantia/main.dart';
import 'package:pasantia/screens/main/components/loginDesktop.dart';
import 'package:pasantia/screens/main/components/loginMobile.dart';
import 'package:pasantia/screens/main/components/loginTablet.dart';
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
            desktop: LoginDesktop(),
            tablet: LoginTablet(),
            mobile: LoginMobile()));
  }
}
