import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:webapplicationflutter/constants/controllers.dart';
import 'package:webapplicationflutter/helper/responsiveness.dart';
import 'package:webapplicationflutter/pages/overview/widgets/overviewCardLarge.dart';
import 'package:webapplicationflutter/pages/overview/widgets/overviewCardMedium.dart';
import 'package:webapplicationflutter/pages/overview/widgets/overviewCardSmall.dart';
import 'package:webapplicationflutter/widgets/RevenueLargeScreen.dart';
import 'package:webapplicationflutter/widgets/custom_texts.dart';
import 'package:webapplicationflutter/widgets/revenueSmallScreen.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx((){
          return Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: Responsiveness.isSmallScreen(context) ? 56: 6),
                child: Customtext(
                  text: menuController.activeItem.value,
                  size: 24,
                  weight: FontWeight.bold,
                ),
              ),
            ],
          );
        }),
        Expanded(child: ListView(
          children: [
            if(Responsiveness.isLargeScreen(context) || Responsiveness.isMediumScreen(context))
              if(Responsiveness.isCustomScreen(context))
                OverViewMedium()
              else
                OverViewLarge()
            else
              OverViewSmall(),
        if(Responsiveness.isLargeScreen(context))
          RevenueLarge()
        else if(Responsiveness.isMediumScreen(context))
          RevenueSectionSmall()
        else
          RevenueSectionSmall()
          ],

        ))
      ],
    );
  }
}
