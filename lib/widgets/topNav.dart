import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webapplicationflutter/helper/responsiveness.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !Responsiveness.isSmallScreen(context)
          ? Row()
          : IconButton(
              onPressed: () {
                key.currentState!.openDrawer();
              },
              icon: Icon(Icons.menu),
            ),
      backgroundColor: Colors.white,
    );
