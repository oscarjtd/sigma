import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pasantia/screens/main/components/forgotPasswordDesktop.dart';
import 'package:pasantia/screens/main/components/forgotPasswordMobile.dart';
import 'package:pasantia/screens/main/components/forgotPasswordTablet.dart';

import '../../responsive.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});
  static String routeName = "/forgetPassword";

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return const Scaffold(
        body: Responsive(
            desktop: Expanded(flex: 1, child: ForgotPasswordDesktop()),
            tablet: Expanded(flex: 1, child: ForgotPasswordTablet()),
            mobile: Expanded(flex: 1, child: ForgotPasswordMobile())));
  }
}
