import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:webapplicationflutter/constants/controllers.dart';
import 'package:webapplicationflutter/helper/responsiveness.dart';
import 'package:webapplicationflutter/widgets/avilableDrivers.dart';
import 'package:webapplicationflutter/widgets/custom_texts.dart';

class Driver extends StatelessWidget {
  const Driver({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx((){
          return Container(
            margin: EdgeInsets.only(top: Responsiveness.isSmallScreen(context) ? 56: 6),
            child: Customtext(
              text: menuController.activeItem.value,
              size: 24,
              weight: FontWeight.bold,
            ),
          );
        }),
        Expanded(child: ListView(
          children: [
            DriversTable()
          ],
        )),
      ],
    );
  }
}
