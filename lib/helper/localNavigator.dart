import 'package:flutter/cupertino.dart';
import 'package:webapplicationflutter/constants/controllers.dart';
import 'package:webapplicationflutter/routing/router.dart';
import 'package:webapplicationflutter/routing/routes.dart';

Navigator localNavigator()=> Navigator(
 key: navigationController.navigationKey,
  initialRoute: OverViewPageRoute,
 onGenerateRoute: generateRoute,
);