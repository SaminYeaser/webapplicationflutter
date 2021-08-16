import 'package:flutter/material.dart';

import 'infoCard.dart';

class OverViewMedium extends StatelessWidget {
  const OverViewMedium({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
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
          ],
        ),
        Row(
          children: [
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
          ],
        )
      ],
    );
  }
}
