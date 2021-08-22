import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webapplicationflutter/constants/controllers.dart';
import 'package:webapplicationflutter/constants/style.dart';
import 'package:webapplicationflutter/helper/responsiveness.dart';
import 'package:webapplicationflutter/pages/authentication/authentication.dart';
import 'package:webapplicationflutter/routing/routes.dart';
import 'package:webapplicationflutter/widgets/custom_texts.dart';
import 'package:webapplicationflutter/widgets/sideMenuItems.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      color: lightColor,
      child: ListView(
        children: [
          if (Responsiveness.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: _width / 48,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 12),
                ),
                Flexible(child: Customtext(
                  text: "dash",
                  size: 20,
                  weight: FontWeight.bold,
                  color: active,
                ),),
              ],
            ),
          SizedBox(height: 40,),
          Divider(color: lightGrey.withOpacity(.1),),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems.map((item) => SideMenuItem(
              itemName: item.name,
              onTap: (){
                if(item.route == AuthenticationPageRoute){
                  menuController.changeActiveItemTo(OverviewPageDisplayName);
                  Get.offAllNamed(AuthenticationPageRoute);
                }
                if(!menuController.isActive(item.name!)){
                  menuController.changeActiveItemTo(item.name!);
                  if(Responsiveness.isSmallScreen(context))
                    Get.back();
                    navigationController.navigateTo(item.name!);
                }
              },
            )).toList(),
          )
        ],
      ),
    );
  }
}
