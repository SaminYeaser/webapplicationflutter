import 'package:flutter/material.dart';
import 'package:webapplicationflutter/pages/overview/widgets/infoCardSmall.dart';

class OverViewSmall extends StatelessWidget {
  const OverViewSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      height: 400,
      child: Column(
        children: [
          InfoCardSmall(
            title: 'Rides in Progress',
            value: '7',
            onTap: (){},
            topColor: Colors.orange,
          ),
          SizedBox(
            width: _width/64,
          ),
          InfoCardSmall(
            title: 'Packages Delivered',
            value: '17',
            onTap: (){},
            topColor: Colors.lightGreen,
          ),
          SizedBox(
            width: _width/64,
          ),
          InfoCardSmall(
            title: 'Schedule Delivers',
            value: '5',
            onTap: (){},
            topColor: Colors.orangeAccent,
          ),
          SizedBox(
            width: _width/64,
          ),
          InfoCardSmall(
            title: 'Cancel Orders',
            value: '3',
            onTap: (){},
            topColor: Colors.redAccent,
          ),
          SizedBox(
            width: _width/64,
          ),
        ],
      ),
    );
  }
}
