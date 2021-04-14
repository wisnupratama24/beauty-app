import 'package:beauty_app/constants/route.dart';
import 'package:beauty_app/utils/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      onGenerateRoute: generateRoute,
      initialRoute: HOME_ROUTE,
    );
  }
}
