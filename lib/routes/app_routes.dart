
import 'package:flutter/material.dart';
import 'package:news_api/ui/Dashboard/dashboard_page.dart';
import 'package:news_api/ui/Dashboard/home/home_page.dart';
import 'package:news_api/ui/Dashboard/settings_page.dart';
import 'package:news_api/ui/login_page.dart';
import 'package:news_api/ui/register_page.dart';
import 'package:news_api/ui/splash_screen.dart';

class AppRoutes {
  static const String SPLASH_PAGE = "/splash_page";
  static const String LOGIN_PAGE = " /login_page";
  static const String REGISTER_PAGE = "/register_page";
  static const String DASHBOARD_PAGE = "/dashboard_page";
  static const String HOME_PAGE = "home_page";
  static const String SETTINGS_PAGE ="/settings_page";

   static Map<String, Widget Function(BuildContext)> routes = {
     SPLASH_PAGE : (context) => SplashPage(),
     DASHBOARD_PAGE : (context) => DashboardPage(),
     REGISTER_PAGE : (context) => RegisterPage(),
     LOGIN_PAGE : (context) => LoginPage(),
     HOME_PAGE : (context) => HomePage(),
     SETTINGS_PAGE : (context) => SettingsPage(),
   };
}