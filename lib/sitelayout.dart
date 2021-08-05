import 'package:flutter/material.dart';
import 'package:webapplicationflutter/helper/responsiveness.dart';
import 'package:webapplicationflutter/widgets/large_screen.dart';
import 'package:webapplicationflutter/widgets/small_screen.dart';

class Sitelayout extends StatelessWidget {
  const Sitelayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.white,
      ),
      body: Responsiveness(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
        mediumScreen: null,
      ),
    );
  }
}
