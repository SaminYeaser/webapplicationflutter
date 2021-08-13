import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webapplicationflutter/constants/controllers.dart';
import 'package:webapplicationflutter/constants/style.dart';
import 'package:webapplicationflutter/widgets/custom_texts.dart';

class HorizontalMenuItem extends StatelessWidget {
  final String? itemName;
  final Function()? onTap;

  const HorizontalMenuItem({Key? key, this.itemName, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
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
                  width: 6,
                  height: 40,
                  color: darke,
                ),
                visible: menuController.isHovering(itemName!) ||
                    menuController.isActive(itemName!),
                maintainSize: true,
                maintainState: true,
                maintainAnimation: true,
              ),
              SizedBox(
                width: _width / 80,
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: menuController.returnIconFor(itemName!),
              ),
              if (menuController.isActive(itemName!))
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
        );
      }),
    );
  }
}
