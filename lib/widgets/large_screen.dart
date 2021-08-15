import 'package:flutter/material.dart';
import 'package:webapplicationflutter/helper/localNavigator.dart';
import 'package:webapplicationflutter/widgets/sideMenuItems.dart';
import 'package:webapplicationflutter/widgets/sideMneu.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: SideMenu(),
        ),
        Expanded(
            flex: 5,
            child: localNavigator())
      ],
    );
  }
}
