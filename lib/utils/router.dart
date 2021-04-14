import 'package:beauty_app/constants/route.dart';
import 'package:beauty_app/screens/detail/detail.dart';
import 'package:beauty_app/screens/error/undefined.dart';
import 'package:beauty_app/screens/home/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HOME_ROUTE:
      return MaterialPageRoute(builder: (_) => HomeScreen());
    case DETAIL_ROUTE:
      return MaterialPageRoute(builder: (_) => DetailScreen());
    default:
      return MaterialPageRoute(builder: (_) => UndefinedScreen());
  }
}
