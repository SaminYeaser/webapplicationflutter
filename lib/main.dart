import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webapplicationflutter/controllers/menuController.dart';
import 'package:webapplicationflutter/pages/404/error.dart';
import 'package:webapplicationflutter/pages/authentication/authentication.dart';
import 'package:webapplicationflutter/routing/routes.dart';

import 'controllers/navigationController.dart';
import 'sitelayout.dart';

void main() {
  Get.put(MenuController());
  Get.put(NavigationController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AuthenticationPageRoute,
      unknownRoute: GetPage(name: 'Not Found', page: ()=> PageNotFound(),
      transition: Transition.fadeIn),
      getPages: [
        GetPage(name: rootRoute, page: ()=>Sitelayout()),
        GetPage(name: AuthenticationPageRoute, page: ()=>AuthenticationPage()),
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.black),
          pageTransitionsTheme: PageTransitionsTheme(builders: {
            TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder()
          }),
          primaryColor: Colors.blue),
      title: 'DashBoard',
    );
  }
}
