import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webapplicationflutter/constants/style.dart';
import 'package:webapplicationflutter/helper/responsiveness.dart';

import 'custom_texts.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !Responsiveness.isSmallScreen(context)
          ? Row(
        children: [
          Container(
            padding: EdgeInsets.only(left: 14),
            child: Image.asset(
              "assets/icons/logo.png",
              width: 28,
            ),
          )
        ],
      )
          : IconButton(
        onPressed: () {
          key.currentState!.openDrawer();
        },
        icon: Icon(Icons.menu),
      ),
      elevation: 0,
      title: Row(
        children: [
          Visibility(
            child: Customtext(
              text: "Dash",
              color: lightGrey,
              size: 20,
              weight: FontWeight.bold,
            ),
          ),
          Expanded(child: Container()),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: darke.withOpacity(.7),
            ),
          ),
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  color: darke.withOpacity(0.7),
                ),
              ),
              Positioned(
                top: 7,
                right: 7,
                child: Container(
                  width: 12,
                  height: 12,
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: active,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: lightColor, width: 2)),
                ),
              )
            ],
          ),
          Container(
            width: 1,
            height: 22,
            color: lightGrey,
          ),
          SizedBox(
            width: 24,
          ),
          Customtext(
            text: 'Samin Yeaser',
            color: lightGrey,
          ),
          SizedBox(
            width: 16,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),),
            child: Container(
              padding: EdgeInsets.all(2),
              margin: EdgeInsets.all(2),
              child: CircleAvatar(child: Icon(Icons.person_outline, color: darke,),),
            ),
          )
        ],
      ),
      iconTheme: IconThemeData(color: darke,),
      backgroundColor: Colors.transparent,
    );