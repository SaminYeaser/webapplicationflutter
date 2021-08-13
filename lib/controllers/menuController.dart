import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webapplicationflutter/constants/style.dart';
import 'package:webapplicationflutter/routing/routes.dart';

class MenuController extends GetxController{
  static MenuController instance = Get.find();
  var activeItem = OverViewPageRoute.obs;
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
    activeItem.value == itemName;
  }
  isHovering(String itemName){
    hoverItem == itemName;
  }

  Widget returnIconFor(String itemName){
    switch(itemName){
      case OverViewPageRoute:
        return _customIcon(Icons.trending_up, itemName);
      case ClientPageRoute:
        return _customIcon(Icons.drive_eta, itemName);
      case AuthenticationPageRoute:
        return _customIcon(Icons.exit_to_app, itemName);
      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }
  Widget _customIcon(IconData icon, String itemName){
    if(isActive(itemName)){
      return Icon(icon,color: isHovering(itemName) ? darke:lightGrey, );
    }else{
      return Container();
    }
  }
}