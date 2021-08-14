import 'package:flutter/material.dart';

const int largeScreenSize = 1366;
const int mediumScreenSize = 768;
const int smallScreenSize = 360;
const int customScreenSize = 1100;

class Responsiveness extends StatelessWidget {
  final Widget? mediumScreen;
  final Widget? smallScreen;
  final Widget? largeScreen;
  final Widget? customScreen;

  const Responsiveness(
      {Key? key,
      this.mediumScreen,
      this.smallScreen,
      this.largeScreen,
      this.customScreen})
      : super(key: key);

  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < mediumScreenSize;

  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= largeScreenSize;

  static bool isMediumScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= mediumScreenSize &&
      MediaQuery.of(context).size.width < largeScreenSize;

  static bool isCustomScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= mediumScreenSize &&
      MediaQuery.of(context).size.width <= customScreenSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double _width = constraints.maxWidth;
      if (_width >= largeScreenSize) {
        return Container(child: largeScreen);
      } else if (_width < largeScreenSize && _width >= mediumScreenSize) {
        return Container(child: mediumScreen ?? largeScreen);
      } else {
        return Container(
          child: smallScreen ?? largeScreen,
        );
      }
    });
  }
}
