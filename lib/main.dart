import 'package:flutter/material.dart';
import 'package:news_api/routes/app_routes.dart';
import 'package:news_api/ui/login_page.dart';
import 'package:news_api/ui_helper/ui_helper.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      initialRoute: AppRoutes.SPLASH_PAGE,
      routes: AppRoutes.routes,
      home: LoginPage(),
    );
  }
}