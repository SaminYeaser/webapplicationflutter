import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webapplicationflutter/pages/authentication/authentication.dart';
import 'package:webapplicationflutter/pages/clients/clients.dart';
import 'package:webapplicationflutter/pages/drivers/driver.dart';
import 'package:webapplicationflutter/pages/overview/overview.dart';
import 'package:webapplicationflutter/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  switch(settings.name){
    case OverViewPageRoute:
      return _getPageRoute(OverViewPage());
    case DriversPageRoute:
      return _getPageRoute(Driver());
    case ClientPageRoute:
      return _getPageRoute(Clients());
    case AuthenticationPageRoute:
      return _getPageRoute(Authentication());
    default:
      return _getPageRoute(OverViewPage());
  }
}
PageRoute _getPageRoute(Widget child){
  return MaterialPageRoute(builder: (context)=>child);
}