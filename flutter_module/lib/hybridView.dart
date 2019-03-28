import 'package:flutter/material.dart';
import 'dart:ui';
import 'gridViewPage.dart';

class HybridView{
  Widget widgetForRoute(String route){
    switch(route){
      case "route1":
        return Center(
          child: Text('route: $route',textDirection: TextDirection.ltr,),
        );
      case "route2":
        return Center(
          child: new GridViewPage(),
        );
      default:
        return Center(
          child: Text('unknow route: $route',textDirection: TextDirection.ltr,),
        );
    }
  }
}
