import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:webapplicationflutter/constants/controllers.dart';
import 'package:webapplicationflutter/constants/style.dart';

import 'custom_texts.dart';

class VerticalSideBar extends StatelessWidget {
  final String? itemName;
  final Function()? onTap;

  const VerticalSideBar({Key? key, this.itemName, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value
            ? menuController.onHover(itemName!)
            : menuController.onHover('not hovering');
      },
      child: Obx(() {
        return Container(
          color: menuController.isHovering(itemName!)
              ? lightGrey.withOpacity(.1)
              : Colors.transparent,
          child: Row(
            children: [
              Visibility(
                child: Container(
                  width: 3,
                  height: 72,
                  color: darke,
                ),
                visible: menuController.isHovering(itemName!) ||
                    menuController.isActive(itemName!),
                maintainSize: true,
                maintainState: true,
                maintainAnimation: true,
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: menuController.returnIconFor(itemName!),
                    ),
                    if (!menuController.isActive(itemName!))
                      Flexible(
                          child: Customtext(
                            text: itemName,
                            color:
                            menuController.isHovering(itemName!) ? darke : lightGrey,
                          ))
                    else
                      Flexible(child: Customtext(
                        text: itemName,
                        color: darke,
                        size: 18,
                        weight: FontWeight.bold,
                      ),)
                  ],
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
