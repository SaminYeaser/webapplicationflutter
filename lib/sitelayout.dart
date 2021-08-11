import 'package:flutter/material.dart';
import 'package:webapplicationflutter/helper/responsiveness.dart';
import 'package:webapplicationflutter/widgets/large_screen.dart';
import 'package:webapplicationflutter/widgets/small_screen.dart';
import 'package:webapplicationflutter/widgets/topNav.dart';

class Sitelayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(),
      body: Responsiveness(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
        mediumScreen: null,
      ),
    );
  }
}
