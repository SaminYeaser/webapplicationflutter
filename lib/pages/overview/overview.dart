import 'package:flutter/material.dart';
import 'package:webapplicationflutter/widgets/custom_texts.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Customtext(text: 'OverView',),
    );
  }
}
