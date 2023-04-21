// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Resposive extends StatelessWidget {
  final Widget desktop;
  final Widget tablet;
  final Widget mobile;

  const Resposive({
    required Key key,
    required this.desktop,
    required this.tablet,
    required this.mobile,
  }) : super(key: key);

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 650;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 650;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= 1100) {
        return desktop;
      } else if (constraints.maxWidth >= 650) {
        return tablet;
      } else {
        return mobile;
      }
    });
  }
}
