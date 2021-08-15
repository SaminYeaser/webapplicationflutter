import 'package:flutter/material.dart';
import 'package:webapplicationflutter/widgets/custom_texts.dart';

class Driver extends StatelessWidget {
  const Driver({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Customtext(text: 'Drivers',),
    );
  }
}
