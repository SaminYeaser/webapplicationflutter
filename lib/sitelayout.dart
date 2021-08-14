import 'package:flutter/material.dart';
import 'package:webapplicationflutter/helper/responsiveness.dart';
import 'package:webapplicationflutter/widgets/large_screen.dart';
import 'package:webapplicationflutter/widgets/sideMenuItems.dart';

import 'package:webapplicationflutter/widgets/sideMneu.dart';
import 'package:webapplicationflutter/widgets/small_screen.dart';
import 'package:webapplicationflutter/widgets/topNav.dart';

class Sitelayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(
        child: SideMenu(),
      ),
      body: Responsiveness(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
