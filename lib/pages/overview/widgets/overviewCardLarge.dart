import 'package:flutter/material.dart';
import 'package:webapplicationflutter/pages/overview/widgets/infoCard.dart';

class OverViewLarge extends StatelessWidget {
  const OverViewLarge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        InfoCard(
          title: 'Rides in Progress',
          value: '7',
          onTap: (){},
          topColor: Colors.orange,
        ),
        SizedBox(
          width: _width/64,
        ),
        InfoCard(
          title: 'Packages Delivered',
          value: '17',
          onTap: (){},
          topColor: Colors.lightGreen,
        ),
        SizedBox(
          width: _width/64,
        ),
        InfoCard(
          title: 'Schedule Delivers',
          value: '5',
          onTap: (){},
          topColor: Colors.orangeAccent,
        ),
        SizedBox(
          width: _width/64,
        ),
        InfoCard(
          title: 'Cancel Orders',
          value: '3',
          onTap: (){},
          topColor: Colors.redAccent,
        ),
        SizedBox(
          width: _width/64,
        ),
      ],
    );
  }
}
