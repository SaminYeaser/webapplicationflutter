import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webapplicationflutter/constants/style.dart';
import 'package:webapplicationflutter/routing/routes.dart';

class MenuController extends GetxController{
  static MenuController instance = Get.find();
  var activeItem = OverviewPageDisplayName.obs;
  var hoverItem = "".obs;

  changeActiveItemTo(String itemName){
    activeItem.value = itemName;
  }
  onHover(String itemName){
    if(!isActive(itemName)){
      hoverItem.value = itemName;
    }
  }
  isActive(String itemName){
    return activeItem.value == itemName;
  }
  isHovering(String itemName){
    return hoverItem.value == itemName;
  }

  Widget returnIconFor(String itemName){
    switch(itemName){
      case OverviewPageDisplayName:
        return _customIcon(Icons.trending_up, itemName);
      case ClientsPageDisplayName:
        return _customIcon(Icons.drive_eta, itemName);
      case AuthenticationPageDisplayName:
        return _customIcon(Icons.exit_to_app, itemName);
      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }
  Widget _customIcon(IconData icon, String itemName){
    if(isActive(itemName)) return Icon(icon, size: 22, color: darke,);
    return Icon(icon,color: isHovering(itemName) ? darke:lightGrey,);
  }
}