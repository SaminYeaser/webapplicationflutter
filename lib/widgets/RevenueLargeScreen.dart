import 'package:flutter/material.dart';
import 'package:webapplicationflutter/constants/style.dart';
import 'package:webapplicationflutter/widgets/custom_texts.dart';
import 'package:webapplicationflutter/widgets/revenueInfo.dart';

import 'barChart.dart';

class RevenueLarge extends StatelessWidget {
  const RevenueLarge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(24),
        margin: EdgeInsets.symmetric(vertical: 30),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 6),
                  color: lightGrey.withOpacity(.1),
                  blurRadius: 12)
            ],
            border: Border.all(color: lightGrey, width: .5)),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Customtext(
                    text: "Revenue Chart",
                    size: 20,
                    weight: FontWeight.bold,
                    color: lightGrey,
                  ),
                  Container(
                      width: 600,
                      height: 200,
                      child: SimpleBarChart.withSampleData()),
                ],
              ),
            ),
            Container(
              width: 1,
              height: 120,
              color: lightGrey,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      RevenueInfo(
                        title: "Today\'s revenue",
                        amount: "230",
                      ),
                      RevenueInfo(
                        title: "Last 7 days",
                        amount: "1,100",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      RevenueInfo(
                        title: "Last 30 days",
                        amount: "3,230",
                      ),
                      RevenueInfo(
                        title: "Last 12 months",
                        amount: "11,300",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
