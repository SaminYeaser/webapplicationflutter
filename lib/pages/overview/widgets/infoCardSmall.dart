import 'package:flutter/material.dart';
import 'package:webapplicationflutter/constants/style.dart';
import 'package:webapplicationflutter/widgets/custom_texts.dart';

class InfoCardSmall extends StatelessWidget {
  final String? title;
  final String? value;
  final Color? topColor;
  final bool? isActive;
  final Function()? onTap;

  const InfoCardSmall(
      {Key? key,
      this.title,
      this.value,
      this.topColor,
      this.isActive = false,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: isActive! ? active : lightGrey, width: 5)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Customtext(
                  text: title,
                  size: 24,
                  weight: FontWeight.w300,
                  color: isActive! ? active: lightGrey,
                ),
                Customtext(
                  text: value,
                  size: 24,
                  weight: FontWeight.bold,
                  color: isActive! ? active: darke,
                ),
              ],
            ),
          ),
        )
    );
  }
}
