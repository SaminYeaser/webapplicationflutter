import 'package:flutter/material.dart';
import 'package:webapplicationflutter/helper/responsiveness.dart';
import 'package:webapplicationflutter/widgets/horizontalMenuItem.dart';
import 'package:webapplicationflutter/widgets/verticalMenuItem.dart';

class SideMenuItem extends StatelessWidget {
  final String? itemName;
  final Function()? onTap;

  const SideMenuItem({Key? key, this.itemName, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(Responsiveness.isCustomScreen(context)){
      return VerticalSideBar(itemName: itemName, onTap: onTap,);
    }else{
      return HorizontalMenuItem(itemName: itemName, onTap: onTap,);
    }
  }
}
